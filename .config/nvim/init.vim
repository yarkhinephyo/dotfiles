" Plugin related scripts
runtime ./runtime/vim-plug.vim
runtime! ./runtime/plugin/*
runtime ./runtime/clipboard.vim

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

" Non-plugin key mappings

" Remap the <Esc>
inoremap jk <Esc>
xnoremap <Enter> <Esc>
" Remap the semicolon to colon
nnoremap ; :
vnoremap ; :
" Map key to stop search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>
nnoremap <silent> <Enter> <Esc>:nohlsearch<CR><Esc>
" Map s to search forward and backward
nnoremap s /
vnoremap s /
nnoremap S ?
vnoremap S ?
" Map asterisk to not move around
nnoremap * *N
" Map space to center the screen
nnoremap <space><space> zz
xnoremap <space><space> zz
" Map tab and shift-tab for indentation in visual mode
xnoremap <Tab> >gv
xnoremap <S-tab> <gv
" Map tab and shift-tab for navigating buffers in normal mode
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
" Map vim windows similar to tmux panes
nnoremap <C-w>% <C-w>v
nnoremap <C-w>" <C-w>s
nnoremap <C-w>x <C-w>c
" Resize vim windows with arrow keys
nnoremap <Down> <Esc>:res +2<CR> " increase pane by 2
nnoremap <Up> <Esc>:res -2<CR> " decrease pane by 2
nnoremap <Right> <Esc>:vertical res +2<CR> " vertical increase pane by 2
nnoremap <Left> <Esc>:vertical res -2<CR> " vertical decrease pane by 2
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
