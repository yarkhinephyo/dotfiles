call plug#begin()

  Plug 'morhetz/gruvbox'
  Plug 'jiangmiao/auto-pairs'
  Plug 'preservim/nerdcommenter'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-fugitive'
  Plug 'https://github.com/inkarkat/vim-ReplaceWithRegister.git'

  if has('nvim')
    Plug 'kyazdani42/nvim-tree.lua'
    " Require dependencies
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'
  endif

call plug#end()

" Plugin related scripts
runtime runtime/plugins/gruvbox.vim
runtime runtime/plugins/nerdcommenter.vim

if has('nvim')
  runtime runtime/nvim-plugins/nvim-lsp-installer.lua
  runtime runtime/nvim-plugins/nvim-tree.lua
  runtime runtime/nvim-plugins/nvim-treesitter.lua
  runtime runtime/nvim-plugins/telescope.vim
endif

" Non-plugin related
runtime runtime/clipboard.vim
runtime runtime/keymappings.vim

" Theme
set background=dark

" Tabs and spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set copyindent

" UI config
set number
set relativenumber
set showmatch
set noswapfile
set formatoptions-=t
set cursorline

