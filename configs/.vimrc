set ts=2 sts=2 shiftwidth=2
set et
set si
set noeb
set nu
set rnu
set udir
set noswapfile
set undofile
set undodir=~/.vim/undodir
set incsearch

set exrc
set hidden

let mapleader = " "
let maplocalleader = "g"

map <leader>e :E<CR>
map <localleader>e :E<CR>

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
call plug#end()
