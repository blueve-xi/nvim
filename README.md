Neovim Configuration

#### Personal build running NVIM v0.12.0-dev

<br>

> Before starting, ensure you have:
> - **Nvim Nightly build** 
> - Using bob to manage nightly builds. https://github.com/MordechaiHadad/bob <br>

> [!CAUTION] 
> This does use the native vim.pack package manager.

<br> 

### Easy setup config:
```
cd ~/.config/ && git clone https://github.com/blueve-xi/nvim
```
- On first boot, run `:restart` if plguins are not detected and asked to be installed. To ensure all plugins are installed: Execute `:vim.pack.update()` This will download updates from source.
- Key maps are in `lua/config/keymap.lua`
    * **Leader is bound to space**, you can change it to fit your personal need.
- Plugins are located in the `lua/plugins/` folder
    *  Use vim.pack.del() with a list of plugin names to remove as needed.
### Make sure their specs are not included in vim.pack.add() call in 'init.lua' or they will be reinstalled. ###

<br>

<br>

### Basic configuration:
```
vim.pack.add({
  -- Install "plugin1" and use default branch (usually `main` or `master`)
  'https://github.com/user/plugin1',
  -- Same as above, but using a table (allows setting other options)
  { src = 'https://github.com/user/plugin1' },
  -- Specify plugin's name (here the plugin will be called "plugin2"
  -- instead of "generic-name")
  { src = 'https://github.com/user/generic-name', name = 'plugin2' },
  -- Specify version to follow during install and update
  {
    src = 'https://github.com/user/plugin3',
    -- Version constraint, see |vim.version.range()|
    version = vim.version.range('1.0'),
  },
  {
    src = 'https://github.com/user/plugin4',
    -- Git branch, tag, or commit hash
    version = 'main',
  },
})
-- Plugin's code can be used directly after `add()`
plugin1 = require('plugin1')
```
<br>

<br>
⭐ Plugins: ⭐ <br>
- checkmate <br>
- fuzzy-lua <br>
- lazygit <br>
- lualine <br>
- neovim session manager <br>
- notify <br>
- nvim-tree <br>
- themify <br>
- treesitter <br>
- twilight <br>
- mini.pairs <br>
- mini-git <br>
- mini.icons <br>
- mini.indentscope <br>
- mini.notify <br>
<br>
