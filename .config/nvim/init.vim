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

" Clipboard (Linux requires xclip)
set clipboard+=unnamedplus


" Non-plugin key mappings

" Remap the <Esc>
inoremap jk <Esc>
" Remap the <Leader> to <Space>
noremap <Space> <Nop>
map <Space> <Leader>
" Map double <Esc> to stop search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>
" Map vim windows similar to tmux panes
nnoremap <C-w>% <C-w>v
nnoremap <C-w>" <C-w>s
nnoremap <C-w>x <C-w>c

