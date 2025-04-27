require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "terraform-ls",
  "helm-ls",
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
