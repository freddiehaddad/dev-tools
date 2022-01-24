local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path,
  }
  vim.notify('Installing packer, restart Neovim after...')
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup reload_plugins_file
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't crash on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  vim.notify('Failure loading packer!')
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end,
  },
}

-- Configure Packer (plugin manager)
return packer.startup(function(use)
  -- Plugin manager
  use 'wbthomason/packer.nvim'

  -- Popup API
  use {
    'nvim-lua/popup.nvim',
    requires = {{ 'nvim-lua/plenary.nvim' }}
  }

  -- Colorschemes
  use 'shaunsingh/nord.nvim'
  
  -- Setup packer after bootstrap
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)

