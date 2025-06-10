-- Buffer utilities to handle empty buffer cleanup
local M = {}

-- Clean up empty unnamed buffers
function M.cleanup_empty_buffers()
  vim.schedule(function()
    local current_buf = vim.api.nvim_get_current_buf()
    local buffers = vim.api.nvim_list_bufs()
    
    for _, buf in ipairs(buffers) do
      if buf ~= current_buf and vim.api.nvim_buf_is_valid(buf) then
        local name = vim.api.nvim_buf_get_name(buf)
        local lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)
        local is_empty = #lines == 1 and lines[1] == ""
        local is_unnamed = name == ""
        local is_modified = vim.api.nvim_buf_get_option(buf, 'modified')
        
        if is_unnamed and is_empty and not is_modified then
          pcall(vim.api.nvim_buf_delete, buf, { force = true })
        end
      end
    end
  end)
end

return M