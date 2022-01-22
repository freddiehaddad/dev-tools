# Vim Setup

Clone this repository.

```text
git clone https://github.com/freddiehaddad/dev-tools.git
```

Install Homebrew

```text
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install Homebrew Packages

```text
brew bundle
```

Install vim-plug

```text
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Create a symbolic link to the vimrc file.

```text
ln -s $(pwd)/vimrc ~/.vimrc
```

Install Plugins

```text
vim -es -u plugrc -i NONE -c "PlugInstall" -c "qa"
```

TODO: Add shell config files section

```text
echo 'export EDITOR=vim' >> ~/.zshrc
echo 'export VISUAL=vim' >> ~/.zshrc
echo 'alias cat=bat' >> ~/.zshrc
echo 'alias ls="lsd -l"' >> ~/.zshrc
echo 'export FZF_DEFAULT_OPTS="--color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C,pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B"' >> ~/.zshrc
echo 'export BAT_THEME="Nord"' >> ~/.zshrc
source ~/.zshrc
```

# iTerm Setup

TODO: Add iTerm configuration steps

