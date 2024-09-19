# Neverlose Lua Language Server Addon

This repository provides an addon for sumneko's Lua Language Server (LLS), designed to improve the Neverlose development experience. This addon is to be used with [sumneko's Lua plugin](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) for Visual Studio Code.

## Addon features

- **Dynamic type checking**
- **Autocompletion**
- **Documentation links**

## Installation

1. **Install sumneko's Lua plugin for VSCode**:
   - Make sure you have the sumneko's Lua plugin installed in your Visual Studio Code.
   - You can find it in the [VSCode Marketplace](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) or install it directly through VSCode.

2. **Download or Clone this Repository**:
   - Clone this repository or download it as a ZIP file and extract it to your desired location.

3. **Add to Your Workspace**:
   - Add the path to this addon in your `.vscode/settings.json`:

     ```json
     {
       "Lua.workspace.library": [
         "/path/to/this/repository"
       ]
     }
     ```

4. **Recommended**:
   - Also add the Lua version to your `settings.json`.

     ```json
     {
       "Lua.runtime.version": "LuaJIT",
     }
     ```

5. **Reload VSCode**:
   - After updating your `settings.json`, reload VSCode to apply the changes.

## Usage

With this addon installed, sumneko's Lua Language Server will automatically provide type information and autocomplete suggestions based on the definitions provided in this repository. You can hover over functions and variables to see detailed type information and click on links to view further documentation.

## Contributing

If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request. Contributions are welcome!

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
