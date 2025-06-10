---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",
  transparency = false,
  
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    CursorLine = { bg = "one_bg" },
    Visual = { bg = "one_bg2" },
  },

  hl_add = {
    NvimTreeOpenedFolderName = { fg = "green", bold = true },
  },
}

M.ui = {
  cmp = {
    icons_left = true,
    lspkind_text = true,
    style = "default",
    border_color = "grey_fg",
    selected_item_bg = "colored",
  },
  
  telescope = { style = "borderless" },
  
  statusline = {
    enabled = false,
  },
  
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
  },
}

M.nvdash = {
  load_on_startup = false,
}

M.lsp = { signature = true }

M.mason = { pkgs = {
  "lua-language-server",
  "stylua",
  "css-lsp",
  "html-lsp",
  "typescript-language-server",
  "deno",
  "prettier",
  "eslint-lsp",
} }

return M
