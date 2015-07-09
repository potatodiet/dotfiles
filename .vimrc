" Use 2 spaces instead of tab.
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Show line numbers.
set invnumber

" Display line width marker
set colorcolumn=80

command W w

" Initialize Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle.
Plugin 'gmarik/Vundle.vim'

" Autocompletion
Plugin 'Valloric/YouCompleteMe'

" Git plugin.
Plugin 'tpope/vim-fugitive'

" Ruby related plugins.
Plugin 'tpope/vim-bundler'
Plugin 'vim-ruby/vim-ruby'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-haml'

" Strips trailing whitespace.
Plugin 'csexton/trailertrash.vim'
autocmd BufWritePre * TrailerTrim

" All Vundle plugins must be above this line.
call vundle#end()
filetype plugin indent on

