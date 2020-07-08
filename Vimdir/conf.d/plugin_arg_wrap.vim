" https://vimawesome.com/plugin/vim-argwrap
augroup ARGWRAP_SETTINGS
    autocmd!
    autocmd FileType   vim   let g:argwrap_line_prefix = '\'
augroup END

nnoremap <silent> <leader>aw :ArgWrap<CR>
