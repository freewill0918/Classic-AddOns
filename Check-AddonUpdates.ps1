# Check-AddonUpdates.ps1
# Check if WoW MoP Classic addons have updates available on CurseForge
#
# Usage:
#   $env:CURSEFORGE_API_KEY = "your-api-key"
#   .\Check-AddonUpdates.ps1
#
# Or pass API key directly as parameter

[CmdletBinding()]
param(
    [string]$ApiKey = $env:CURSEFORGE_API_KEY,
    [switch]$ExportCsv,
    [string]$CsvPath = "addon-updates.csv"
)

# MoP Classic gameVersionTypeId
$MopGameVersionTypeId = 79434

# CurseForge API base URL
$ApiBaseUrl = "https://api.curseforge.com/v1"

# Color definitions
$Colors = @{
    Success = "Green"
    Warning = "Yellow"
    Error   = "Red"
    Info    = "Cyan"
    Header  = "Magenta"
}

function Write-ColorText {
    param(
        [string]$Text,
        [string]$Color = "White"
    )
    Write-Host $Text -ForegroundColor $Color
}

function Get-TocValue {
    param(
        [string]$TocContent,
        [string]$Key
    )

    $pattern = "^## $Key\s*:\s*(.+)$"
    $match = $TocContent -split "`n" | Where-Object { $_ -match $pattern } | Select-Object -First 1

    if ($match -match $pattern) {
        return $Matches[1].Trim()
    }
    return $null
}

function Remove-ColorCodes {
    param([string]$Text)

    if ([string]::IsNullOrEmpty($Text)) {
        return $Text
    }

    # Remove WoW color code format |cXXXXXXXX....|r
    $result = $Text -replace '\|c[0-9a-fA-F]{8}', ''
    $result = $result -replace '\|r', ''
    return $result.Trim()
}

function Normalize-Version {
    param([string]$Version)

    if ([string]::IsNullOrEmpty($Version)) {
        return $null
    }

    # Remove common prefixes
    $normalized = $Version -replace '^[vV]', ''
    $normalized = $normalized -replace '^r', ''

    # Remove @project-version@ placeholders
    if ($normalized -match '@.*@') {
        return $null
    }

    return $normalized.Trim()
}

function Compare-Versions {
    param(
        [string]$Local,
        [string]$Remote
    )

    $localNorm = Normalize-Version $Local
    $remoteNorm = Normalize-Version $Remote

    if ([string]::IsNullOrEmpty($localNorm) -or [string]::IsNullOrEmpty($remoteNorm)) {
        return "Unknown"
    }

    # Simple string comparison (works in most cases)
    if ($localNorm -eq $remoteNorm) {
        return "UpToDate"
    }

    # Try numeric version comparison
    try {
        # Extract numeric version parts
        $localParts = $localNorm -split '[.\-_]' | Where-Object { $_ -match '^\d+$' }
        $remoteParts = $remoteNorm -split '[.\-_]' | Where-Object { $_ -match '^\d+$' }

        $maxParts = [Math]::Max($localParts.Count, $remoteParts.Count)

        for ($i = 0; $i -lt $maxParts; $i++) {
            $localPart = if ($i -lt $localParts.Count) { [int]$localParts[$i] } else { 0 }
            $remotePart = if ($i -lt $remoteParts.Count) { [int]$remoteParts[$i] } else { 0 }

            if ($remotePart -gt $localPart) {
                return "UpdateAvailable"
            }
            elseif ($localPart -gt $remotePart) {
                return "LocalNewer"
            }
        }

        return "UpToDate"
    }
    catch {
        # Fallback to string comparison
        if ($localNorm -ne $remoteNorm) {
            return "Unknown"
        }
        return "UpToDate"
    }
}

