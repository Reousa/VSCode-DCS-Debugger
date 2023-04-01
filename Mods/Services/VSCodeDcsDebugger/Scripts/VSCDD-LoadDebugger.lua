
--------------------------
-- This file is currently not in use, onMissionLoadProgress does not work, and neither of the other two are convenient.
-- onMissionLoadBegin: Runs before the mission lua runtime is ready
-- onMissionLoadEnd: Runs after sanitization

-- @TODO: Figure out a way to properly inject the debugger - perhaps if we get LoadProgress to work, we could 
-- inject the code at a step we know works.
-- Currently we're just using a hack to modify MissionScripting.lua to include our code.

-- @TODO: Figure out if we can use this to set enable/disable status for the mission environment side of the script.
--------------------------

local DCS = require('DCS')
local VLog = require('VSCDD-log')
local lfs = require('lfs')

local VSCDDEventHandler = {}

function VSCDDEventHandler.onMissionLoadBegin()
    dofile(lfs.writedir()..[[Mods\Services\VSCodeDcsDebugger\Scripts\VSCDD-Injector.lua]])
end

function VSCDDEventHandler.onMissionLoadEnd()
    --dofile(lfs.writedir()..[[Mods\Services\VSCodeDcsDebugger\Scripts\VSCDD-Injector.lua]])
end

function VSCDDEventHandler.onMissionLoadProgress(progress, message)
    log.write(progress, log.INFO, progress)
    log.write(message, log.INFO, message)
end

-- checkBootstrapperContent()
-- DCS.setUserCallbacks(VSCDDEventHandler)
