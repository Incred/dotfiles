set nocompatible " be iMproved, required
filetype off " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'morhetz/gruvbox'
	Plugin 'dense-analysis/ale'
	Plugin 'tpope/vim-fugitive'
call vundle#end()            " required

filetype plugin indent on    " required

let b:ale_linters = {'python': ['flake8', 'mypy']}
let g:ale_virtualtext_cursor = 'disabled'

filetype plugin indent on
syntax on

set tabstop=4  " insert 4 spaces for a tab
set shiftwidth=4 "  number of space characters inserted for indentation
set expandtab  " use space character instead of tab
set fileformats=unix
set colorcolumn=79
set autoindent  "  uses indent from the previous line 
set history=50      " keep 50 lines of command line history
set ruler       " show the cursor position all the time
set showcmd     " display incomplete commands
set incsearch       " do incremental searching
set background=dark
set t_Co=256
set laststatus=2
set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <F1> <NOP>

autocmd vimenter * ++nested colorscheme gruvbox
