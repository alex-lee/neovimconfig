" Go settings.
" See https://github.com/fatih/vim-go-tutorial for more options.

nmap <leader>cr <Plug>(go-callers)
nmap <leader>ce <Plug>(go-callees)
nmap <leader>l  <Plug>(go-metalinter)
nmap <leader>e  :GoErrCheck<CR>
nmap <leader>v  <Plug>(go-vet)
nmap <leader>gi <Plug>(go-imports)
nmap <leader>i  <Plug>(go-info)
nmap <leader>ta <Plug>(go-test)
nmap <leader>tf <Plug>(go-test-func)

let g:go_metalinter_deadline = "10s"
let g:go_metalinter_disabled = ['errcheck']

" Disable :GoDef short cut. Using Coc instead.
let g:go_def_mapping_enabled = 0