function Get-AddonInfo {
    param([string]$AddonPath)

    $addonName = Split-Path $AddonPath -Leaf

    # Prefer _Mists.toc file
    $tocFile = Get-ChildItem -Path $AddonPath -Filter "*_Mists.toc" | Select-Object -First 1

    # If no _Mists.toc, look for main .toc file
    if (-not $tocFile) {
        $tocFile = Get-ChildItem -Path $AddonPath -Filter "$addonName.toc" | Select-Object -First 1
    }

    # Still nothing, try any .toc file
    if (-not $tocFile) {
        $tocFile = Get-ChildItem -Path $AddonPath -Filter "*.toc" |
                   Where-Object { $_.Name -notmatch '_Vanilla|_TBC|_Wrath|_Cata|_Mainline' } |
                   Select-Object -First 1
    }

    if (-not $tocFile) {
        return $null
    }

    $tocContent = Get-Content -Path $tocFile.FullName -Raw -Encoding UTF8

    $title = Get-TocValue -TocContent $tocContent -Key "Title"
    $version = Get-TocValue -TocContent $tocContent -Key "Version"
    $curseProjectId = Get-TocValue -TocContent $tocContent -Key "X-Curse-Project-ID"

    # Try alternate Project ID field name
    if (-not $curseProjectId) {
        $curseProjectId = Get-TocValue -TocContent $tocContent -Key "X-Curse-Project-Id"
    }

    return @{
        FolderName     = $addonName
        Title          = Remove-ColorCodes $title
        Version        = $version
        CurseProjectId = $curseProjectId
        TocFile        = $tocFile.Name
    }
}

function Get-CurseForgeLatestVersion {
    param(
        [string]$ProjectId,
        [string]$ApiKey
    )

    $headers = @{
        "x-api-key" = $ApiKey
        "Accept"    = "application/json"
    }

    $url = "$ApiBaseUrl/mods/$ProjectId/files?gameVersionTypeId=$MopGameVersionTypeId"

    try {
        $response = Invoke-RestMethod -Uri $url -Headers $headers -Method Get -ErrorAction Stop

        if ($response.data -and $response.data.Count -gt 0) {
            # Sort by upload date, get newest
            $latestFile = $response.data | Sort-Object -Property fileDate -Descending | Select-Object -First 1

            return @{
                Version     = $latestFile.displayName
                FileId      = $latestFile.id
                FileName    = $latestFile.fileName
                ReleaseType = $latestFile.releaseType
                FileDate    = $latestFile.fileDate
            }
        }

        return @{ Version = $null; NoMopVersion = $true }
    }
    catch {
        $statusCode = $_.Exception.Response.StatusCode.value__
        if ($statusCode -eq 404) {
            return @{ Version = $null; NotFound = $true }
        }
        return @{ Version = $null; Error = $_.Exception.Message }
    }
}

function Format-StatusIcon {
    param([string]$Status)

    switch ($Status) {
        "UpToDate"        { return @{ Icon = "[OK]"; Color = $Colors.Success } }
        "UpdateAvailable" { return @{ Icon = "[UP]"; Color = $Colors.Warning } }
        "LocalNewer"      { return @{ Icon = "[LN]"; Color = $Colors.Info } }
        "NoProjectId"     { return @{ Icon = "[--]"; Color = $Colors.Error } }
        "NoMopVersion"    { return @{ Icon = "[NM]"; Color = $Colors.Error } }
        "ApiError"        { return @{ Icon = "[ER]"; Color = $Colors.Error } }
        default           { return @{ Icon = "[??]"; Color = $Colors.Warning } }
    }
}

# ==================== Main Program ====================

# Check API Key
if ([string]::IsNullOrEmpty($ApiKey)) {
    Write-ColorText "Error: CurseForge API Key not set" $Colors.Error
    Write-ColorText "Please set API Key using one of these methods:" $Colors.Info
    Write-Host '  $env:CURSEFORGE_API_KEY = "your-api-key"'
    Write-Host '  .\Check-AddonUpdates.ps1 -ApiKey "your-api-key"'
    exit 1
}

$addonsPath = $PSScriptRoot
Write-ColorText "`nChecking WoW MoP Classic addon updates...`n" $Colors.Header

# Get all addon directories with _Mists.toc
$mistsTocFiles = Get-ChildItem -Path $addonsPath -Filter "*_Mists.toc" -Recurse -Depth 1
$addonDirs = $mistsTocFiles | ForEach-Object { Split-Path $_.FullName -Parent } | Sort-Object -Unique

Write-ColorText "Found $($addonDirs.Count) MoP Classic addons`n" $Colors.Info

# Collect all addon info
$addons = @()
foreach ($dir in $addonDirs) {
    $info = Get-AddonInfo -AddonPath $dir
    if ($info) {
        $addons += $info
    }
}

# Display header
$headerFormat = "{0,-35} {1,-15} {2,-20} {3,-6}"
Write-ColorText ($headerFormat -f "Addon", "Local", "Latest", "Status") $Colors.Header
Write-ColorText ("-" * 80) $Colors.Header

