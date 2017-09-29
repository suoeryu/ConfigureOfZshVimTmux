augroup PLUGIN_COMMENTARY
    autocmd!
    autocmd FileType matlab setlocal commentstring=\%\ %s
    autocmd FileType cmake setlocal commentstring=#\ %s
augroup END
