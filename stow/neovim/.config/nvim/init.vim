set foldmethod=marker

"{{{ Plugins
call plug#begin('~/.vim/plugged')

" Neovim theme
Plug 'morhetz/gruvbox'

"{{{ Language specific plugins
Plug 'dag/vim-fish', { 'for': 'fish' }
Plug 'rhysd/vim-crystal', { 'for': 'crystal' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
"}}}

call plug#end()
"}}}

" Use 2 spaces instead of tab
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Show line numbers
set number

" Enable 24-bit colour
set termguicolors

" Set maxwidth of 80
set colorcolumn=81
set wrap

set background=dark
colorscheme gruvbox

cabbrev vsf vert sfind
