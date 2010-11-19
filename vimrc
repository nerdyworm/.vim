call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype on  " Automatically detect file types.
set nocompatible  " We don't want vi compatibility.

set background=dark 
syntax on 
colorscheme nerdyworm 

filetype plugin indent on  

" Ctrl-s save
" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Ctrl-t
noremap <c-t> :CommandT<cr>
vnoremap <c-t> <c-c>:CommandT<cr>
inoremap <c-t> <c-o>:CommandT<cr>

set lines=50 columns=100

"Backups & Files
set backup                     " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.


set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
" colorscheme vividchalk  " Uncomment this to set a default theme
 
" Formatting (some of these are for coding in C and C++)
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab
 
" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
 
" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes

" Bubble Single lines
nmap <m-up> [e 
nmap <m-down> ]e

" Bubble mutliple lines
vmap <m-up> [egv
vmap <m-down> ]egv

" Nerdtre
nmap <silent> <C-D> :NERDTreeToggle<CR>
