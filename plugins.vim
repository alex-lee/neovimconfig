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

call plug#end()
