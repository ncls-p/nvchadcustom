-- lua/plugins/copilot_lsp.lua
return {
    "copilotlsp-nvim/copilot-lsp",
    lazy = false,
    init = function()
        vim.g.copilot_nes_debounce = 200
        vim.lsp.enable("copilot_ls")
        vim.keymap.set("n", "<tab>", function()
            local _ = require("copilot-lsp.nes").walk_cursor_start_edit()
                or (require("copilot-lsp.nes").apply_pending_nes() and require("copilot-lsp.nes").walk_cursor_end_edit())
        end)
    end,
}
