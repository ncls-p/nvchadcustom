-- Bootstrap lazy.nvim and load plugins
require "core.bootstrap"

-- Load LSP position encoding fixes
require "core.lsp-fixes"

-- Load theme
require "core.theme"

-- Load options and providers
require "options"
require "core.providers"

-- Load autocmds
require "nvchad.autocmds"
require "core.ui-autocmds"

-- Load mappings with schedule for better startup performance
vim.schedule(function()
  require "mappings"
  -- Apply tabufline fixes
  require("configs.tabufline-fix").setup()
end)
