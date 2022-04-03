local M = {}

-- Default error handling function
M.setup = function()
  vim.notify('Error loading plugins.lua')
end

-- Check for packer
local present, packer = pcall(require, 'packer')
if not present then
  vim.notify('Plugin: packer not found!')
  return M
end

local load_plugins = function(use)
  -- Packer plugin (manages itself)
  use('wbthomason/packer.nvim')

  -- Base16
  use('chriskempson/base16-vim')

  -- Plugin dependencies
  use('nvim-lua/popup.nvim')
  use('nvim-lua/plenary.nvim')
  use({
    'kyazdani42/nvim-web-devicons',
    config = function()
      require('config.nvim-web-devicons').setup()
    end,
  })

  -- File explorer
  use({
    'nvim-neo-tree/neo-tree.nvim',
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons",
      "MunifTanjim/nui.nvim"
    },
    config = function()
      require('config.neotree').setup()
    end
  })

  -- Completion
  use({
    'hrsh7th/nvim-cmp',
    requires = {
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
    },
    config = function()
      require('config.nvim-cmp').setup()
    end,
  })

  -- LSP
  use('neovim/nvim-lspconfig')
  use({
    'williamboman/nvim-lsp-installer',
    requires = { 'neovim/nvim-lspconfig', 'hrsh7th/cmp-nvim-lsp' },
    config = function()
      require('config.nvim-lsp-installer').setup()
    end,
  })
  use({
    'jose-elias-alvarez/null-ls.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('config.null-ls').setup()
    end,
  })

  -- DAP
  use({
    'mfussenegger/nvim-dap',
    config = function()
      require('config.nvim-dap').setup()
    end,
  })

  use({
    'rcarriga/nvim-dap-ui',
    requires = 'mfussenegger/nvim-dap',
    config = function()
      require('config.nvim-dap-ui').setup()
    end,
  })

  use({
    'leoluz/nvim-dap-go',
    requires = 'mfussenegger/nvim-dap',
    config = function()
      require('dap-go').setup()
    end,
  })

  -- Telescope
  use({
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('config.telescope').setup()
    end,
  })

  -- Telescope extensions
  use({
    'nvim-telescope/telescope-fzf-native.nvim',
    requires = 'nvim-telescope/telescope.nvim',
    run = 'make',
    config = function()
      require('telescope').load_extension('fzf')
    end,
  })

  use({
    'jvgrootveld/telescope-zoxide',
    requires = {
      'nvim-lua/popup.nvim',
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
    },
    config = function()
      require('config.telescope-zoxide').setup()
    end,
  })

  use({
    'nvim-telescope/telescope-dap.nvim',
    requires = 'nvim-telescope/telescope.nvim',
    config = function()
      require('config.telescope-dap').setup()
    end,
  })

  -- Treesitter
  use({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('config.nvim-treesitter').setup()
    end,
  })

  use({
    'liuchengxu/vista.vim'
  })

  -- GitSigns
  use({
    'lewis6991/gitsigns.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('config.gitsigns').setup()
    end,
  })

  -- Feline
  use({
    'feline-nvim/feline.nvim',
    config = function()
      require('config.feline').setup()
    end,
  })

  -- Terminal
  use({
    'akinsho/toggleterm.nvim',
    config = function()
      require('config.toggleterm').setup()
    end,
  })
end

local config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end,
  },
}

local setup = function()
  packer.init(config)
  packer.startup(load_plugins)
end

M.setup = setup

return M
