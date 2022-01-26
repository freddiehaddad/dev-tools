# Neo(Vim) Setup

Clone this repository.

```bash
git clone https://github.com/freddiehaddad/dev-tools.git
```

Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## For NeoVim

Install Homebrew Packages

```bash
brew bundle Brewfile.nvim
```

After installing Homebrew bundle, follow the output instructions for setting up your shell.  Also, visit the package maintainers github repos for instructions not outputted from Homebrew.

switch to the `nvim` directory

```bash
cd nvim
```

Some needed shell settings

```bash
echo 'export EDITOR=nvim' >> ~/.zshrc
echo 'export VISUAL=nvim' >> ~/.zshrc
echo 'alias cat=bat' >> ~/.zshrc
echo 'alias ls="lsd -l"' >> ~/.zshrc
echo 'alias vim=nvim' >> ~/.zshrc
echo 'export FZF_DEFAULT_OPTS="--color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C,pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B"' >> ~/.zshrc
echo 'export BAT_THEME="Nord"' >> ~/.zshrc
source ~/.zshrc
```

Point NeoVim to the Configuration Files

```bash
mkdir -p ~/.config/nvim
ln -s -f $(pwd)/init.lua ~/.config/nvim/init.lua
ln -s -f $(pwd)/lua ~/.config/nvim/lua
```

When you run NeoVim, you can use `:checkhealth` to see if anything is missing or misconfigured.

## For Vim

Install Homebrew Packages

```bash
brew bundle Brewfile.vim
```

After installing Homebrew bundle, follow the output instructions for setting up your shell.  Also, visit the package maintainers github repos for instructions not outputted from Homebrew.

switch to the `vim` directory

```bash
cd nvim
```

Install vim-plug

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Create a symbolic link to the vimrc file.

```bash
ln -s $(pwd)/vim/vimrc ~/.vimrc
```

Install Plugins

```bash
vim -es -u ./vim/plugrc -i NONE -c "PlugInstall" -c "qa"
```

Some needed shell settings

```bash
echo 'export EDITOR=vim' >> ~/.zshrc
echo 'export VISUAL=vim' >> ~/.zshrc
echo 'alias cat=bat' >> ~/.zshrc
echo 'alias ls="lsd -l"' >> ~/.zshrc
echo 'export FZF_DEFAULT_OPTS="--color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C,pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B"' >> ~/.zshrc
echo 'export BAT_THEME="Nord"' >> ~/.zshrc
source ~/.zshrc
```

# iTerm Setup

* Install and run iTem
* Import the Nord colorscheme
* Import the user profile

