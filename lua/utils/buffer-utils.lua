-- Buffer utilities to handle empty buffer cleanup
local M = {}

-- Ensure vim.t.bufs contains only valid buffers
function M.validate_bufs()
  if vim.t.bufs then
    local valid_bufs = {}
    for _, buf in ipairs(vim.t.bufs) do
      if vim.api.nvim_buf_is_valid(buf) then
        table.insert(valid_bufs, buf)
      end
    end
    vim.t.bufs = valid_bufs
  end
end

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
          -- Remove buffer from vim.t.bufs before deleting
          if vim.t.bufs then
            for i, b in ipairs(vim.t.bufs) do
              if b == buf then
                table.remove(vim.t.bufs, i)
                break
              end
            end
          end
          
          pcall(vim.api.nvim_buf_delete, buf, { force = true })
          -- Validate vim.t.bufs after deletion
          M.validate_bufs()
        end
      end
    end
  end)
end

return M