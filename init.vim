call plug#begin('~/.local/share/nvim/plugged')
Plug 'rust-lang/rust.vim' , { 'for': 'rust' }
Plug 'racer-rust/vim-racer' , { 'for': 'rust' }
Plug 'elixir-editors/vim-elixir', { 'for': ['elixir', 'eelixir'] }
Plug 'vim-syntastic/syntastic'
Plug 'lambdalisue/gina.vim'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'dag/vim-fish', { 'for': 'fish' }

Plug 'eagletmt/neco-ghc', { 'for': 'haskell' }
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
call plug#end()

" Use 2 spaces instead of tab.
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Show line numbers
set number

" Enable 24-bit colour
set termguicolors

" Display line width marker
set colorcolumn=100
set textwidth=100

set background=dark
colorscheme gruvbox

" Rust Autocompletion
set hidden
let g:racer_experimental_completer = 1
let g:deoplete#enable_at_startup = 1

let g:rustfmt_autosave = 1

" Linting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_rust_checkers = ['cargo']

" Haskell
let g:necoghc_enable_detailed_browse = 1
