return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "modern",
    delay = 300,
    filter = function(mapping)
      return mapping.desc and mapping.desc ~= ""
    end,
    spec = {
      { "<leader>f", group = "Find", icon = "🔍" },
      { "<leader>g", group = "Git", icon = "" },
      { "<leader>l", group = "LSP", icon = "" },
      { "<leader>b", group = "Buffer", icon = "󰈔" },
      { "<leader>c", group = "Code/Claude", icon = "" },
      { "<leader>t", group = "Terminal", icon = "" },
      { "<leader>u", group = "UI", icon = "󰙵" },
      { "<leader>x", group = "Diagnostics", icon = "󱖫" },
      { "<leader>q", group = "Session", icon = "󱂬" },
      { "<leader>s", group = "Search", icon = "" },
      { "<leader>n", group = "Notes", icon = "󰠮" },
      { "<leader>r", group = "Replace", icon = "󰛔" },
      { "<leader>p", group = "Plugins", icon = "" },
      { "<leader>w", group = "Windows", icon = "" },
      { "<leader>m", group = "Marks", icon = "󰸖" },
      { "<leader>o", group = "Open", icon = "󰏌" },
    },
    win = {
      border = "rounded",
      padding = { 2, 2 },
      wo = {
        winblend = 10,
      },
    },
    layout = {
      height = { min = 4, max = 25 },
      width = { min = 20, max = 50 },
      spacing = 4,
      align = "center",
    },
    show_help = true,
    show_keys = true,
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
  end,
}