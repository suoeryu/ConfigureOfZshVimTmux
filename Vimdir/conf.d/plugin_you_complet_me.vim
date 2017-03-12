" YouCompleteMe settings {{{
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
" let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_key_list_select_completion   = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_use_ultisnips_completer = 1
"let g:ycm_show_diagnostics_ui = 0
let g:ycm_warning_symbol = '⚠'
let g:ycm_error_symbol = '☠'
let g:ycm_always_populate_location_list = 1
nnoremap <leader>gt :YcmCompleter GoTo<CR>
" }}}
