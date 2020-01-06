" Specify a directory for plugins.
call plug#begin('~/.local/share/nvim/plugged')

" Integration.
Plug 'christoomey/vim-tmux-navigator'

" Appearance.
Plug 'iCyMind/NeoSolarized'

" Tools.
Plug 'neomake/neomake'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Syntax.
Plug 'cespare/vim-toml'
Plug 'gabrielelana/vim-markdown'

" Elm support.
Plug 'andys8/vim-elm-syntax'

" Go support.
Plug 'fatih/vim-go'
Plug 'jodosha/vim-godebug'

" Rust support.
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" Javascript/TypeScript support.
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

" Completion and LSP integration.
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
