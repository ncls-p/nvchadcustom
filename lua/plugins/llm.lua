return {
  "huggingface/llm.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    backend = "ollama",
    model = "qwen2.5-coder:1.5b-base",
    url = "https://ollama.nclsp.com",
    fim = {
      enabled = true,
    },
    debounce_ms = 150,
    accept_keymap = "<C-l>",
    enable_suggestions_on_startup = true,
    enable_suggestions_on_files = "*",
  },
}
