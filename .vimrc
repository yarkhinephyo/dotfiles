call plug#begin()

  Plug 'morhetz/gruvbox'
  Plug 'jiangmiao/auto-pairs'
  Plug 'preservim/nerdcommenter'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-fugitive'
  Plug 'https://github.com/inkarkat/vim-ReplaceWithRegister.git'

call plug#end()


" NERD-COMMENTER
"
" Toggle to ctrl-/
nmap gc <Plug>NERDCommenterToggle
vmap gc <Plug>NERDCommenterToggle<CR>gv


" GRUVBOX
"
" use autocmd vimenter, to be sure that all plugins are loaded completely and then use gruvbox
autocmd vimenter * ++nested colorscheme gruvbox


" KEY-MAPPINGS
"
" Remap the <Esc>
inoremap jk <Esc>
xnoremap <Enter> <Esc>
" Remap the semicolon to colon
nnoremap ; :
vnoremap ; :
" Map key to stop search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>
nnoremap <silent> <Enter> <Esc>:nohlsearch<CR><Esc>
" Map asterisk to not move around
nnoremap * *N
" Map space to center the screen
nnoremap <space><space> zz
xnoremap <space><space> zz
" Map for inserting space in normal mode
nnoremap ss a<space><Esc>
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

