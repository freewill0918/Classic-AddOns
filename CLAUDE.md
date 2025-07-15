# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a World of Warcraft Classic AddOns repository containing multiple independently managed addons for enhancing WoW gameplay. The repository follows a multi-addon structure where each addon is self-contained with its own Table of Contents (.toc) file, configuration, and code structure.

## Architecture

### Addon Structure
- Each addon is contained in its own directory (e.g., `Auctionator`, `DBM-Core`, `Questie`)
- Addons use `.toc` files to define metadata, dependencies, and load order
- Multiple `.toc` files per addon support different WoW expansions (`_Vanilla.toc`, `_Mainline.toc`, `_Mists.toc`, etc.)
- XML manifest files (`Manifest.xml`) organize Lua file loading order within addons

### Code Organization
- **Lua files**: Main addon logic and functionality
- **XML files**: UI definitions and file manifests
- **Localization**: Multi-language support in `Locales/` directories
- **Libraries**: Shared libraries (Ace3, LibStub, etc.) in `Libs/` or `embeds/` directories
- **Assets**: Textures, sounds, and media files

### Key Addon Categories
- **Auction House**: Auctionator, BuyEmAllClassic
- **Raid/Dungeon Tools**: DBM (Deadly Boss Mods) suite, Details
- **Questing**: Questie, RXPGuides
- **UI Enhancement**: MoveAnything, Dominos, SexyMap
- **Inventory**: Baganator, Syndicator
- **Combat**: Plater, ThreatClassic2

## Development Commands

### Build/Package Commands
No centralized build system found. Individual addons may have:
- `fetchlocale.sh` (LiteButtonAuras): Fetch localization files
- `get-libs.sh` (LiteButtonAuras): Download library dependencies
- `genlocale.sh` (BetterVendorPrice): Generate locale files

### Testing
- **In-game testing**: Load addons in WoW client
- **Lua syntax**: Use standard Lua linting tools
- **DBM-Test**: Testing framework available for DBM modules

## Important Files

### TOC Files
- Define addon metadata, dependencies, and load order
- Version-specific TOC files for different WoW expansions
- SavedVariables declarations for persistent data

### Manifest Files
- XML files organizing Lua script loading order
- Critical for proper addon initialization sequence

### Core Libraries
- **Ace3**: Framework for addon development
- **LibStub**: Library management system
- **DBM framework**: Boss encounter management system

## Development Guidelines

### File Modification
- Always respect existing code structure and patterns
- Maintain compatibility across WoW expansion versions
- Preserve TOC file structure and dependencies
- Follow existing localization patterns

### Version Management
- Update appropriate TOC files when making changes
- Maintain version consistency across expansion-specific TOC files
- Update CHANGELOG.md files when present

### Testing Considerations
- Test across relevant WoW Classic expansions
- Verify addon loading order and dependencies
- Check SavedVariables functionality
- Validate UI elements and localization

## Git Repository Notes
- Repository tracks multiple independent addons
- Large number of files due to embedded libraries
- Mixed development stages across different addons
- Some addons have active changelog maintenance

### Git Commit Guidelines
- **NEVER** include "Generated with [Claude Code]" footer in commit messages
- **NEVER** include "Co-Authored-By: Claude" attribution in commit messages
- Use clean, descriptive commit messages without Claude-specific signatures

When working with this codebase, treat each addon as an independent project while respecting the shared repository structure and cross-addon dependencies.