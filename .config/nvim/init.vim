" Plugin related scripts
runtime ./runtime/vim-plug.vim
runtime! ./runtime/plugin/*
runtime ./runtime/wsl-yank-support.vim

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
set formatoptions-=t

" Clipboard (Linux requires xclip)
set clipboard+=unnamedplus


" Non-plugin key mappings

" Remap the <Esc>
inoremap jk <Esc>
" Map double <Esc> to stop search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>
" Map vim windows similar to tmux panes
nnoremap <C-w>% <C-w>v
nnoremap <C-w>" <C-w>s
nnoremap <C-w>x <C-w>c
" Map navigating tabs
nnoremap <C-h> <Esc>:tabprevious<CR>
nnoremap <C-l> <Esc>:tabnext<CR>
" Diagnostic functions
nnoremap <silent> <Space>e <cmd>lua vim.diagnostic.open_float()<CR>
nnoremap <silent> [d <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> d] <cmd>lua vim.diagnostic.goto_next()<CR>
nnoremap <silent> <Space>q <cmd>lua vim.diagnostic.setloclist()<CR>
" Map omnicomplete to <Ctrl-Space>
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>
