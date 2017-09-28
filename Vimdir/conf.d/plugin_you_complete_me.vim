" Key mapping
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_key_list_select_completion   = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
nnoremap <leader>gt :YcmCompleter GoTo<CR>

"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_python_binary_path = '/usr/local/bin/python2'
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_use_ultisnips_completer = 1
"let g:ycm_show_diagnostics_ui = 0
let g:ycm_warning_symbol = '⚠'
let g:ycm_error_symbol = '☠'
let g:ycm_always_populate_location_list = 1

let g:ycm_disable_for_files_larger_than_kb = 1000
let g:ycm_complete_in_comments = 1
