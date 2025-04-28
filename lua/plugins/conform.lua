-- lua/plugins/conform.lua
---@diagnostic disable: undefined-global
return {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
}
