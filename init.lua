---@diagnostic disable: undefined-global
require "core.bootstrap"
require "core.theme"
require "options"
require "nvchad.autocmds"
require "core.providers"

vim.schedule(function()
  require "mappings"
end)
