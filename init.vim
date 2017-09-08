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

" Custom leader.
let mapleader = ","

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Grepper config.
nnoremap <leader>g :Grepper<CR>
let g:grepper = {'next_tool': '<leader>g'}

" Quickfix navigation
nmap <C-n> :cnext<CR>
nmap <C-p> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" Go settings.
" See https://github.com/fatih/vim-go-tutorial for more options.
au FileType go nmap <leader>cr <Plug>(go-callers)
au FileType go nmap <leader>ce <Plug>(go-callees)
au FileType go nmap <leader>l  <Plug>(go-metalinter)
au FileType go nmap <leader>gi <Plug>(go-imports)
au FileType go nmap <leader>i  <Plug>(go-info)
au FileType go nmap <leader>ta <Plug>(go-test)
au FileType go nmap <leader>tf <Plug>(go-test-func)
let g:go_metalinter_deadline = "10s"
