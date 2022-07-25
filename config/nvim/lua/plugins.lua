-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- bootstrap
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'nvim-lua/plenary.nvim'
  use {
       'nvim-treesitter/nvim-treesitter',
       run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
   }
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  -- which keybindings
  use {
    "folke/which-key.nvim",
    config = function()
       require("keybindings").setup()
    end
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'kyazdani42/nvim-web-devicons'

  -- nerdtree replace ment
   use {
     'kyazdani42/nvim-tree.lua',
     requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    }
  }
  -- surround
  use "tpope/vim-surround"
  -- magit nvim thing
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  -- ctrl+p 
  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- lsp
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
	}
  -- auto jump
   if packer_bootstrap then
    require('packer').sync()
  end
end)
