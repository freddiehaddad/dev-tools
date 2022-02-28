# Dev Environment Setup

Clone this repository

Install Homebrew

```text
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install packages

```
brew bundle
```

Update your shell environment variables according to the instructed output from Homebrew.

Visit the github repos for the remaining packages that Homebrew did not provide instructions for.

Update your shell environement

Base 16

```zsh
$ git clone https://github.com/chriskempson/base16-shell ~/.config/base16-shell
```

Add to `~/.zshrc`

```zsh
# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/" [ -n "$PS1" ] && [ -s "$BASE16_SHELL/profile_helper.sh" ] && eval "$("$BASE16_SHELL/profile_helper.sh")"
```

Open a new shell and type `base16` followed by a tab to perform tab completion.

Follow the instructions [https://github.com/InspectorMustache/base16-builder-python](https://github.com/InspectorMustache/base16-builder-python) for building the `iterm` and `fzf` profiles.

To configure `nvim-dap-ui`, update the colors in the `colorscheme.lua` file.

Shell

```zsh
# Add LunarVim to path
export PATH="$PATH:/Users/freddie.haddad/.local/bin"

# zoxide
eval "$(zoxide init zsh)"

# Bat - colorscheme
export BAT_THEME="base16"
alias cat="bat"

# LunarVim aliases
export EDITOR="nvim"
export VISUAL="nvim"
alias vim="nvim"

# fd
alias find="fd"

# lsd
alias ls="lsd -l"

# glow
alias glow="glow -s ~/projects/dev-tools/glow/nord.json"
```

Install LunarVim

```text
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
```

Update the LunarVim config

```
mv ~/.config/lvim/config.lua ~/.config/lvim/config.lua~
ln -s $(pwd)/lvim/config.lua ~/.config/lvim/config.lua
```

When you start LunarVim for the first time, be sure to do a `PackerSync` as the custom config disables some plugins and installs others.

# iTerm Setup

* Install and run iTerm
* Import the Nord colorscheme
* Import the user profile

