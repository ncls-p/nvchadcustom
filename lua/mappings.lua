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

map("n", "<leader>ce", toggle_copilot, { desc = "Toggle Copilot" })

-- Molten plugin keybindings
vim.keymap.set("n", "<localleader>mi", ":MoltenInit<CR>", { silent = true, desc = "Initialize the plugin" })
vim.keymap.set("n", "<localleader>e", ":MoltenEvaluateOperator<CR>", { silent = true, desc = "run operator selection" })
vim.keymap.set("n", "<localleader>rl", ":MoltenEvaluateLine<CR>", { silent = true, desc = "evaluate line" })
vim.keymap.set("n", "<localleader>rr", ":MoltenReevaluateCell<CR>", { silent = true, desc = "re-evaluate cell" })
vim.keymap.set("v", "<localleader>r", ":<C-u>MoltenEvaluateVisual<CR>gv", { silent = true, desc = "evaluate visual selection" })

