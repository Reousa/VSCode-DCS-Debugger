# VSCodeDCSDebugger

## Installation

1. Install `Tencent`'s [Lua](https://marketplace.visualstudio.com/items?itemName=yinfei.luahelper) VSCode extension.
2. Install the mod to your DCS Save Game folder - simply paste the contents in to `\Saved Games\DCS.openbeta\`

## Usage

1. Open your project in VSCode.
2. Create a `LuaHelper-Attach` debug configuration and set the following values as follow:
    ```            
    "stopOnEntry": false,
    "useCHook": false,
    "autoPathMode": true
    ```
3. Start the lua debugger in VSCode
4. Start a mission in DCS, the debugger should connect.