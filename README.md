# VSCodeDCSDebugger

## Installation

1. Install `Tencent`'s [Lua](https://marketplace.visualstudio.com/items?itemName=yinfei.luahelper) VSCode extension.
2. Install the mod to your DCS Save Game folder - simply paste the contents in to `\Saved Games\DCS.openbeta\`

## Usage

1. Open your project in VSCode.
2. Create a `LuaHelper-Attach` debug configuration and set the following values as follow:
    ```            
            "type": "LuaHelper-Debug",
            "request": "launch",
            "name": "LuaHelper-Attach",
            "description": "",
            "cwd": "${workspaceFolder}",
            "luaFileExtension": "lua",
            "connectionPort": 8818,
            "stopOnEntry": false,
            "useCHook": false,
            "autoPathMode": true
    ```
3. Start the lua debugger in VSCode
4. Start a mission in DCS, the debugger should connect.

## License
License for new files created is MIT.

License for modified files (Ex: LuaPanda.lua) is the same as that of the original, mentioned as a comment at the beginning of such files.

Copyrights to the respective owners.
