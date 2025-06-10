require "nvchad.mappings"

local map = vim.keymap.set

-- Basic mappings
map("n", ";", ":", { desc = "Enter command mode" })
map("i", "jk", "<ESC>", { desc = "Exit insert mode" })
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr>", { desc = "Save file" })
map("n", "<Esc>", "<cmd>noh<cr><esc>", { desc = "Clear highlights" })

-- Better navigation
map("n", "n", "nzzzv", { desc = "Next search result" })
map("n", "N", "Nzzzv", { desc = "Prev search result" })
map("n", "<C-d>", "<C-d>zz", { desc = "Half page down" })
map("n", "<C-u>", "<C-u>zz", { desc = "Half page up" })

-- Window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Window management
map("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
map("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
map("n", "<leader>we", "<C-w>=", { desc = "Equal window sizes" })
map("n", "<leader>wc", "<cmd>close<cr>", { desc = "Close window" })
map("n", "<leader>wo", "<cmd>only<cr>", { desc = "Close other windows" })

-- Resize windows
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Better indenting
map("v", "<", "<gv", { desc = "Indent left" })
map("v", ">", ">gv", { desc = "Indent right" })

-- Move text up and down
map("v", "J", ":move '>+1<CR>gv-gv", { desc = "Move text down" })
map("v", "K", ":move '<-2<CR>gv-gv", { desc = "Move text up" })
map("n", "<leader>j", "<cmd>m .+1<cr>==", { desc = "Move line down" })
map("n", "<leader>k", "<cmd>m .-2<cr>==", { desc = "Move line up" })

-- Clipboard operations
map({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map({ "n", "v" }, "<leader>Y", '"+Y', { desc = "Yank line to system clipboard" })
map({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from system clipboard" })
map({ "n", "v" }, "<leader>P", '"+P', { desc = "Paste before from system clipboard" })

-- File operations
map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New file" })
map("n", "<leader>fs", "<cmd>w<cr>", { desc = "Save file" })
map("n", "<leader>fS", "<cmd>wa<cr>", { desc = "Save all files" })
map("n", "<leader>fq", "<cmd>q<cr>", { desc = "Quit" })
map("n", "<leader>fQ", "<cmd>qa<cr>", { desc = "Quit all" })

-- Find operations (Telescope)
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>fa", "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<cr>", { desc = "Find all files" })
map("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Find word (live grep)" })
map("n", "<leader>fW", "<cmd>Telescope grep_string<cr>", { desc = "Find word under cursor" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Find help" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Find recent files" })
map("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Find keymaps" })
map("n", "<leader>fc", "<cmd>Telescope commands<cr>", { desc = "Find commands" })
map("n", "<leader>fC", "<cmd>Telescope colorscheme<cr>", { desc = "Find colorscheme" })
map("n", "<leader>fm", "<cmd>Telescope marks<cr>", { desc = "Find marks" })
map("n", "<leader>fM", "<cmd>Telescope man_pages<cr>", { desc = "Find man pages" })
map("n", "<leader>fr", "<cmd>Telescope resume<cr>", { desc = "Resume last search" })

-- Search operations
map("n", "<leader>sr", ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "Replace word under cursor" })
map("n", "<leader>sR", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "Replace word under cursor (whole word)" })
map("v", "<leader>sr", '"hy:%s/<C-r>h/<C-r>h/gc<left><left><left>', { desc = "Replace selection" })

-- Git operations
map("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
map("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Git status" })
map("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Git branches" })
map("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "Git commits" })
map("n", "<leader>gC", "<cmd>Telescope git_bcommits<cr>", { desc = "Git buffer commits" })
map("n", "<leader>gd", "<cmd>Gitsigns diffthis<cr>", { desc = "Git diff" })
map("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>", { desc = "Preview hunk" })
map("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", { desc = "Reset hunk" })
map("n", "<leader>gR", "<cmd>Gitsigns reset_buffer<cr>", { desc = "Reset buffer" })
map("n", "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<cr>", { desc = "Undo stage hunk" })
map("n", "<leader>gS", "<cmd>Gitsigns stage_buffer<cr>", { desc = "Stage buffer" })
map("n", "<leader>gU", "<cmd>Gitsigns reset_buffer_index<cr>", { desc = "Unstage buffer" })
map("n", "]g", "<cmd>Gitsigns next_hunk<cr>", { desc = "Next hunk" })
map("n", "[g", "<cmd>Gitsigns prev_hunk<cr>", { desc = "Previous hunk" })

-- LSP operations
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })
map("n", "gI", vim.lsp.buf.implementation, { desc = "Go to implementation" })
map("n", "gy", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
map("n", "gK", vim.lsp.buf.signature_help, { desc = "Signature help" })
map("n", "<leader>ld", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "<leader>lD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "<leader>lr", vim.lsp.buf.references, { desc = "Find references" })
map("n", "<leader>lI", vim.lsp.buf.implementation, { desc = "Go to implementation" })
map("n", "<leader>lt", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
map("n", "<leader>lh", vim.lsp.buf.hover, { desc = "Hover documentation" })
map("n", "<leader>lH", vim.lsp.buf.signature_help, { desc = "Signature help" })
map("n", "<leader>la", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "<leader>lR", vim.lsp.buf.rename, { desc = "Rename symbol" })
map("n", "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Document symbols" })
map("n", "<leader>lS", "<cmd>Telescope lsp_workspace_symbols<cr>", { desc = "Workspace symbols" })
map("n", "<leader>lf", function()
  require("conform").format({ lsp_fallback = true })
end, { desc = "Format code" })
map("n", "<leader>li", "<cmd>LspInfo<cr>", { desc = "LSP info" })

-- Code operations
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
map("v", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename symbol" })
map("n", "<leader>cf", function()
  require("conform").format({ lsp_fallback = true })
end, { desc = "Format code" })

-- Diagnostics
map("n", "<leader>xd", vim.diagnostic.open_float, { desc = "Line diagnostics" })
map("n", "<leader>xl", "<cmd>Telescope diagnostics<cr>", { desc = "Telescope diagnostics" })
map("n", "<leader>xq", vim.diagnostic.setloclist, { desc = "Quickfix diagnostics" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
map("n", "[e", function() vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR }) end, { desc = "Previous error" })
map("n", "]e", function() vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR }) end, { desc = "Next error" })
map("n", "[w", function() vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.WARN }) end, { desc = "Previous warning" })
map("n", "]w", function() vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.WARN }) end, { desc = "Next warning" })

