" let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_folding_level = 6

augroup PLUGIN_MARKDOWN
    autocmd!
    autocmd BufNewFile,BufReadPost *.md set filetype=markdown
    autocmd BufNewFile,BufReadPost *.mkd set filetype=markdown
augroup END
