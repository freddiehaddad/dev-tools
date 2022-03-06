# NeoVim Setup

## Prerequisites

1. Install Homebrew
   
   ```
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

1. Core Package Install

   ```
   brew bundle Brewfile.core
   ```

1. Install Node package

   ```
   npm install -g neovim
   ```

1. Install Python package

   ```
   pip3 install pynvim
   ```

1. Install Packer

   ```
   git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
   ```

1. Link NeoVim config

   ```
   mkdir -p ~/.config/nvim
   ln -s $(pwd)/nvim/init.lua ~/.config/nvim/init.lua
   ln -s $(pwd)/nvim/lua ~/.config/nvim/lua
   ```

1. Install plugins
   
   ```
   nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
   ```

   NOTE: You may see some errors during plugin installation.  They should resolve after this step.

   ```
   Error sourcing ~/.vimrc_background
   ```
