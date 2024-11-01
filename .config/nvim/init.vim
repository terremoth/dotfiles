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
set undolevels=200
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
set novisualbell
set belloff=all
set infercase
set ttyfast
set undolevels=2000
set lazyredraw

colorscheme slate

noremap <C-S-Up> YP
noremap <C-S-Down> YP

let g:netrw_banner = 0
let g:netrw_browse_split = 3
let g:netrw_winsize = 20
let g:netrw_liststyle = 3
let g:netrw_altv = 1

set splitbelow
set splitright

map <C-E> :Vexplore<CR>

let g:netrw_list_hide='.*\.swp$'
" open files in left window by default
let g:netrw_chgwin=1
" remap shift-enter to fire up the sidebar
 nnoremap <silent> <S-CR> :rightbelow 20vs<CR>:e .<CR>
" the same remap as above - may be necessary in some distros
" nnoremap <silent> <C-M> :rightbelow 20vs<CR>:e .<CR>
" remap control-enter to open files in new tab
nmap <silent> <C-CR> t :rightbelow 20vs<CR>:e .<CR>:wincmd h<CR>
" the same remap as above - may be necessary in some distros
nmap <silent> <NL> t :rightbelow 20vs<CR>:e .<CR>:wincmd h<CR>

autocmd Filetype netrw nmap <buffer> <F6> ma:argdo tabnew<CR>

set completeopt=menu,preview,longest

" open omni completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'



" Compile and/or execute the programming file pressing F5

let commands = {
  \ 'c': 'make %< && ./%<',
  \ 'php': 'php %',
  \ 'js': 'node %',
  \ 'py': 'python %',
  \ 'pyw': 'python %',
  \ 'sh': 'sh %',
  \ 'awk': 'awk -f %',
  \ 'Makefile': 'make %',
  \ 'vim': 'vim --cmd "source %" -c "quit"<CR>',
  \ 'java': 'javac % && java %<'
\ }

for [lang, cmd] in items(commands)
  exec 'autocmd FileType ' . lang . ' map <buffer> <F5> :w<CR>:!clear && ' . cmd . '<CR>'
endfor

