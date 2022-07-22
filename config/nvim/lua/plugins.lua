-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
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
  -- magit nvim thing
  -- ctrl+p 
  -- lsp
  -- auto jump
end)
