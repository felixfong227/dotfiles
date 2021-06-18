"*****************************************************************************
"" Plug install packages
"*****************************************************************************
" Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-signify'
Plug 'vim-scripts/grep.vim'
Plug 'vim-scripts/CSApprox'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'dense-analysis/ale'
Plug 'Yggdroot/indentLine'
" Plug 'editor-bootstrap/vim-bootstrap-updater'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
" Plug 'tomasr/molokai'
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" if isdirectory('/usr/local/opt/fzf')
"     Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
" else
"     Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
"     Plug 'junegunn/fzf.vim'
" endif

let g:make = 'gmake'
if exists('make')
    let g:make = 'make'
endif
Plug 'Shougo/vimproc.vim', {'do': g:make}

"" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

"" Snippets
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" c
"Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
"Plug 'ludwig/split-manpage.vim'


" go
"" Go Lang Bundle
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}


" html
"" HTML Bundle
Plug 'hail2u/vim-css3-syntax'
Plug 'gko/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'


" javascript
"" Javascript Bundle
Plug 'jelera/vim-javascript-syntax'


" lua
"" Lua Bundle
Plug 'xolox/vim-lua-ftplugin'
Plug 'xolox/vim-lua-inspect'


" php
"" PHP Bundle
"Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install --no-dev -o'}
"Plug 'stephpy/vim-php-cs-fixer'


" rust
" Vim racer
"Plug 'racer-rust/vim-racer'

" Rust.vim
"Plug 'rust-lang/rust.vim'

" Async.vim
Plug 'prabirshrestha/async.vim'

" Vim lsp
Plug 'prabirshrestha/vim-lsp'

" Asyncomplete.vim
Plug 'prabirshrestha/asyncomplete.vim'

" Asyncomplete lsp.vim
Plug 'prabirshrestha/asyncomplete-lsp.vim'


" typescript
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Nerd tree
Plug 'preservim/nerdtree'
map <C-e> :NERDTreeToggle<CR>

" Auto format
Plug 'Chiel92/vim-autoformat'

Plug 'psliwka/vim-smoothie'

" control P
" Plug 'ctrlpvim/ctrlp.vim'

" Vim Commander
" Plug 'preservim/nerdcommenter'

" Editorconfig
Plug 'editorconfig/editorconfig-vim'

" Gruvbox theme
Plug 'morhetz/gruvbox'

" Svelte
Plug 'leafOfTree/vim-svelte-plugin'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update


" Vim-rooter
Plug 'rendon/vim-rooter'
