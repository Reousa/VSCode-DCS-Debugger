
package.path = package.path..";.\\LuaSocket\\?.lua;"..'.\\Scripts\\?.lua;'
package.path = package.path..lfs.writedir()..'Mods\\Services\\VSCodeDcsDebugger\\Scripts\\?.lua;'

local DCS = require('DCS')
local VLog = require('VSCDD-log')
local lfs = require('lfs')
local io = require('io')

-- Whether or not MissionScripting.lua already has the inject line
local injectorExists = false
local injectionCode =  [[pcall(function() dofile(lfs.writedir().."Mods\\Services\\VSCodeDcsDebugger\\Scripts\\VSCDD-Injector.lua") end)]]
local filePath = lfs.currentdir()..'\\Scripts\\MissionScripting.lua'

local inFile = io.open(filePath, 'r')
local lines = {}
for line in inFile:lines() do
    table.insert(lines, line)
    VLog.Info(line)
    if line == injectionCode then
        injectorExists = true
    end
end
inFile:close()

if not injectorExists then
    local outFile = io.open(filePath, 'w')
    outFile:write(injectionCode..'\n')
    for _, line in ipairs(lines) do
        outFile:write(line..'\n')
    end
    outFile:close()
end





-- local status, result = pcall(
--     function() 
--         dofile(lfs.writedir()..[[Mods\Services\VSCodeDcsDebugger\Scripts\VSCDD-LoadDebugger.lua]])
--     end
-- )
 
-- if status then
--     VLog.Info("Loaded successfully.")
-- else
--     VLog.Error("Failed to load with result. "..tostring(status))
-- end