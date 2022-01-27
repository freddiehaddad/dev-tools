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

Update your shell environment variables according to the instructed output from Homebrew

Visit the github repos for the remaining packages that Homebrew did not provide instructions for

Update your shell environement

```zsh
# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Add LunarVim to path
export PATH="$PATH:/Users/freddie.haddad/.local/bin"

# Fzf - colorscheme
export FZF_DEFAULT_OPTS="--color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C,pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B"

# zoxide
eval "$(zoxide init zsh)"

# Bat - colorscheme
export BAT_THEME="Nord"
alias cat="bat"

# LunarVim aliases
export EDITOR="lvim"
export VISUAL="lvim"
alias vim="lvim"
alias nvim="lvim"

# fd
alias find="fd"

# lsd
alias ls="lsd -l"

# glow
alias glow="glow -s ~/projects/dev-tools/glow/nord.json"
```

Install Python and Node using `asdf`

```text
asdf plugin add nodejs
asdf install nodejs lts
asdf global nodejs lts
asdf plugin add python
asdf install python latest
asdf global python latest
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

