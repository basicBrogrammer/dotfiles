-- command! Scratch lua require'tools'.makeScratch()
local o = vim.o
local wo = vim.wo
local bo = vim.bo
vim.g.mapleader = " " 

vim.cmd[[colorscheme tokyonight]]
require("nvim-tree").setup()
require('plugins')

-- global options
o.swapfile = true
o.dir = '/tmp'
o.smartcase = true
o.laststatus = 2
o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.scrolloff = 12

-- window-local options
wo.number = true
wo.wrap = false

-- buffer-local options
bo.expandtab = true
