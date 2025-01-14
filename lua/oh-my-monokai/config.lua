local M = {}

---@class Config
---@field override fun(colors: Colorscheme)
local default = {
  transparent_background = false,
  terminal_colors = true,
  devicons = false,
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
  palette = 'default',
  inc_search = "background", -- underline | background
  background_clear = {
    -- "float_win",
    "toggleterm",
    "telescope",
    "which-key",
    "renamer",
    -- "neo-tree",
  },
  plugins = {
    bufferline = {
      underline_selected = false,
      underline_visible = false,
      bold = true,
    },
    indent_blankline = {
      context_highlight = "default",
      context_start_underline = false,
    },
  },
  ---@param colors Colorscheme
  override = function(colors) end,
}

---@type Config
M.options = {}

---@param options Config|nil
M.setup = function(options)
  M.options = vim.tbl_deep_extend("force", {}, default, options or {})
end

---@param options Config|nil
M.extend = function(options)
  M.options = vim.tbl_deep_extend("force", {}, M.options or default, options or {})
end

M.setup()

return M
