local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  vim.notify("Installing Packer (restart NeoVim after) ...")
  return
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("Plugin: packer not installed!")
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "single" })
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  use "wbthomason/packer.nvim"

  use "shaunsingh/nord.nvim"

  use {
    "neovim/nvim-lspconfig",
    "williamboman/nvim-lsp-installer",
  }

  use {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
  }

  use {
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
  }

  use {
    "nvim-treesitter/nvim-treesitter"
  }

  use {
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" }
  }

  use {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make"
  }

  use {
    "nvim-lualine/lualine.nvim",
    requires = { 'kyazdani42/nvim-web-devicons' }
}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
