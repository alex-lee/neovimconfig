" Specify a directory for plugins.
call plug#begin('~/.local/share/nvim/plugged')

" Integration.
Plug 'christoomey/vim-tmux-navigator'

" Appearance.
Plug 'iCyMind/NeoSolarized'

" Tools.
Plug 'editorconfig/editorconfig-vim'
Plug 'mhinz/vim-grepper'
Plug 'neomake/neomake'
Plug 'tpope/vim-fugitive'

" Syntax.
Plug 'cespare/vim-toml'
Plug 'gabrielelana/vim-markdown'

" Go support.
Plug 'fatih/vim-go'
Plug 'jodosha/vim-godebug'

" Rust support.
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

call plug#end()
