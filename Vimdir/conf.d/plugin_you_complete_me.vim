" https://vimawesome.com/plugin/youcompleteme

let g:ycm_confirm_extra_conf = 0

let g:ycm_python_binary_path = 'python'
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_use_ultisnips_completer = 1

let g:ycm_error_symbol = '☠'
let g:ycm_warning_symbol = '⚠'

let g:ycm_disable_for_files_larger_than_kb = 0
let g:ycm_complete_in_comments = 1

let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_key_list_select_completion   = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_key_list_stop_completion = ['<C-y>']
" let g:ycm_key_detailed_diagnostics = '<leader>d'
let g:ycm_key_detailed_diagnostics = ''

nnoremap <leader>y :YcmCompleter<Space>
" nnoremap <leader>d :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>d :YcmDiags<CR>
nnoremap <leader>s :YcmShowDetailedDiagnostic<CR>
nnoremap <leader>gt :YcmCompleter GoTo<CR>
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>f :YcmCompleter FixIt<CR>

