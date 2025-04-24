require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pyright", "tsserver", "lua_ls", "clangd", "rust_analyzer", "ruff", "prettier" }
vim.lsp.enable(servers)
