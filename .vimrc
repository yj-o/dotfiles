" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
imap jk <esc>
imap kj <esc>
imap <C-s> <esc>:w<cr>

Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()            " required
filetype plugin indent on    " required


" Map Ctrl-s to write the file
nmap <C-s> :w<cr>

" Use the space key as our leader. Put this near the top of your vimrc
let mapleader = "\<Space>"

set number                      " Display line numbers beside buffer
set hidden                      " Allow buffer change w/o saving
set lazyredraw                  " Don't update while executing macros
set backspace=indent,eol,start  " Sane backspace behavior
set history=1000                " Remember last 1000 commands
set scrolloff=4                 " Keep at least 4 lines below cursor

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =