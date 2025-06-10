require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

-- Standardize offset encoding to prevent warnings
local capabilities = nvlsp.capabilities
capabilities.offsetEncoding = { "utf-16" }

-- Custom on_attach function to handle position encoding
local on_attach = function(client, bufnr)
  -- Call the default on_attach
  nvlsp.on_attach(client, bufnr)
  
  -- Set position encoding for the client
  if client.server_capabilities.positionEncoding then
    client.offset_encoding = client.server_capabilities.positionEncoding
  end
end

-- LSP servers configuration
local servers = {
  "html",
  "cssls", 
  "ts_ls",
  "clangd",
  "pyright",
  "rust_analyzer",
  "gopls",
  "lua_ls",
  "jsonls",
  "yamlls",
  "bashls",
  "marksman",
}

-- Setup LSP servers with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = nvlsp.on_init,
    capabilities = capabilities,
  }
end

-- Enhanced TypeScript configuration
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  on_init = nvlsp.on_init,
  capabilities = capabilities,
  settings = {
    typescript = {
      inlayHints = {
        parameterNames = { enabled = "literals" },
        parameterTypes = { enabled = true },
        variableTypes = { enabled = true },
        propertyDeclarationTypes = { enabled = true },
        functionLikeReturnTypes = { enabled = true },
      },
    },
  },
}

-- Enhanced Lua configuration
lspconfig.lua_ls.setup {
  on_attach = on_attach,
  on_init = nvlsp.on_init,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          vim.fn.expand("$VIMRUNTIME/lua"),
          vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
          vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },
}