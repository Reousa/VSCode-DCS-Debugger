

local function readFile(path)
    local file = io.open(path, "r")
	
    if not file then return nil end

    local content = file:read("*all")
    file:close()
    return content
end

package.path = package.path..';.\\LuaSocket\\?.lua;'..'.\\Scripts\\?.lua;'
package.path = package.path..lfs.writedir()..'Mods\\Services\\VSCodeDcsDebugger\\Scripts\\?.lua;'

local VLog = require('VSCDD-log')
local lfs = require('lfs')

VLog.Info('Injecting debugger....')
local bootstrapper = readFile(lfs.writedir()..[[Mods\Services\VSCodeDcsDebugger\Scripts\VSCDD-Bootstrapper.lua]])

local script = 'a_do_script([['..bootstrapper..']])'

VLog.Info(net.dostring_in('mission', script))
VLog.Info('Debugger injection finished.')