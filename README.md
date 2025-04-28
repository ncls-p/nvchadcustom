# NvChad Configuration

This repository is intended to be used as a configuration for NvChad users. It leverages the main NvChad repository as a plugin and provides additional custom configurations.

## Installation

1. **Clone the Repository**: Clone this repository to your local machine using the following command:
   ```bash
   git clone https://github.com/ncls-p/nvchadcustom ~/.config/nvim
   ```

## Directory Structure

- **lua/core/**: Core setup modules for Neovim initialization
  - `bootstrap.lua`: bootstraps lazy.nvim, sets leader, loads plugins
  - `theme.lua`: loads theme defaults and statusline
  - `providers.lua`: enables and loads external providers
- **lua/configs/**: Configuration files for various plugins and features
  - `lspconfig.lua`: LSP configuration
  - `conform.lua`: Code formatting configuration
  - `lazy.lua`: Lazy loading plugin configuration
- **lua/plugins/**: Individual plugin specifications split by functionality
  - `conform.lua`, `lspconfig.lua`, `copilot.lua`, `copilot_lsp.lua`, `avante.lua`, `molten.lua`, `image.lua`
- **lua/options.lua**: General Neovim options and settings
- **lua/mappings.lua**: Key mappings for Neovim
- **lua/chadrc.lua**: NvChad custom overrides and theme settings

## Usage

To use this configuration, simply import the modules you need in your Neovim setup. Customize the configurations in the `lua/configs/` directory to suit your preferences.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your changes. Ensure your code follows the existing style and conventions.

## Credits

1. [LazyVim Starter](https://github.com/LazyVim/starter): NvChad's starter was inspired by LazyVim's, making many things easier!
