require "nvchad.options"

local o = vim.o
local g = vim.g

-- Editor options
o.cursorlineopt = "both"
o.relativenumber = true
o.wrap = false
o.scrolloff = 8
o.sidescrolloff = 8
o.signcolumn = "yes"
o.conceallevel = 0
o.cmdheight = 1
o.pumheight = 10
o.showmode = false
o.showtabline = 0
o.smartcase = true
o.splitbelow = true
o.splitright = true
o.swapfile = false
o.termguicolors = true
o.timeoutlen = 400
o.undofile = true
o.updatetime = 300
o.writebackup = false
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
vim.opt.fillchars = { eob = " " }

-- Note: Leaders are set in core/bootstrap.lua before lazy loads

-- Disable some builtin vim plugins
local default_plugins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin", 
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "matchit",
  "tar",
  "tarPlugin",
  "rrhelper",
  "spellfile_plugin",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
  "tutor",
  "rplugin",
  "syntax",
  "synmenu",
  "optwin",
  "compiler",
  "bugreport",
  "ftplugin",
}

for _, plugin in pairs(default_plugins) do
  g["loaded_" .. plugin] = 1
end
