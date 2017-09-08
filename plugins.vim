" Specify a directory for plugins.
call plug#begin('~/.local/share/nvim/plugged')

" Appearance.
Plug 'iCyMind/NeoSolarized'

" Tools.
Plug 'mhinz/vim-grepper'

" Go support.
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-go', {'do': 'make'}
Plug 'jodosha/vim-godebug'

" Python support.
Plug 'zchee/deoplete-jedi'

call plug#end()
