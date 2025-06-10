-- Fix for position_encoding warning
-- This patches vim.lsp.util.make_position_params to always include encoding

local orig_make_position_params = vim.lsp.util.make_position_params

vim.lsp.util.make_position_params = function(window, offset_encoding)
  window = window or 0
  local buf = vim.api.nvim_win_get_buf(window)
  local clients = vim.lsp.get_clients({ bufnr = buf })
  
  offset_encoding = offset_encoding or (clients[1] and clients[1].offset_encoding) or "utf-16"
  
  return orig_make_position_params(window, offset_encoding)
end

-- Also patch other related functions that might cause similar warnings
local orig_make_text_document_position_params = vim.lsp.util.make_text_document_position_params

vim.lsp.util.make_text_document_position_params = function(window, offset_encoding)
  window = window or 0
  local buf = vim.api.nvim_win_get_buf(window)
  local clients = vim.lsp.get_clients({ bufnr = buf })
  
  offset_encoding = offset_encoding or (clients[1] and clients[1].offset_encoding) or "utf-16"
  
  return orig_make_text_document_position_params(window, offset_encoding)
end