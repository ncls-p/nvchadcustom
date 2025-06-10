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
  },
  
  telescope = { style = "borderless" },
  
  statusline = {
    theme = "default",
    separator_style = "arrow",
  },
  
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
  },
}

M.nvdash = {
  load_on_startup = true,
  header = {
    "                                                     ",
    "  ███╗   ██╗ ██████╗██╗     ███████╗██████╗         ",
    "  ████╗  ██║██╔════╝██║     ██╔════╝██╔══██╗        ",
    "  ██╔██╗ ██║██║     ██║     ███████╗██████╔╝        ",
    "  ██║╚██╗██║██║     ██║     ╚════██║██╔═══╝         ",
    "  ██║ ╚████║╚██████╗███████╗███████║██║             ",
    "  ╚═╝  ╚═══╝ ╚═════╝╚══════╝╚══════╝╚═╝             ",
    "                                                     ",
    "  ⚡ Lightning Fast Neovim Configuration ⚡          ",
    "                                                     ",
  },
  
  buttons = {
    { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
    { txt = "  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "Spc f w", cmd = "Telescope live_grep" },
    { txt = "  Bookmarks", keys = "Spc m a", cmd = "Telescope marks" },
    { txt = "  Themes", keys = "Spc t h", cmd = "Telescope themes" },
    { txt = "  Mappings", keys = "Spc c h", cmd = "NvCheatsheet" },

    { txt = "─", hl = "NvDashLazy", no_gap = true, rep = true },

    {
      txt = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
        return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms"
      end,
      hl = "NvDashLazy",
      no_gap = true,
    },

    { txt = "─", hl = "NvDashLazy", no_gap = true, rep = true },
  },
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
