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

" Syntax.
Plug 'cespare/vim-toml'

" Go support.
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-go', {'do': 'make'}
Plug 'jodosha/vim-godebug'

" Python support.
Plug 'zchee/deoplete-jedi'

" TypeScript support.
Plug 'mhartington/nvim-typescript'
Plug 'HerringtonDarkholme/yats.vim'

" Elixir support.
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'

" Rust support.
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

call plug#end()
