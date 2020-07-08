" https://vimawesome.com/plugin/vim-autoformat

let g:autoformat_verbosemode=1

let g:formatdef_astyle = '"astyle --style=attach --pad-oper"'
let g:formatters_cpp = ['astyle']
let g:formatters_h = ['astyle']

nnoremap <Leader><c-l> :Autoformat<CR>
