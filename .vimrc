syntax on
set nocompatible
set nowrap
set encoding=utf8 nobomb
set autoindent smartindent
set number
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smarttab
set mouse=a
filetype on
filetype plugin indent on
filetype plugin on
set cursorline
set ruler
set spelllang=en_us
set history=200
set undolevels=100
set autoread
set esckeys
set hlsearch
set incsearch
set ignorecase smartcase
set backspace=indent,eol,start
set t_Co=256
set laststatus=2
set numberwidth=4
set report=0
set showmode
set showcmd
set showmatch
set title
set splitbelow splitright
set scrolloff=5 
set sidescrolloff=7
set sidescroll=1
set wildmenu
set wildchar=<TAB>
set wildmode=list:longest
set wildignore+=*.DS_STORE,*.db,node_modules/**,*.jpg,*.png,*.gif,*.ico
set noerrorbells
set visualbell
set infercase
noremap <C-S-Up> YP
noremap <C-S-Down> YP
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
set splitbelow
set splitright

autocmd FileType c      map <buffer> <F5> :w<CR>:!make %< && ./%< <CR>
autocmd FileType php    map <buffer> <F5> :w<CR>:!php % <CR>
autocmd FileType js     map <buffer> <F5> :w<CR>:!node % <CR>
autocmd FileType python map <buffer> <F5> :w<CR>:!python %<CR>
autocmd FileType sh     map <buffer> <F5> :w<CR>:!sh %<CR>

