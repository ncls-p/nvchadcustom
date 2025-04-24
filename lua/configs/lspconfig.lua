require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "pyright",
  "tsserver",
  "lua_ls",
  "clangd",
  "rust_analyzer",
  "marksman",
  "ruff",
  "prettier",
  "markdownlint",
}
vim.lsp.enable(servers)
