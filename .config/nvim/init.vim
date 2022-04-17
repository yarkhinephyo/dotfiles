" Plugin related scripts
runtime ./runtime/vim-plug.vim
runtime! ./runtime/plugin/*.vim

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
set showmatch
set noswapfile

" Non-plugin key mappings
inoremap jk <Esc>
noremap <Space> <Nop>
map <Space> <Leader>
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

" Clipboard (Linux requires xclip)
set clipboard+=unnamedplus

