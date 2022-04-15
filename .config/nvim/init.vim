
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" Theme
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox

" Spaces & Tabs
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

" NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
let NERDTreeShowHidden=1

" Clipboard
set clipboard+=unnamedplus

