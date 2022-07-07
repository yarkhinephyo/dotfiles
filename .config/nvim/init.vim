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
set relativenumber
set showmatch
set noswapfile
set formatoptions-=t
set cursorline

" Clipboard (Linux requires xclip)
set clipboard+=unnamedplus


" Non-plugin key mappings

" Remap the <Esc>
inoremap jk <Esc>
xnoremap <Enter> <Esc>
" Remap the semicolon to colon
nnoremap ; :
vnoremap ; :
" Map key to stop search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>
" Map paste to not override register
xnoremap p pgvy
" Map asterisk to not move around
nnoremap * *N
" Map space to center the screen
nnoremap <space><space> zz
xnoremap <space><space> zz
" Map tab and shift-tab for indentation
nnoremap <Tab> >>
nnoremap <S-tab> <<
xnoremap <Tab> >gv
xnoremap <S-tab> <gv
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
