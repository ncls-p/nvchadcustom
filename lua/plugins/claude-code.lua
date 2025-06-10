return {
  "greggh/claude-code.nvim",
  cmd = { "ClaudeCode" },
  config = function()
    require("claude-code").setup({
      command = "/Users/ncls/.claude/local/claude",
    })
  end,
}