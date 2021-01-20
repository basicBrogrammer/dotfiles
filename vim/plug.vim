call plug#begin()

" ================== Defaults ==================
Plug 'liuchengxu/vim-better-default'

" ================== Aesthetics ==================
"Plug 'kristijanhusak/vim-hybrid-material'
"Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline' " make it pretty
Plug 'vim-airline/vim-airline-themes'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'kaicataldo/material.vim'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'rakr/vim-one'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'jaredgorski/SpaceCamp'
Plug 'ryanoasis/vim-devicons'

" ================== Git ==================
Plug 'airblade/vim-gitgutter' " git diff in gutter
Plug 'jreybert/vimagit' " vim git flow
Plug 'junegunn/gv.vim' " vim git log
Plug 'tpope/vim-fugitive' " vim utils

" ================== Navigation ==================
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree' " navigation
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeToggle' } " navigation
Plug 'vim-scripts/BufOnly.vim'

" ================== Editing ==================
Plug 'brooth/far.vim'
Plug 'alvan/vim-closetag'
Plug 'Townk/vim-autoclose' " enable an auto-close chars feature for you ([{
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'

" ================== Code Completion ==================
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

" ================== languages ==================
Plug 'w0rp/ale'
Plug 'janko-m/vim-test' " vim test
Plug 'christoomey/vim-tmux-runner'

" ****************** Ruby ******************
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-cucumber'

" ****************** Javascript ******************
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'sukima/vim-javascript-imports'
Plug 'sukima/vim-ember-imports'
Plug 'mxw/vim-jsx'

" ****************** Typescript ******************
Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }
"Plug 'mhartington/nvim-typescript', {'do': './install.sh', 'for': 'typescript'}

" ****************** GraphQL ******************
Plug 'jparise/vim-graphql', { 'for': 'graphql' }

" ****************** Python ******************
"Plug 'bfredl/nvim-ipy', { 'do': ':UpdateRemotePlugins', 'branch': 'ioloop' }
"Plug 'zchee/deoplete-jedi', { 'for': 'python' }

" ****************** Elixir ******************
Plug 'slashmili/alchemist.vim'
Plug 'elixir-lang/vim-elixir'

" ****************** templates ******************
Plug 'mustache/vim-mustache-handlebars'
Plug 'slim-template/vim-slim'
Plug 'slime-lang/vim-slime-syntax'
Plug 'tpope/vim-haml'
Plug 'yalesov/vim-emblem'

" ================== Misc ==================
"Plug 'HendrikPetertje/vimify'
Plug 'itchyny/calendar.vim'

call plug#end()
