imap jk <esc>
imap kj <esc>
imap <C-s> <esc>:w<cr>

" Map Ctrl-s to write the file
nmap <C-s> :w<cr>

" Use the space key as our leader. Put this near the top of your vimrc
let mapleader = "\<Space>"

set number                      " Display line numbers beside buffer
set nocompatible                " Don't maintain compatibilty with Vi.
set hidden                      " Allow buffer change w/o saving
set lazyredraw                  " Don't update while executing macros
set backspace=indent,eol,start  " Sane backspace behavior
set history=1000                " Remember last 1000 commands
set scrolloff=4                 " Keep at least 4 lines below cursor


