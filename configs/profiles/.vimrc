"
" Name: .vimrc
"
" Author: Daniel Ribeirinha-Braga
"
" Description: Profile Vim file.
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

let data_dir = has("nvim") ? stdpath("data") . "/site" : "~/.vim"
if empty(glob(data_dir . "/autoload/plug.vim"))
  silent execute "!curl -fLo ".data_dir."/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
  Plug 'junegunn/vim-plug'
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/syntastic'
call plug#end()

let NERDTreeShowHidden=1

execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let maplocalleader = "g"
let mapleader = " "

nnoremap <localleader>e :Ex<CR>

nnoremap <leader>h :help<CR>
nnoremap <leader>so :so<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>gini :G ini<CR>
nnoremap <leader>gs :G status<CR>
nnoremap <leader>ga :G add .<CR>
nnoremap <leader>gco :G commit -m 
nnoremap <leader>gpus :G push<CR>
nnoremap <leader>gpul :G pull<CR>
nnoremap <leader>grhh :G reset --hard HEAD<CR>
nnoremap <leader>grh :G reset --hard 
nnoremap <leader>glo :G log 

