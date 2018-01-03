syntax on
colorscheme dracula
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

set autoread " Autoread changes to files
set number " Display line numbers
set ruler
set expandtab " Use spaces over tabs
set smarttab " Indent according to shift width when pressing tab key
set nowrap " Don't wrap lines
set autoindent " Copy indentation from previous line
set cmdheight=2 " Height of the command bar
set ignorecase " Ignore case when searching
set incsearch " Search while entering characters
set cursorline " Highlight current line
set showmatch " Highlight matching brackets, parentheses, braces
set noswapfile " No swap files
set wildignore=*.o,*~,*.pyc,*.swp

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"===============================================================================
" Tab settings
"===============================================================================

" for js files, 2 spaces
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab

" for groovy/gradle
autocmd Filetype groovy setlocal ts=2 sw=2 sts=0 expandtab

" for python files, 2 spaces
autocmd Filetype python setlocal ts=4 sw=4 sts=0 expandtab

" for bash files, 4 spaces
autocmd Filetype bash setlocal ts=4 sw=4 sts=0 expandtab

" for yaml files, 2 spaces
autocmd Filetype yaml setlocal ts=2 sw=2 sts=0 expandtab


"===============================================================================
" Mappings
"===============================================================================

" Map leader
let mapleader=" "

"Switch between splits
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Resize splits
" Pathogen package manager for vim
execute pathogen#infect()

"----- NERDTree -----
autocmd vimenter * NERDTree
"Close if only window open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"----- Airline -----
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2
