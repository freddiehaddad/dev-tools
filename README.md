# NeoVim Setup

## Prerequisites

1. Install Homebrew
   
   ```
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

1. Install Bash16-Shell

   ```
   git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
   ```

1. Update your `~/.zshrc` file

   ```zsh
   # Base16 Shell
   BASE16_SHELL="$HOME/.config/base16-shell/"
   [ -n "$PS1" ] && [ -s "$BASE16_SHELL/profile_helper.sh" ] && eval "$("$BASE16_SHELL/profile_helper.sh")"
   ```

1. Reload shell

   ```
   source ~/.zshrc
   ```

1. Select a theme (type `base16` followed by a tab to perform tab completion)

   ```
   base16_classic_dark
   ```

1. Core Package Install

   ```
   brew bundle Brewfile.core
   ```

1. Configure your terminal to use the nerd font installd by homebrew

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

## Post Setup

Neovim should be ready. However some runtime configurations are required.

### LSP functionality.

* Use `:LspInstallInfo` to install the desired language servers.

### Debugging with DAP

Core DAP functionality comes pre-configured, however each langauge requires specific configuration.

Refer to [https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation](https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation) for configuring specific languages.

### Debugging wtih Delve

Support for debugging the Go programming language is included.  Just install `delve` on your system and ensure it's in your path.

```
brew install delve
```

### Null-LS

Code formatting for `lua` and `go` files is configured. Just install `gofmt` and `stylua`.

```
brew install go
brew install stylua
```
