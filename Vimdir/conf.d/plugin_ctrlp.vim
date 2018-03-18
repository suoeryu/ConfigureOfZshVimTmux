set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = {
    \'dir': '\v[\/]\.(git|hg|svn)$',
    \'file': '\v\.(exe|so|dll)$',
    \'link': 'some_bad_symbolic_links'
\}

let g:ctrlp_open_new_file = 'r'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

nnoremap <silent> <C-u> :CtrlPBuffer<CR>
