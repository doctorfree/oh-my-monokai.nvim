<div align="center">
    <div class="b-header">
            <h1>Oh My Monokai</h1>
            <h2>Edit your code obnoxiously</h2>
    </div>
</div>


![oh-my-monokai](./oh-my-monokai.png)

## Create your own palette 

You can easily create your own, just fork this repository and add a file called `./lua/oh-my-monokai/colorscheme/palette/{your_github_user_name}.lua`

Copy the default palette to your personal file, customize as desired, and make a pull request



```lua
-- ./lua/oh-my-monokai/colorscheme/palette/default.lua

return {
  background = '#1e1e1e',
  text = '#f6f6f6',
  dark = '#19181a',
  dark1 = '#221f22',
  dark2 = '#19181a',
  accent1 = '#ff3f4f',
  accent2 = '#e5a422',
  accent3 = '#ffd945',
  accent4 = '#81f900',
  accent5 = '#00a0e4',
  accent6 = '#e542ff',
  accent7 = '#007dd8',
  accent8 = '#ff8b39',
  black = '#221f22',
  white = '#fcfcfa',
  delimiter = '#fcfcfa',
  magenta = '#e373ce',
  character = '#e373ce',
  number = '#e373ce',
  boolean = '#e373ce',
  float = '#e373ce',
  purple = '#e542ff',
  red = '#ff3f4f',
  op = '#ff3f4f',
  exc = '#ff3f4f',
  kword = '#ff3f4f',
  label = '#ff3f4f',
  peat = '#ff3f4f',
  statement = '#ff3f4f',
  include = '#ff3f4f',
  define = '#ff3f4f',
  macro = '#ff3f4f',
  precondit = '#ff3f4f',
  yellow = '#ffd945',
  preproc = '#ffd945',
  str = '#ffd945',
  orange = '#e5a422',
  identifier = '#e5a422',
  dark_orange = '#ff8b39',
  green = '#81f900',
  func = '#81f900',
  leaf = '#6fd80d',
  blue = '#007dd8',
  type = '#007dd8',
  sky = '#00a0e4',
  teal = '#19d1e5',
  pink = '#ff007c',
  todo = '#ff007c',
  typedef = '#ff007c',
  storageclass = '#ff007c',
  conditional = '#ff007c',
  constant = '#ff007c',
  cyan = '#00dfff',
  special = '#00dfff',
  specialchar = '#00dfff',
  structure = '#00dfff',
  dimmed1 = '#c1c0c0',
  dimmed2 = '#939293', -- border
  dimmed3 = '#727072',
  specialcomment = '#727072',
  comment = '#727072',
  dimmed4 = '#5c6370',
  dimmed5 = '#403e41',
  styles = {
    comment = { italic = true },
    keyword = { italic = true }, -- any other keyword
    type = { italic = true }, -- (preferred) int, long, char, etc
    storageclass = { italic = true }, -- static, register, volatile, etc
    structure = { italic = true }, -- struct, union, enum, etc
    parameter = { italic = true }, -- parameter pass in function
    annotation = { italic = true },
    tag_attribute = { italic = true }, -- attribute of tag in reactjs
  },
}

```

IMPORTANT: make sure you run script to add your palette to the palette list

```sh
bash ./scripts/palette-list.sh && git add . && git commit -m "added palette" && git push
```

### 🔌 Plugin support

- [alpha-nvim](https://github.com/goolord/alpha-nvim)
- [bufferLine.nvim](https://github.com/akinsho/bufferline.nvim)
- [Cmp](https://github.com/hrsh7th/nvim-cmp)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [renamer.nvim](https://github.com/filipdutescu/renamer.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [breadcrumb.nvim](https://github.com/loctvl842/breadcrumb.nvim)
- [nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [wilder.nvim](https://github.com/gelguy/wilder.nvim)
- [Lightline](https://github.com/itchyny/lightline.vim)
- [barbecue.nvim](https://github.com/utilyre/barbecue.nvim)
- [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)

## 📦 Installation

[vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'justinsgithub/oh-my-monokai.nvim'
```

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "justinsgithub/oh-my-monokai.nvim",
  config = function()
    require("oh-my-monokai").setup()
  end
}
```

## 🔨 Configuration



Example configuration:

```lua
require("oh-my-monokai").setup({
  transparent_background = false,
  terminal_colors = true,
  devicons = true, -- highlight the icons of `nvim-web-devicons`
  palette = "default", -- or create your own ^^ e.g. justinsgithub
  inc_search = "background", -- underline | background
  background_clear = {
    -- "float_win",
    "toggleterm",
    "telescope",
    "which-key",
    "renamer"
  },-- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree"
  plugins = {
    bufferline = {
      underline_selected = false,
      underline_visible = false,
    },
    indent_blankline = {
      context_highlight = "default",
      context_start_underline = false,
    },
  },
  ---@param c Colorscheme
  override = function(c) end,
})

```

## 📚 Usage

- Enable this colorscheme by using the following command after `setup`:

```vim
" Vim Script
colorscheme oh-my-monokai
```

```lua
require("oh-my-monokai").setup({
  -- ... your config
})
-- lua
vim.cmd([[colorscheme oh-my-monokai]])
```

- To enable `oh-my-monokai` for `Lualine`:

```lua
require('lualine').setup {
  options = {
    -- ...
    theme = 'oh-my-monokai'
    -- ...
  }
}
```

- To enable `oh-my-monokai` for `barbecue`:

```lua
require('barbecue').setup {
  -- ...
  theme = 'oh-my-monokai'
  -- ...
}

```

- To enable `oh-my-monokai` for `lightline`:

```vim
" Vim Script
let g:lightline = {'colorscheme': 'omm'}
```

- Override function:

```lua
require("oh-my-monokai").setup({
    -- ...
    override = function
      return {
          Normal = { bg = "#000000" }
        }
    end
    -- ...
  })
```

## Commands

- run command `OMMPalette` to launch a menu and choose theme palette, you must have [nui.nvim](https://github.com/MunifTanjim/nui.nvim) installed
- or run command `OMM` with parameter to change theme palette: For example:
  > `OMM justinsgithub`

## Contributions

Pull requests welcome, especially for adding more plugins support or creating your own palette (instructions above)

## Credits

Pretty much all credit goes to [monokai-pro.nvim](https://github.com/loctvl842/monokai-pro.nvim)

A large reason for this fork is to provide an easy way for other users to contribute their own palette and make it just the way they want (instructions above).

Also big shout out to [monokai-vibrant](https://github.com/dylantmarsh/monokai-vibrant), the inspiration for this theme. 
