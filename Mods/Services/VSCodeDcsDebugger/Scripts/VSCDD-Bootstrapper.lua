package.path = package.path..";.\\LuaSocket\\?.lua;"..'.\\Scripts\\?.lua;'
package.path = package.path..lfs.writedir()..'Mods\\Services\\VSCodeDcsDebugger\\Scripts\\?.lua;'

local VLog = require('VSCDD-log')
local LuaPanda = require("VSCDD-LuaPanda")

-- local enabled = OptionsData.getPlugin("DCS-SRS","srsAutoLaunchEnabled")

-- @TODO: Disable the debugger when running multiplayer or as a server
-- @TODO: Disable when disabled from the in-game options
local connResult = LuaPanda.start("127.0.0.1", 8818)
if connResult then
    VLog.Info("Debug client successfully connected to VSCode.")
else
    VLog.Error("Debug client failed to connect.")
end