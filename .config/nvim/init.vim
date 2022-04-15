let mapleader = '\'

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'preservim/nerdcommenter'

call plug#end()

" Theme
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox

" Nerd commenter toggle to ctrl-/
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv
      
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

" NERDTree toggle to ctrl-t
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
let NERDTreeShowHidden=1

" Clipboard (Linux requires xclip)
set clipboard+=unnamedplus

