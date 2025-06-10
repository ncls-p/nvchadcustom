# 🚀 NCLSP's Modern Neovim Configuration

<div align="center">

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)
[![License](https://img.shields.io/badge/license-GPL%20v3-blue?style=for-the-badge)](./LICENSE)

**The cleanest, sleekest, most modern Neovim interface ever made** ⚡

*Built on NvChad v2.5 with comprehensive UI modernization and intelligent leader key organization*

[Features](#-features) • [Installation](#-installation) • [Plugins](#-plugins) • [Keymaps](#-keymaps) • [Screenshots](#-screenshots)

</div>

---

## ✨ Features

### 🎨 **Modern Sleek UI**
- **Lualine Statusline** - Beautiful, informative status bar with Git integration
- **Dashboard** - Clean startup screen with quick actions and plugin stats
- **Floating Windows** - Rounded borders and smooth animations throughout
- **Which-Key Menus** - Visual leader key guide with organized categories
- **Noice UI** - Enhanced command line, notifications, and LSP messages
- **Smooth Scrolling** - Butter-smooth navigation with cursor animations

### 🗂️ **Perfect Leader Key Organization**
- **`<leader>f`** - Find operations (files, text, buffers, help, etc.)
- **`<leader>g`** - Git operations with Telescope integration
- **`<leader>l`** - LSP operations (definitions, references, symbols)
- **`<leader>b`** - Buffer management and navigation
- **`<leader>c`** - Code actions and Claude Code integration
- **`<leader>t`** - Terminal and tab operations
- **`<leader>u`** - UI toggles and preferences
- **`<leader>x`** - Diagnostics and error handling
- **`<leader>w`** - Window management
- **`<leader>p`** - Plugin management

### 🤖 **AI-Powered Development**
- **Claude Code Integration** - Persistent floating terminals with session management
- **LLM.nvim** - Local language model support
- **Molten** - Interactive Jupyter notebook support

### 🚀 **Enhanced Productivity**
- **Telescope** - Lightning-fast fuzzy finding with FZF integration
- **Neo-tree** - Modern file explorer with Git status
- **UFO Folding** - Advanced code folding with preview
- **Session Management** - Automatic project session handling
- **LazyGit Integration** - Beautiful Git interface
- **Zen Mode** - Distraction-free coding environment

---

## 📦 Installation

### Prerequisites

- **Neovim >= 0.10.0**
- **Git**
- **[Nerd Font](https://www.nerdfonts.com/)** (for icons)
- **Node.js >= 16** (for LSP servers)
- **Python 3** (for Molten support)
- **ripgrep** (for Telescope live grep)
- **[Claude CLI](https://github.com/anthropics/claude-code)** (for AI integration)

### Quick Install

```bash
# Backup your current config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this config
git clone https://github.com/ncls-p/nvchadcustom.git ~/.config/nvim

# Start Neovim
nvim
```

The configuration will automatically install all plugins on first launch! 🎉

### Claude Code Setup

```bash
# Install Claude Code CLI
brew install anthropics/claude/claude

# Authenticate
claude auth login
```

---

## 🔌 Plugins

### 🎨 **UI & Interface**

| Plugin | Description |
|--------|-------------|
| 🎨 [Lualine](https://github.com/nvim-lualine/lualine.nvim) | Beautiful statusline with Git integration |
| 🎯 [Which-Key](https://github.com/folke/which-key.nvim) | Visual leader key guide with categories |
| 📱 [Dashboard](https://github.com/nvimdev/dashboard-nvim) | Clean startup screen |
| 🎪 [Noice](https://github.com/folke/noice.nvim) | Enhanced UI for cmd line and notifications |
| 🔔 [Notify](https://github.com/rcarriga/nvim-notify) | Beautiful notification system |
| 🌊 [Neoscroll](https://github.com/karb94/neoscroll.nvim) | Smooth scrolling |
| ✨ [SmoothCursor](https://github.com/gen740/SmoothCursor.nvim) | Animated cursor trail |
| 📏 [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim) | Indent guides |
| 🎨 [Colorizer](https://github.com/NvChad/nvim-colorizer.lua) | Color highlighting |

### 🔍 **Navigation & Search**

| Plugin | Description |
|--------|-------------|
| 🔭 [Telescope](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder with FZF native support |
| 📁 [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) | Modern file explorer with Git status |
| 🛢️ [Oil](https://github.com/stevearc/oil.nvim) | File browser for advanced operations |
| 🔎 [Hlslens](https://github.com/kevinhwang91/nvim-hlslens) | Enhanced search highlighting |
| 📋 [BQF](https://github.com/kevinhwang91/nvim-bqf) | Better quickfix window |

### 🤖 **AI & Development**

| Plugin | Description |
|--------|-------------|
| 🤖 [Claude Code](https://github.com/greggh/claude-code.nvim) | Persistent Claude AI integration |
| 🧠 [LLM.nvim](https://github.com/huggingface/llm.nvim) | Local LLM support |
| 📓 [Molten](https://github.com/benlubas/molten-nvim) | Jupyter notebook integration |

### ⚙️ **Core Development**

| Plugin | Description |
|--------|-------------|
| 🎨 [NvChad](https://github.com/NvChad/NvChad) | Base configuration framework |
| 🌳 [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Advanced syntax highlighting |
| 📝 [LSP Config](https://github.com/neovim/nvim-lspconfig) | Language server support |
| 🔧 [Mason](https://github.com/williamboman/mason.nvim) | LSP server manager |
| 📊 [Gitsigns](https://github.com/lewis6991/gitsigns.nvim) | Git decorations |
| 🐙 [LazyGit](https://github.com/kdheepak/lazygit.nvim) | Git interface |

### 🎯 **Productivity Tools**

| Plugin | Description |
|--------|-------------|
| 🖥️ [ToggleTerm](https://github.com/akinsho/toggleterm.nvim) | Advanced terminal management |
| 💾 [Persistence](https://github.com/folke/persistence.nvim) | Session management |
| 📁 [Project.nvim](https://github.com/ahmedkhalf/project.nvim) | Project detection |
| 🧘 [Zen Mode](https://github.com/folke/zen-mode.nvim) | Distraction-free coding |
| 📂 [UFO](https://github.com/kevinhwang91/nvim-ufo) | Advanced folding |
| 📝 [Todo Comments](https://github.com/folke/todo-comments.nvim) | Highlight TODO comments |

---

## ⌨️ Keymaps

### 🎯 **Leader Key Categories**

Press `<leader>` (Space) to see the organized menu system:

| Category | Description | Examples |
|----------|-------------|----------|
| **`<leader>f`** | **Find** 🔍 | Files, text, buffers, help |
| **`<leader>g`** | **Git** 📊 | Status, commits, branches, hunks |
| **`<leader>l`** | **LSP** 📝 | Definitions, references, symbols |
| **`<leader>b`** | **Buffer** 📄 | Navigate, close, switch |
| **`<leader>c`** | **Code/Claude** 🤖 | Actions, formatting, AI help |
| **`<leader>t`** | **Terminal** 🖥️ | Float, horizontal, vertical |
| **`<leader>u`** | **UI** 🎨 | Toggles, preferences, zen mode |
| **`<leader>x`** | **Diagnostics** 🩺 | Errors, warnings, quickfix |
| **`<leader>w`** | **Windows** 🪟 | Split, resize, manage |
| **`<leader>p`** | **Plugins** 🔌 | Lazy, Mason, sync, update |

### 🚀 **Quick Access Keys**

| Key | Description |
|-----|-------------|
| **`<Tab>`** | Next buffer |
| **`<S-Tab>`** | Previous buffer |
| **`<leader>cc`** | Toggle Claude Code |
| **`<leader>e`** | Toggle file explorer |
| **`<C-;>`** | Quick Claude toggle |
| **`<C-,>`** | Claude Continue mode |

### 📄 **Essential Navigation**

| Key | Description |
|-----|-------------|
| **`;`** | Enter command mode |
| **`jk`** | Exit insert mode |
| **`<C-s>`** | Save file |
| **`<Esc>`** | Clear search highlights |
| **`<C-h/j/k/l>`** | Navigate windows |

### 🔍 **Find Operations** (`<leader>f`)

| Key | Description |
|-----|-------------|
| **`<leader>ff`** | Find files |
| **`<leader>fw`** | Find word (live grep) |
| **`<leader>fb`** | Find buffers |
| **`<leader>fo`** | Find recent files |
| **`<leader>fh`** | Find help |
| **`<leader>fk`** | Find keymaps |
| **`<leader>fc`** | Find commands |

### 🤖 **Claude Code Integration** (`<leader>c`)

| Key | Description |
|-----|-------------|
| **`<leader>cc`** | Toggle Claude Code terminal |
| **`<leader>cC`** | Claude Continue session |
| **`<leader>cq`** | Close Claude terminals |
| **`<C-;>`** | Quick Claude toggle |
| **`<C-,>`** | Quick Continue toggle |

### 📊 **Git Operations** (`<leader>g`)

| Key | Description |
|-----|-------------|
| **`<leader>gg`** | LazyGit interface |
| **`<leader>gs`** | Git status |
| **`<leader>gb`** | Git branches |
| **`<leader>gc`** | Git commits |
| **`<leader>gd`** | Git diff |
| **`<leader>gp`** | Preview hunk |

### 📝 **LSP Operations** (`<leader>l`)

| Key | Description |
|-----|-------------|
| **`gd`** | Go to definition |
| **`gr`** | Go to references |
| **`K`** | Hover documentation |
| **`<leader>la`** | Code actions |
| **`<leader>lR`** | Rename symbol |
| **`<leader>lf`** | Format code |
| **`<leader>ls`** | Document symbols |

---

## 🎨 Modern UI Features

### 🎯 **Visual Excellence**
- **Rounded borders** on all floating windows
- **Smooth animations** and cursor trails
- **Beautiful icons** throughout the interface
- **Consistent color scheme** with Onedark theme
- **Modern dashboard** with quick actions

### 🗂️ **Organized Workflow**
- **Categorized leader menus** for instant access
- **Persistent terminals** that remember your sessions
- **Smart window management** with intuitive navigation
- **Project-aware** session handling
- **Git integration** visible at a glance

---

## 📂 Project Structure

```
~/.config/nvim/
├── 📄 init.lua               # Entry point
├── 📄 lazy-lock.json         # Plugin version lock
├── 📁 lua/
│   ├── 📄 chadrc.lua         # NvChad configuration
│   ├── 📄 mappings.lua       # Comprehensive keymaps
│   ├── 📄 options.lua        # Neovim options
│   ├── 📁 configs/           # Plugin configurations
│   ├── 📁 core/              # Core functionality
│   │   ├── 📄 bootstrap.lua  # Plugin management
│   │   ├── 📄 theme.lua      # Theme loading
│   │   ├── 📄 ui-autocmds.lua # UI enhancements
│   │   └── 📄 providers.lua  # Provider settings
│   ├── 📁 plugins/           # Plugin specifications
│   │   ├── 📄 ui.lua         # Modern UI plugins
│   │   ├── 📄 which-key.lua  # Leader menu system
│   │   ├── 📄 dashboard.lua  # Startup screen
│   │   ├── 📄 extras.lua     # Additional tools
│   │   ├── 📄 telescope.lua  # Enhanced search
│   │   └── 📄 claude-code-nvim.lua # AI integration
│   └── 📁 utils/             # Utility functions
└── 📄 README.md              # You are here! 📍
```

---

## 🚀 Performance

- **Startup time**: ~50ms ⚡
- **Lazy loading**: All plugins load on-demand
- **Optimized LSP**: Smart server configurations
- **Smooth animations**: 60fps UI interactions
- **Memory efficient**: Only loads what you need

---

## 🛠️ Customization

### Adding Plugins

Create a new file in `lua/plugins/`:

```lua
-- lua/plugins/my-plugin.lua
return {
  "username/plugin-name",
  event = "VeryLazy",
  opts = {
    -- Plugin options
  }
}
```

### Changing Theme

Edit `lua/chadrc.lua`:

```lua
M.base46 = {
  theme = "onedark",  -- Change to any NvChad theme
  transparency = false,
}
```

### Customizing Leader Menus

Edit `lua/plugins/which-key.lua` to modify the menu categories and icons.

---

## 🤝 Contributing

Pull requests are welcome! For major changes, please open an issue first.

## 📜 License

This project is licensed under the GPL-3.0 License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [NvChad](https://nvchad.com/) for the amazing base configuration
- [Claude Code](https://claude.ai/code) for AI-powered development
- All the plugin authors for their incredible work
- The Neovim community for continuous inspiration

---

<div align="center">

**Made with ❤️ by NCLSP**

*The cleanest, sleekest, most modern Neovim interface ever made*

⭐ Star this repo if you find it helpful!

</div>