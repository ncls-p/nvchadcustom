-- Fix for NvChad tabufline buffer navigation errors
local M = {}

-- Safe wrapper for tabufline navigation
local function safe_tabufline_nav(direction)
  return function()
    -- Ensure vim.t.bufs exists and contains valid buffers
    if vim.t.bufs then
      local valid_bufs = {}
      for _, buf in ipairs(vim.t.bufs) do
        if vim.api.nvim_buf_is_valid(buf) then
          table.insert(valid_bufs, buf)
        end
      end
      vim.t.bufs = valid_bufs
      
      -- If no valid buffers, initialize with current buffer
      if #vim.t.bufs == 0 then
        vim.t.bufs = { vim.api.nvim_get_current_buf() }
      end
    end
    
    -- Call the original tabufline function
    local ok, err = pcall(require("nvchad.tabufline")[direction])
    if not ok then
      vim.notify("Tabufline error: " .. tostring(err), vim.log.levels.ERROR)
    end
  end
end

M.setup = function()
  -- Override the default NvChad buffer navigation mappings
  vim.keymap.set("n", "<Tab>", safe_tabufline_nav("next"), { desc = "Next buffer" })
  vim.keymap.set("n", "<S-Tab>", safe_tabufline_nav("prev"), { desc = "Previous buffer" })
end

return M