" let g:airline_theme = 'dark'
let g:airline_theme = 'serene'
" let g:airline_theme = 'tomorrow'

let g:airline_solarized_normal_green = 1
let g:airline_powerline_fonts = 1

" let g:airline_left_sep      = ''
" let g:airline_left_alt_sep  = ''
" let g:airline_right_sep     = ''
" let g:airline_right_alt_sep = ''
let g:airline_left_sep      = '»'
let g:airline_left_alt_sep  = '▶'
let g:airline_right_sep     = '«'
let g:airline_right_alt_sep = '◀'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.crypt      = '🔒'
let g:airline_symbols.branch     = ''
let g:airline_symbols.readonly   = ''
let g:airline_symbols.linenr     = ''
let g:airline_symbols.maxlinenr  = '☰'
let g:airline_symbols.paste      = 'Þ'
let g:airline_symbols.spell      = 'Ꞩ'
let g:airline_symbols.notexists  = '∄'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline#extensions#syntastic#enabled  = 1
let g:airline#extensions#tagbar#enabled     = 1
let g:airline#extensions#bufferline#enabled = 1
