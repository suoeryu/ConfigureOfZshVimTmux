" vim-commentary {{{
augroup vim_commentary_group
    autocmd!
    autocmd FileType matlab setlocal commentstring=\%\ %s
    autocmd FileType cmake setlocal commentstring=#\ %s
augroup END
" }}}
