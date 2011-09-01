" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set hlsearch
set shortmess+=I
set nowrap

filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Command-T'
Bundle 'vcscommand.vim'
Bundle 'Color-Sampler-Pack'

filetype plugin indent on     " required for vundle 

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

