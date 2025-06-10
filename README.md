# 🚀 NCLSP's Neovim Configuration

<div align="center">

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)
[![License](https://img.shields.io/badge/license-GPL%20v3-blue?style=for-the-badge)](./LICENSE)

**A modern, blazing fast Neovim config built on NvChad v2.5** ⚡

[Features](#-features) • [Installation](#-installation) • [Plugins](#-plugins) • [Keymaps](#-keymaps) • [Screenshots](#-screenshots)

</div>

---

## ✨ Features

- 🎨 **Beautiful UI** - Clean and modern interface with Onedark theme
- 🤖 **AI-Powered** - Claude Code integration for intelligent coding assistance
- 🔍 **Fuzzy Finding** - Lightning-fast file and text search with Telescope
- 📁 **File Explorer** - Modern file tree with Neo-tree
- 🔧 **LSP Support** - Full language server protocol support for multiple languages
- 📊 **Git Integration** - See git changes directly in your editor with Gitsigns
- 🎯 **Smart Completion** - Context-aware code completion
- 📓 **Jupyter Support** - Run Python notebooks directly in Neovim with Molten
- ⚡ **Optimized Performance** - Lazy loading for blazing fast startup times

## 📦 Installation

### Prerequisites

- Neovim >= 0.10.0
- Git
- A [Nerd Font](https://www.nerdfonts.com/) (for icons)
- Node.js >= 16 (for some LSP servers)
- Python 3 (for Molten support)
- ripgrep (for Telescope live grep)

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

## 🔌 Plugins

### Core Plugins

| Plugin | Description |
|--------|-------------|
| 🎨 [NvChad](https://github.com/NvChad/NvChad) | Base configuration framework |
| 🔍 [Telescope](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder for files, text, and more |
| 📁 [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) | Modern file explorer |
| 🌳 [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Better syntax highlighting |
| 📝 [LSP Config](https://github.com/neovim/nvim-lspconfig) | Language server configurations |

### AI & Productivity

| Plugin | Description |
|--------|-------------|
| 🤖 [Claude Code](https://github.com/anthropics/claude-code.nvim) | AI pair programming with Claude |
| 🧠 [LLM.nvim](https://github.com/huggingface/llm.nvim) | Local LLM integration |
| 📓 [Molten](https://github.com/benlubas/molten-nvim) | Jupyter notebook support |

### UI Enhancements

| Plugin | Description |
|--------|-------------|
| 🎨 [Base46](https://github.com/NvChad/base46) | Theme engine |
| 📊 [Gitsigns](https://github.com/lewis6991/gitsigns.nvim) | Git decorations |
| 🖼️ [Image.nvim](https://github.com/3rd/image.nvim) | Image preview support |

## ⌨️ Keymaps

### General

| Key | Description |
|-----|-------------|
| `<Space>` | Leader key |
| `;` | Enter command mode |
| `jk` | Exit insert mode |
| `<C-s>` | Save file |

### File Navigation

| Key | Description |
|-----|-------------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Find buffers |
| `<leader>fo` | Recent files |
| `<leader>e` | Toggle file tree |

### LSP

| Key | Description |
|-----|-------------|
| `gd` | Go to definition |
| `gr` | Go to references |
| `K` | Hover documentation |
| `<leader>ca` | Code actions |
| `<leader>rn` | Rename symbol |
| `<leader>fm` | Format file |

### Window Management

| Key | Description |
|-----|-------------|
| `<C-h/j/k/l>` | Navigate windows |
| `<C-Up/Down>` | Resize height |
| `<C-Left/Right>` | Resize width |

### Jupyter/Molten

| Key | Description |
|-----|-------------|
| `<localleader>mi` | Initialize Molten |
| `<localleader>e` | Evaluate operator |
| `<localleader>rl` | Evaluate line |
| `<localleader>rr` | Re-evaluate cell |

## 🎨 Color Scheme

This config uses the **Onedark** theme with custom highlights for a modern, comfortable coding experience.

## 📂 Project Structure

```
~/.config/nvim/
├── 📄 init.lua          # Entry point
├── 📄 lazy-lock.json    # Plugin version lock
├── 📁 lua/
│   ├── 📄 chadrc.lua    # NvChad configuration
│   ├── 📄 mappings.lua  # Key mappings
│   ├── 📄 options.lua   # Neovim options
│   ├── 📁 configs/      # Plugin configurations
│   ├── 📁 core/         # Core functionality
│   ├── 📁 plugins/      # Plugin specifications
│   └── 📁 utils/        # Utility functions
└── 📄 README.md         # You are here! 📍
```

## 🚀 Performance

- **Startup time**: ~50ms ⚡
- **Lazy loading**: Most plugins load on-demand
- **Optimized LSP**: Smart server configurations

## 🛠️ Customization

### Adding Plugins

Create a new file in `lua/plugins/` or add to existing files:

```lua
-- lua/plugins/my-plugin.lua
return {
  "username/plugin-name",
  event = "VeryLazy",  -- Lazy load
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
}
```

## 🤝 Contributing

Pull requests are welcome! For major changes, please open an issue first.

## 📜 License

This project is licensed under the GPL-3.0 License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [NvChad](https://nvchad.com/) for the amazing base configuration
- All the plugin authors for their incredible work
- The Neovim community for continuous inspiration

---

<div align="center">

**Made with ❤️ by NCLSP**

⭐ Star this repo if you find it helpful!

</div>
