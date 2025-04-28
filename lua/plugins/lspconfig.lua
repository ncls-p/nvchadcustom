-- lua/plugins/lspconfig.lua
return {
    "neovim/nvim-lspconfig",
    config = function()
        require "configs.lspconfig"
    end,
}