# Statistics
$stats = @{
    UpToDate        = 0
    UpdateAvailable = 0
    NoProjectId     = 0
    NoMopVersion    = 0
    ApiError        = 0
    Unknown         = 0
}

$results = @()

foreach ($addon in $addons) {
    $displayName = if ($addon.Title) { $addon.Title } else { $addon.FolderName }
    if ($displayName.Length -gt 33) {
        $displayName = $displayName.Substring(0, 30) + "..."
    }

    $localVersion = if ($addon.Version) { $addon.Version } else { "?.?.?" }
    if ($localVersion.Length -gt 13) {
        $localVersion = $localVersion.Substring(0, 10) + "..."
    }

    $remoteVersion = "-"
    $status = "Unknown"

    if (-not $addon.CurseProjectId) {
        $status = "NoProjectId"
        $remoteVersion = "N/A"
        $stats.NoProjectId++
    }
    else {
        # Add small delay to avoid API rate limiting
        Start-Sleep -Milliseconds 100

        $cfInfo = Get-CurseForgeLatestVersion -ProjectId $addon.CurseProjectId -ApiKey $ApiKey

        if ($cfInfo.NoMopVersion) {
            $status = "NoMopVersion"
            $remoteVersion = "No MoP version"
            $stats.NoMopVersion++
        }
        elseif ($cfInfo.NotFound -or $cfInfo.Error) {
            $status = "ApiError"
            $remoteVersion = "API Error"
            $stats.ApiError++
        }
        elseif ($cfInfo.Version) {
            $remoteVersion = $cfInfo.Version
            if ($remoteVersion.Length -gt 18) {
                $remoteVersion = $remoteVersion.Substring(0, 15) + "..."
            }

            $status = Compare-Versions -Local $addon.Version -Remote $cfInfo.Version

            switch ($status) {
                "UpToDate"        { $stats.UpToDate++ }
                "UpdateAvailable" { $stats.UpdateAvailable++ }
                "LocalNewer"      { $stats.UpToDate++ }  # Local newer counts as up to date
                default           { $stats.Unknown++ }
            }
        }
        else {
            $status = "Unknown"
            $stats.Unknown++
        }
    }

    $statusInfo = Format-StatusIcon $status

    # Output row
    $line = $headerFormat -f $displayName, $localVersion, $remoteVersion, $statusInfo.Icon
    Write-Host $line -ForegroundColor $statusInfo.Color

    # Save result for CSV export
    $results += [PSCustomObject]@{
        Addon        = $displayName
        FolderName   = $addon.FolderName
        LocalVersion = $addon.Version
        RemoteVersion = $remoteVersion
        Status       = $status
        CurseProjectId = $addon.CurseProjectId
    }
}

# Display statistics
Write-ColorText "`n" "White"
Write-ColorText ("-" * 80) $Colors.Header
Write-ColorText "`nSummary:" $Colors.Header
Write-ColorText "  Total: $($addons.Count) addons" "White"
Write-ColorText "  [OK] Up to date: $($stats.UpToDate)" $Colors.Success
Write-ColorText "  [UP] Update available: $($stats.UpdateAvailable)" $Colors.Warning
Write-ColorText "  [--] No Project ID: $($stats.NoProjectId)" $Colors.Error
Write-ColorText "  [NM] No MoP version: $($stats.NoMopVersion)" $Colors.Error
Write-ColorText "  [ER] API Error: $($stats.ApiError)" $Colors.Error
Write-ColorText "  [??] Cannot compare: $($stats.Unknown)" $Colors.Warning

# Export CSV
if ($ExportCsv) {
    $results | Export-Csv -Path (Join-Path $addonsPath $CsvPath) -NoTypeInformation -Encoding UTF8
    Write-ColorText "`nExported results to: $CsvPath" $Colors.Info
}

# List addons that need updates
if ($stats.UpdateAvailable -gt 0) {
    Write-ColorText "`nAddons with updates available:" $Colors.Warning
    $results | Where-Object { $_.Status -eq "UpdateAvailable" } | ForEach-Object {
        Write-ColorText "  - $($_.Addon): $($_.LocalVersion) -> $($_.RemoteVersion)" $Colors.Warning
    }
}

Write-ColorText "`n" "White"