-- Buffer operations
map("n", "<leader>bb", "<cmd>Telescope buffers<cr>", { desc = "Switch buffer" })
map("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete buffer" })
map("n", "<leader>bD", "<cmd>%bd|e#|bd#<cr>", { desc = "Delete other buffers" })
map("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
map("n", "<leader>bN", "<cmd>enew<cr>", { desc = "New buffer" })
map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
-- Alternative mapping for terminals that don't handle Shift+Tab well
map("n", "<leader><Tab>", "<cmd>bprevious<cr>", { desc = "Previous buffer (alt)" })
map("n", "[b", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
map("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })

-- Tab operations
map("n", "<leader>tn", "<cmd>tabnew<cr>", { desc = "New tab" })
map("n", "<leader>tc", "<cmd>tabclose<cr>", { desc = "Close tab" })
map("n", "<leader>to", "<cmd>tabonly<cr>", { desc = "Close other tabs" })
map("n", "<leader>th", "<cmd>tabprevious<cr>", { desc = "Previous tab" })
map("n", "<leader>tl", "<cmd>tabnext<cr>", { desc = "Next tab" })
map("n", "[t", "<cmd>tabprevious<cr>", { desc = "Previous tab" })
map("n", "]t", "<cmd>tabnext<cr>", { desc = "Next tab" })

-- Terminal operations
map("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })
map("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Float terminal" })
map("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Horizontal terminal" })
map("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", { desc = "Vertical terminal" })
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- UI toggles
map("n", "<leader>un", "<cmd>set nu!<cr>", { desc = "Toggle line numbers" })
map("n", "<leader>ur", "<cmd>set rnu!<cr>", { desc = "Toggle relative numbers" })
map("n", "<leader>uw", "<cmd>set wrap!<cr>", { desc = "Toggle word wrap" })
map("n", "<leader>uc", "<cmd>set cursorline!<cr>", { desc = "Toggle cursorline" })
map("n", "<leader>uC", "<cmd>set cursorcolumn!<cr>", { desc = "Toggle cursorcolumn" })
map("n", "<leader>us", "<cmd>set spell!<cr>", { desc = "Toggle spell check" })
map("n", "<leader>ul", "<cmd>set list!<cr>", { desc = "Toggle list chars" })
map("n", "<leader>uh", "<cmd>noh<cr>", { desc = "Clear highlights" })
map("n", "<leader>ui", vim.show_pos, { desc = "Inspect position" })
map("n", "<leader>uI", "<cmd>Inspect<cr>", { desc = "Inspect" })
map("n", "<leader>uz", "<cmd>ZenMode<cr>", { desc = "Zen mode" })
map("n", "<leader>uT", function()
  if vim.b.ts_highlight then
    vim.treesitter.stop()
  else
    vim.treesitter.start()
  end
end, { desc = "Toggle Treesitter highlight" })

-- Plugin operations
map("n", "<leader>pl", "<cmd>Lazy<cr>", { desc = "Lazy" })
map("n", "<leader>pm", "<cmd>Mason<cr>", { desc = "Mason" })
map("n", "<leader>ps", "<cmd>Lazy sync<cr>", { desc = "Sync plugins" })
map("n", "<leader>pu", "<cmd>Lazy update<cr>", { desc = "Update plugins" })
map("n", "<leader>pc", "<cmd>Lazy check<cr>", { desc = "Check plugins" })
map("n", "<leader>pC", "<cmd>Lazy clean<cr>", { desc = "Clean plugins" })
map("n", "<leader>pp", "<cmd>Lazy profile<cr>", { desc = "Profile plugins" })
map("n", "<leader>ph", "<cmd>Lazy health<cr>", { desc = "Plugin health" })

-- Claude Code operations - Persistent terminals
local claude_terminal = nil
local claude_continue_terminal = nil

-- Global toggle functions that can be called from anywhere
_G.toggle_claude = function()
  if claude_terminal then
    claude_terminal:toggle()
  end
end

_G.toggle_claude_continue = function()
  if claude_continue_terminal then
    claude_continue_terminal:toggle()
  end
end

map("n", "<leader>cc", function()
  if claude_terminal == nil then
    local Terminal = require('toggleterm.terminal').Terminal
    claude_terminal = Terminal:new({
      cmd = "/Users/ncls/.claude/local/claude",
      direction = "float",
      float_opts = {
        border = "rounded",
        width = math.floor(vim.o.columns * 0.9),
        height = math.floor(vim.o.lines * 0.9),
      },
      on_open = function(term)
        vim.cmd("startinsert!")
      end,
      close_on_exit = false,
    })
  end
  claude_terminal:toggle()
end, { desc = "Toggle Claude Code" })

map("n", "<leader>cC", function()
  if claude_continue_terminal == nil then
    local Terminal = require('toggleterm.terminal').Terminal
    claude_continue_terminal = Terminal:new({
      cmd = "/Users/ncls/.claude/local/claude --continue",
      direction = "float",
      float_opts = {
        border = "rounded",
        width = math.floor(vim.o.columns * 0.9),
        height = math.floor(vim.o.lines * 0.9),
      },
      on_open = function(term)
        vim.cmd("startinsert!")
      end,
      close_on_exit = false,
    })
  end
  claude_continue_terminal:toggle()
end, { desc = "Toggle Claude Code Continue" })

-- Additional key to toggle Claude from anywhere (even in normal mode)
map("n", "<C-;>", function()
  if claude_terminal then
    claude_terminal:toggle()
  end
end, { desc = "Toggle Claude from anywhere" })

map("n", "<C-,>", function()
  if claude_continue_terminal then
    claude_continue_terminal:toggle()
  end
end, { desc = "Toggle Claude Continue from anywhere" })

-- Close Claude terminals (if you need to actually close them)
map("n", "<leader>cq", function()
  if claude_terminal then
    claude_terminal:close()
    claude_terminal = nil
  end
  if claude_continue_terminal then
    claude_continue_terminal:close()
    claude_continue_terminal = nil
  end
  vim.notify("Claude terminals closed", vim.log.levels.INFO)
end, { desc = "Close Claude terminals" })

-- Quick actions
map("n", "<leader>qf", "<cmd>copen<cr>", { desc = "Open quickfix" })
map("n", "<leader>qc", "<cmd>cclose<cr>", { desc = "Close quickfix" })
map("n", "<leader>qn", "<cmd>cnext<cr>", { desc = "Next quickfix" })
map("n", "<leader>qp", "<cmd>cprev<cr>", { desc = "Previous quickfix" })
map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })
map("n", "<leader>qw", "<cmd>wqa<cr>", { desc = "Save & quit all" })

