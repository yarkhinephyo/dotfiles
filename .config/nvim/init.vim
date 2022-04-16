call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

" Theme
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox

" NERDTree toggle to ctrl-t
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
let NERDTreeShowHidden=1

" Nerd commenter toggle to ctrl-/
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" Find files using Telescope command-line sugar.
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

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

