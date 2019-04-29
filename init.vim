" Set explicit python paths.
" These should be virtualenvs set up for neovim.
" If not set, you will encounter problems when working in other virtualenvs.
" https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim
let g:python_host_prog = $HOME . '/.virtualenvs/neovim2/bin/python'
let g:python3_host_prog = $HOME . '/.virtualenvs/neovim3/bin/python'

" Load plugins.
if filereadable(expand('~/.config/nvim/plugins.vim'))
  source ~/.config/nvim/plugins.vim
endif

set number
set background=dark
colorscheme NeoSolarized

set mouse=a         " Enable mouse usage (all modes).
set scrolloff=4     " Show some context at top and bottom of window.
set tabstop=4
set shiftwidth=4
set textwidth=100
set nojoinspaces    " Don't add extra spaces when joining lines.
set nofoldenable    " Disable folding.

" This is easier than hitting escape or Ctrl-C.
inoremap jj <Esc>

" Improved window splitting and navigation.
" For navigation, install https://github.com/christoomey/vim-tmux-navigator
set splitbelow
set splitright

" Reformat a paragraph.
nnoremap <leader>q gqap
nnoremap Q gqap

" Custom leader.
let mapleader = ","

" File browser (netrw).
nnoremap <leader>E :Explore<CR>

" ==============================================================================
" CoC settings.
" Based on sample config at https://github.com/neoclide/coc.nvim

set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" ==============================================================================

" Neomake settings.
let g:neomake_open_list=2
nnoremap <leader>l :Neomake<CR>
nnoremap <leader>L :sign unplace *<CR>

" Grepper config.
nnoremap <leader>g :Grepper<CR>
let g:grepper = {'next_tool': '<leader>g'}

" Quickfix navigation
nmap <C-n> :cnext<CR>
nmap <C-p> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" Location navigation
nmap <C-Down> :lnext<CR>
nmap <C-Up> :lprevious<CR>

" Markdown settings.
let g:markdown_enable_spell_checking = 0

" Elixir settings.
let g:neomake_elixir_enabled_makers = ['mix', 'credo']

" Rust settings.
let g:rustfmt_autosave = 1