-- Sessions
map("n", "<leader>qs", "<cmd>SessionSave<cr>", { desc = "Save session" })
map("n", "<leader>qr", "<cmd>SessionRestore<cr>", { desc = "Restore session" })
map("n", "<leader>qd", "<cmd>SessionDelete<cr>", { desc = "Delete session" })

-- Open/Navigate
map("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle file explorer" })
map("n", "<leader>E", "<cmd>Neotree focus<cr>", { desc = "Focus file explorer" })
map("n", "<leader>o", "<cmd>Neotree reveal<cr>", { desc = "Reveal in explorer" })
map("n", "<leader>O", "<cmd>Oil<cr>", { desc = "Open Oil" })

-- Notes (for Molten/Jupyter)
map("n", "<leader>ni", "<cmd>MoltenInit<cr>", { desc = "Initialize kernel" })
map("n", "<leader>ne", "<cmd>MoltenEvaluateOperator<cr>", { desc = "Evaluate operator" })
map("n", "<leader>nl", "<cmd>MoltenEvaluateLine<cr>", { desc = "Evaluate line" })
map("n", "<leader>nr", "<cmd>MoltenReevaluateCell<cr>", { desc = "Re-evaluate cell" })
map("n", "<leader>nd", "<cmd>MoltenDelete<cr>", { desc = "Delete cell" })
map("n", "<leader>no", "<cmd>MoltenShowOutput<cr>", { desc = "Show output" })
map("n", "<leader>nh", "<cmd>MoltenHideOutput<cr>", { desc = "Hide output" })
map("v", "<leader>ne", ":<C-u>MoltenEvaluateVisual<cr>", { desc = "Evaluate selection" })

-- Marks
map("n", "<leader>ml", "<cmd>Telescope marks<cr>", { desc = "List marks" })
map("n", "<leader>md", "<cmd>delmarks!<cr>", { desc = "Delete all marks" })

-- Folding with UFO
map("n", "zR", function() require("ufo").openAllFolds() end, { desc = "Open all folds" })
map("n", "zM", function() require("ufo").closeAllFolds() end, { desc = "Close all folds" })
map("n", "zr", function() require("ufo").openFoldsExceptKinds() end, { desc = "Open folds except kinds" })
map("n", "zm", function() require("ufo").closeFoldsWith() end, { desc = "Close folds with" })
map("n", "zp", function() require("ufo").peekFoldedLinesUnderCursor() end, { desc = "Peek fold" })
