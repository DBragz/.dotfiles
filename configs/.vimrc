"
" Name: .vimrc
"
" Author: Daniel Ribeirinha-Braga
"
" Description: Profile vim file.
"

colorscheme murphy

set ts=2 sts=2 shiftwidth=2
set et
set si
set noeb
set nu
set rnu
set udir
set noswapfile
set undodir=$HOME/.vim/undodir
set undofile
set incsearch

set exrc
set hidden

let mapleader = " "
let maplocalleader = "g"

map <leader>e :Ex<CR>
map <localleader>e :Ex<CR>

let data_dir = has("nvim") ? stdpath("data") . "/site" : "~/.vim"
if empty(glob(data_dir . "/autoload/plug.vim"))
  silent execute "!curl -fLo ".data_dir."/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
  Plug 'junegunn/vim-plug'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/syntastic'
call plug#end()

let NERDTreeShowHidden=1

nnoremap <leader>t :NERDTreeToggle<CR>

execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

