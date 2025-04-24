# NvChad Configuration

This repository is intended to be used as a configuration for NvChad users. It leverages the main NvChad repository as a plugin and provides additional custom configurations.

## Installation

1. **Clone the Repository**: Clone this repository to your local machine using the following command:
   ```bash
   git clone https://github.com/ncls-p/nvchadcustom ~/.config/nvim

## Directory Structure

- **lua/configs/**: Contains configuration files for various plugins and features.
  - `lspconfig.lua`: Configuration for LSP (Language Server Protocol).
  - `conform.lua`: Configuration for code formatting.
  - `lazy.lua`: Configuration for lazy loading plugins.
- **lua/options.lua**: Contains general Neovim options and settings.
- **lua/chadrc.lua**: Main configuration file for NvChad.
- **lua/plugins/init.lua**: Initializes and configures plugins.
- **lua/mappings.lua**: Contains key mappings for Neovim.
- **copilot_state.lua**: Configuration for GitHub Copilot.

## Usage

To use this configuration, simply import the modules you need in your Neovim setup. Customize the configurations in the `lua/configs/` directory to suit your preferences.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your changes. Ensure your code follows the existing style and conventions.

## Credits

1. [LazyVim Starter](https://github.com/LazyVim/starter): NvChad's starter was inspired by LazyVim's, making many things easier!
