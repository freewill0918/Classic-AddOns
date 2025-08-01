-- Test file to verify DBT throttle changes
-- This file can be deleted after testing

-- Test 1: Verify throttle mechanism
local function TestThrottle()
    print("DBT Throttle Test Started")
    
    -- Check if DBT exists
    if not DBT then
        print("ERROR: DBT not found!")
        return
    end
    
    -- Check if throttle properties exist
    if not DBT.updateThrottle then
        print("ERROR: updateThrottle property missing!")
        return
    end
    
    if not DBT.lastUpdateTime then
        print("ERROR: lastUpdateTime property missing!")
        return
    end
    
    print("DBT throttle properties found:")
    print("  updateThrottle = " .. tostring(DBT.updateThrottle))
    print("  lastUpdateTime = " .. tostring(DBT.lastUpdateTime))
    
    -- Test UpdateBars function signature
    if DBT.UpdateBars then
        print("UpdateBars function exists")
        -- Try calling with different parameters
        local success, err = pcall(function()
            DBT:UpdateBars(false) -- Should respect throttle
            DBT:UpdateBars(true) -- Should respect throttle
            DBT:UpdateBars(true, true) -- Should force update
        end)
        
        if success then
            print("UpdateBars function calls successful")
        else
            print("ERROR calling UpdateBars: " .. tostring(err))
        end
    else
        print("ERROR: UpdateBars function not found!")
    end
    
    print("DBT Throttle Test Completed")
end

-- Run test when addon loads
if DBT then
    C_Timer.After(1, TestThrottle)
else
    print("DBT not loaded yet, deferring test...")
end