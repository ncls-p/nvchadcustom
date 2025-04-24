require "nvchad.mappings"

local map = vim.keymap.set

-- add yours here
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Copilot mapping
map("i", "<C-l>", 'copilot#Accept("<CR>")', { silent = true, expr = true, replace_keycodes = false, desc = "Copilot Accept" })

-- Toggle Copilot suggestions
local function toggle_copilot()
  vim.g.copilot_enabled = not vim.g.copilot_enabled
  vim.notify("Copilot " .. (vim.g.copilot_enabled and "enabled" or "disabled"))
end

map("n", "<leader>ct", toggle_copilot, { desc = "Toggle Copilot" })
