"
" Plugin Manager
"
call plug#begin()
" Default VIM Settings
Plug 'tpope/vim-sensible'

" Fuzzy Finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Status
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git
Plug 'airblade/vim-gitgutter'

" Colorscheme
Plug 'arcticicestudio/nord-vim'
call plug#end()

"
" Theme Settings
"
set termguicolors
colorscheme nord

"
" Editor Settins
"
set nu
set cursorline
set signcolumn=number
set noswapfile

"
" Keybinds
"
let mapleader = " "

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap <leader>fb <cmd>Buffers<cr>
nnoremap <leader>ff <cmd>Files<cr>
nnoremap <leader>fg <cmd>Rg<cr>
nnoremap <leader>fh <cmd>Helptags<cr>

"
" Airline
"
let g:AirlineTheme = "nord"
let g:airline_powerline_fonts = 1
