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

" File Explorer
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Git
Plug 'tpope/vim-fugitive'
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
set fillchars+=vert:\ ,eob:\ 

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

nnoremap <leader>et <cmd>NERDTreeToggle<cr>

"
" Git
"
nmap <silent><leader>g :call setbufvar(winbufnr(popup_atcursor(systemlist("cd " . shellescape(fnamemodify(resolve(expand('%:p')), ":h")) . " && git log --no-merges --no-patch -n 1 -L " . shellescape(line("v") . "," . line(".") . ":" . resolve(expand("%:p")))), { "padding": [1,1,1,1], "pos": "botleft", "wrap": 1, "maxwidth": 60 })), "&filetype", "git")<CR>

"
" Airline
"
let g:AirlineTheme = "nord"
let g:airline_powerline_fonts = 1

"
" NERDTree
"
let g:WebDevIconsOS = 'Darwin'

