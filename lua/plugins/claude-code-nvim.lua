return {
  "greggh/claude-code.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("claude-code").setup({
      -- Window configuration
      window = {
        width = 0.8,
        height = 0.8,
        border = "rounded",
        title = " Claude Code ",
        title_pos = "center",
      },
      -- Terminal configuration
      terminal = {
        shell = vim.o.shell,
        cmd = "/Users/ncls/.claude/local/claude",  -- Full path to claude
        args = {},  -- No additional args needed
      },
      -- Key mappings
      keymaps = {
        toggle = "<C-,>",
        new_chat = "<C-n>",
        close = "<C-c>",
      },
      -- Auto commands
      auto_reload = true,
      auto_scroll = true,
      -- Highlight groups
      highlights = {
        border = "FloatBorder",
        title = "Title",
      },
    })
  end,
  keys = {
    { "<C-,>", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude Code" },
    { "<leader>cc", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude Code" },
    { "<leader>cC", "<cmd>ClaudeCodeContinue<cr>", desc = "Claude Code Continue" },
    { "<leader>cv", "<cmd>ClaudeCodeVerbose<cr>", desc = "Claude Code Verbose" },
    { "<leader>cn", "<cmd>ClaudeCodeNew<cr>", desc = "New Claude Code Session" },
  },
  cmd = {
    "ClaudeCode",
    "ClaudeCodeContinue", 
    "ClaudeCodeVerbose",
    "ClaudeCodeNew",
    "ClaudeCodeToggle",
  },
}