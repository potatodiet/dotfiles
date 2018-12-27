call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'

Plug 'rust-lang/rust.vim' , { 'for': 'rust' }
Plug 'racer-rust/vim-racer' , { 'for': 'rust' }

Plug 'elixir-editors/vim-elixir', { 'for': ['elixir', 'eelixir'] }

Plug 'dag/vim-fish', { 'for': 'fish' }

Plug 'eagletmt/neco-ghc', { 'for': 'haskell' }
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'lspitzner/brittany', { 'for': 'haskell' }

Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'Shougo/denite.nvim'
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

" Rust
set hidden
let g:racer_experimental_completer = 1
let g:rustfmt_autosave = 1

" Haskell
let g:necoghc_enable_detailed_browse = 1

" Python
let g:pymode_python = 'python3'
let g:pymode_lint = 0

call neomake#configure#automake('w')
let g:deoplete#enable_at_startup = 1

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'ruby': ['solargraph','stdio']
    \ }
