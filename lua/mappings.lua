---@diagnostic disable: undefined-global
require "nvchad.mappings"

local map = vim.keymap.set

-- add yours here
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- -- Basic Copilot.vim accept on Ctrl-l
-- map("i", "<C-l>", 'copilot#Accept("<CR>")',
--   { silent = true, expr = true, replace_keycodes = false, desc = "Copilot.vim Accept" })
--
-- -- Copilot-LSP accept on Ctrl-Shift-l
-- map("i", "<C-S-l>", function()
--   local nes = require("copilot-lsp.nes")
--   return nes.walk_cursor_start_edit()
--       or (nes.apply_pending_nes() and nes.walk_cursor_end_edit())
-- end, { expr = true, silent = true, desc = "Copilot LSP Accept" })
--
-- map("i", "<C-n>", function() return require("copilot#Next")("") end,
--   { expr = true, silent = true, desc = "Copilot Next" })
-- map("i", "<C-p>", function() return require("copilot#Previous")("") end,
--   { expr = true, silent = true, desc = "Copilot Previous" })
-- map("i", "<C-d>", function() return require("copilot#Dismiss")("") end,
--   { expr = true, silent = true, desc = "Copilot Dismiss" })
--
-- -- Toggle Copilot suggestions
-- local function toggle_copilot()
--   vim.g.copilot_enabled = not vim.g.copilot_enabled
--   vim.notify("Copilot " .. (vim.g.copilot_enabled and "enabled" or "disabled"))
-- end
--
-- map("n", "<leader>ce", toggle_copilot, { desc = "Toggle Copilot" })
--
-- Molten plugin keybindings
vim.keymap.set("n", "<localleader>mi", ":MoltenInit<CR>", { silent = true, desc = "Initialize the plugin" })
vim.keymap.set("n", "<localleader>e", ":MoltenEvaluateOperator<CR>", { silent = true, desc = "run operator selection" })
vim.keymap.set("n", "<localleader>rl", ":MoltenEvaluateLine<CR>", { silent = true, desc = "evaluate line" })
vim.keymap.set("n", "<localleader>rr", ":MoltenReevaluateCell<CR>", { silent = true, desc = "re-evaluate cell" })
vim.keymap.set("v", "<localleader>r", ":<C-u>MoltenEvaluateVisual<CR>gv",
  { silent = true, desc = "evaluate visual selection" })
