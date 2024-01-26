-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  require("rose-pine").setup()
--		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use 'Mofiqul/vscode.nvim'

  require('vscode').setup({
    italic_comments = true,
  })

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  -- use('nvim-treesitter/nvim-treesitter-context')
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use ('kyazdani42/nvim-web-devicons')
  use('tpope/vim-fugitive')
  use('tpope/vim-surround')
  use('AndrewRadev/splitjoin.vim')
  use('f-person/git-blame.nvim')
  use('tpope/vim-repeat')
  use('mg979/vim-visual-multi')
  use('wellle/targets.vim')
  use('andymass/vim-matchup')
  use('michaeljsmith/vim-indent-object')
  use('onemanstartup/vim-slim')
  use('hrsh7th/cmp-nvim-lsp-signature-help')
  use('sbdchd/neoformat')
  use('tpope/vim-bundler')
  use('tpope/vim-dispatch')
  use('tpope/vim-rails')
  use('tpope/vim-endwise')
  use('kana/vim-textobj-user')
  use('Julian/vim-textobj-variable-segment')
  use('justinmk/vim-sneak')
  use('kdheepak/lazygit.nvim')
  use('mattn/emmet-vim')
  use('ntpeters/vim-better-whitespace')
  use('gerazov/toggle-bool.nvim')
  use('brenoprata10/nvim-highlight-colors')
  use('gpanders/editorconfig.nvim')
  use('sQVe/sort.nvim')
  use('stevearc/aerial.nvim')
  use('nvim-tree/nvim-web-devicons')
  use('nvim-pack/nvim-spectre')
  use {'axkirillov/easypick.nvim', requires = 'nvim-telescope/telescope.nvim'}
  use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end
}


use({
  "nvim-treesitter/nvim-treesitter-textobjects",
  after = "nvim-treesitter",
  requires = "nvim-treesitter/nvim-treesitter",
})
  use { 'sindrets/diffview.nvim', requires = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons' } }
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  use {
  'lewis6991/gitsigns.nvim'
}

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

use {
  "chrisgrieser/nvim-various-textobjs",
  config = function ()
    require("various-textobjs").setup({ useDefaultKeymaps = true })
  end,
}

use {
  "cuducos/yaml.nvim",
  ft = { "yaml" }, -- optional
  requires = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim" -- optional
  },
}

use {
  'nvim-tree/nvim-tree.lua',
}

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
end)
