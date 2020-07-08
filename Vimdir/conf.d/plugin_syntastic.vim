" https://vimawesome.com/plugin/syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 2
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 0

let g:syntastic_error_symbol         = '☠'
let g:syntastic_warning_symbol       = '⚠'
let g:syntastic_style_error_symbol   = '✗'
let g:syntastic_style_warning_symbol = '✗'

let g:syntastic_always_populate_loc_list = 1

let g:syntastic_filetype_map = {"plaintex": "tex"}
let g:syntastic_mode_map = {
    \"mode": "active",
    \"active_filetypes": [],
    \"passive_filetypes": ["tex"]
\}

let g:syntastic_go_checkers=['go']

nnoremap <localleader>d :SyntasticCheck<CR>
nnoremap <localleader>s :Errors<CR>
