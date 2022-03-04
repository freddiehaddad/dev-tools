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

Open a new shell and type `base16` followed by a tab to perform tab completion.

Follow the instructions [https://github.com/InspectorMustache/base16-builder-python](https://github.com/InspectorMustache/base16-builder-python) for building the `iterm` and `fzf` profiles.

To configure `nvim-dap-ui`, update the colors in the `colorscheme.lua` file.

Shell

```zsh
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && [ -s "$BASE16_SHELL/profile_helper.sh" ] && eval "$("$BASE16_SHELL/profile_helper.sh")"

# iTerm
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Base16 Default Dark
# Author: Chris Kempson (http://chriskempson.com)

_gen_fzf_default_opts() {

local color00='#181818'
local color01='#282828'
local color02='#383838'
local color03='#585858'
local color04='#b8b8b8'
local color05='#d8d8d8'
local color06='#e8e8e8'
local color07='#f8f8f8'
local color08='#ab4642'
local color09='#dc9656'
local color0A='#f7ca88'
local color0B='#a1b56c'
local color0C='#86c1b9'
local color0D='#7cafc2'
local color0E='#ba8baf'
local color0F='#a16946'

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS"\
" --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D"\
" --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C"\
" --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D"

}

_gen_fzf_default_opts

# ZSH auto suggestions
[ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ZSH vi mode
[ -f /opt/homebrew/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh ] && source /opt/homebrew/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# zoxide
eval "$(zoxide init zsh)"

# Bat - colorscheme
export BAT_THEME="base16"
alias cat="bat"

# Neovim
export EDITOR="nvim"
export VISUAL="nvim"
alias vim="nvim"
alias nvim="nvim"

# fd
alias find="fd"

# lsd
alias ls="lsd"
alias ll="lsd -l"
alias lla="lsd -la"

# Powerlevel10k
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"
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
* Import the user profile

