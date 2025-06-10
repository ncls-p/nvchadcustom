-- UI-related autocmds for better user experience

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- General UI group
local ui_group = augroup("UI", { clear = true })

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  group = ui_group,
  pattern = "*",
  command = "tabdo wincmd =",
})

-- Don't auto commenting new lines
autocmd("BufEnter", {
  group = ui_group,
  pattern = "*",
  command = "set fo-=c fo-=r fo-=o",
})

-- Restore cursor position
autocmd("BufReadPost", {
  group = ui_group,
  pattern = "*",
  callback = function()
    local row, col = unpack(vim.api.nvim_buf_get_mark(0, '"'))
    if row > 0 and row <= vim.api.nvim_buf_line_count(0) then
      vim.api.nvim_win_set_cursor(0, { row, col })
    end
  end,
})

-- Highlight yanked text
autocmd("TextYankPost", {
  group = ui_group,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
  end,
})

-- Auto create directories when saving file
autocmd("BufWritePre", {
  group = ui_group,
  pattern = "*",
  callback = function(event)
    if event.match:match("^%w%w+://") then
      return
    end
    local file = vim.loop.fs_realpath(event.match) or event.match
    vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
  end,
})

-- Close with q for certain filetypes
autocmd("FileType", {
  group = ui_group,
  pattern = {
    "qf",
    "help",
    "man",
    "notify",
    "lspinfo",
    "spectre_panel",
    "startuptime",
    "tsplayground",
    "PlenaryTestPopup",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end,
})

-- Disable line numbers in terminal
autocmd("TermOpen", {
  group = ui_group,
  pattern = "*",
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.signcolumn = "no"
  end,
})

-- Start terminal in insert mode
autocmd("TermOpen", {
  group = ui_group,
  pattern = "*",
  command = "startinsert",
})

-- Check if we need to reload the file when it changed
autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
  group = ui_group,
  callback = function()
    if vim.o.buftype ~= "nofile" then
      vim.cmd("checktime")
    end
  end,
})

-- Wrap and check for spell in text filetypes
autocmd("FileType", {
  group = ui_group,
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})

-- Fix conceallevel for json files
autocmd({ "FileType" }, {
  group = ui_group,
  pattern = { "json", "jsonc", "json5" },
  callback = function()
    vim.opt_local.conceallevel = 0
  end,
})

-- Auto open dashboard when no files are provided
autocmd("VimEnter", {
  group = ui_group,
  callback = function()
    local should_skip = false
    if vim.fn.argc() > 0 or vim.fn.line2byte("$") ~= -1 or not vim.o.modifiable then
      should_skip = true
    else
      for _, arg in pairs(vim.v.argv) do
        if arg == "-b" or arg == "-c" or vim.startswith(arg, "+") or arg == "-S" then
          should_skip = true
          break
        end
      end
    end
    if not should_skip then
      require("dashboard").setup()
      vim.cmd("Dashboard")
    end
  end,
})

-- Disable statusline in dashboard
autocmd("FileType", {
  group = ui_group,
  pattern = "dashboard",
  callback = function()
    vim.opt_local.laststatus = 0
  end,
})

autocmd("BufLeave", {
  group = ui_group,
  pattern = "dashboard",
  callback = function()
    vim.opt_local.laststatus = 3
  end,
})