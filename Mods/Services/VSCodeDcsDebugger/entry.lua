declare_plugin("VSCode DCS Debugger", {
	installed = true,
	dirName = current_mod_path,
	developerName = ("Reousa"),
	developerLink = ("https://github.com/Reousa"),
	displayName = ("VSCode DCS Debugger"),
	version = "2.0.8.4",
	state = "installed",
	info = ("DCS Lua debug client for devCAT's VSCode Lua Debugger extension https://marketplace.visualstudio.com/items?itemName=devCAT.lua-debug"),
    load_immediate = true,
	Options = {
		{ name = "VSCodeDebugger", nameId = "VSCodeDebugger", dir = "Options", allow_in_simulation = true; },
	},
})

plugin_done()