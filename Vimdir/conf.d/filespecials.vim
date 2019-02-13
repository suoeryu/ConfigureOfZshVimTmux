" GENERAL SETTINGS {{{
augroup GENERAL_SETTINGS
    autocmd!
    autocmd BufRead,BufWritePre,FileWritePre * silent! %s/[\r \t]\+$//
    " autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
    " autocmd BufReadPost location nnoremap <buffer> <CR> <CR>
    " autocmd CmdwinEnter * nnoremap <buffer> <CR> <CR>
    autocmd CmdwinEnter * nnoremap <buffer> q    :quit<CR>
    autocmd FileType help noremap  <buffer> q    :quit<CR>
augroup END
" }}}

" C & C++ SETTINGS {{{
augroup C_CPP_SETTINGS
    autocmd!
    autocmd FileType   cpp   setlocal foldmethod=syntax
augroup END
" }}}

" GO SETTINGS {{{
augroup GO_SETTINGS
    autocmd!
    autocmd FileType go setlocal noexpandtab
    autocmd FileType go setlocal foldmethod=syntax
    autocmd Filetype go nnoremap <buffer> <leader>at :GoAlternate<CR>
    autocmd Filetype go nnoremap <buffer> <leader>b  :GoBuild<CR>
    autocmd Filetype go nnoremap <buffer> <leader>ck :GoErrCheck<CR>
    autocmd Filetype go nnoremap <buffer> <leader>i  :GoImport<Space>
    autocmd Filetype go nnoremap <buffer> <leader>r  :GoRun<CR>
    autocmd Filetype go nnoremap <buffer> <leader>ts :GoTest -v<CR>
    autocmd Filetype go nnoremap <buffer> <leader>tf :GoTestFunc<CR>
augroup END
" }}}

" Python SETTINGS {{{
augroup PYTHON_SETTINGS
    autocmd!
    autocmd BufWritePre python setlocal foldmethod=indent
    autocmd FileType    python setlocal foldmethod=indent
    autocmd Filetype    python nnoremap <buffer> <leader>r :exec '!python' shellescape(@%, 1)<CR>
    autocmd BufNewFile,BufReadPost pytest*.py nnoremap <buffer> <leader>r :!pytest <c-r>=substitute(expand('%:p'), join([getcwd(), '/'], ''), '', '')<CR>
augroup END
" }}}

" Vim SETTINGS {{{
augroup VIM_SETTINGS
    autocmd!
    autocmd Filetype    vim    setlocal foldmethod=marker
augroup END
" }}}

" Vimwiki SETTINGS {{{
augroup VIMWIKI_SETTINGS
    autocmd!
    autocmd Filetype  vimwiki nmap <buffer> -- <Plug>VimwikiRemoveHeaderLevel
    autocmd Filetype  vimwiki setlocal autochdir
    " autocmd BufEnter * silent! lcd %:p:h
    " autocmd BufNewFile *.wiki execute "normal! i= " . substitute(expand("%:t"), ".wiki", "", "") . " =\<esc>"
augroup END
" }}}

" Markdown SETTINGS {{{
augroup MARKDOWN_SETTINGS
    autocmd!
    autocmd BufNewFile,BufReadPost *.md  set filetype=markdown
    autocmd BufNewFile,BufReadPost *.mkd set filetype=markdown
augroup END
" }}}

" Rst SETTINGS {{{
augroup RST_SETTINGS
    autocmd!
    autocmd FileType    rst setlocal foldmethod=syntax
    autocmd BufWritePre rst setlocal foldmethod=syntax
augroup END
" }}}

" Dockerfile SETTINGS {{{
augroup DOCKERFILE_SETTINGS
    autocmd!
    autocmd BufNewFile,BufReadPost Dockerfile* set filetype=Dockerfile
augroup END
" }}}

" YAML SETTINGS {{{
augroup YAML_SETTINGS
    autocmd!
    autocmd Filetype yaml setlocal ts=2 sw=2 softtabstop=2 expandtab
augroup END
" }}}
