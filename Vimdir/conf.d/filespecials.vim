" GENERAL SETTINGS {{{
augroup GENERAL_SETTINGS
    autocmd!
    autocmd BufRead,BufWritePre,FileWritePre * silent! %s/[\r \t]\+$//
    autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
    autocmd CmdwinEnter * nnoremap <buffer> <CR> <CR>
    autocmd CmdwinEnter * nnoremap <buffer> q    :quit
augroup END
" }}}

" Sh SETTINGS {{{
augroup SH_SETTINGS
    autocmd!
    autocmd BufNewFile *.sh 0r       ~/.vim/templates/tpl.sh
    autocmd Filetype   sh   nnoremap <buffer> <leader>r :exec '!sh' shellescape(@%, 1)<CR>
augroup END
" }}}

" AWK SETTINGS {{{
augroup AWK_SETTINGS
    autocmd!
    autocmd BufNewFile .awk 0r ~/.vim/templates/tpl.awk
augroup END
" }}}

" C & C++ SETTINGS {{{
augroup C_CPP_SETTINGS
    autocmd!
    autocmd BufNewFile *.h   0r ~/.vim/templates/tpl.h
    autocmd BufNewFile *.cpp 0r ~/.vim/templates/tpl.cpp
    autocmd FileType   cpp   setlocal foldmethod=syntax
augroup END
" }}}

" GO SETTINGS {{{
augroup GO_SETTINGS
    autocmd!
    autocmd FileType go setlocal noexpandtab
    autocmd Filetype go nnoremap <buffer> <leader>at :GoAlternate<CR>
    autocmd Filetype go nnoremap <buffer> <leader>b  :GoBuild<CR>
    autocmd Filetype go nnoremap <buffer> <leader>ck :GoErrCheck<CR>
    autocmd Filetype go nnoremap <buffer> <leader>i  :GoImport<Space>
    autocmd Filetype go nnoremap <buffer> <leader>r  :GoRun<CR>
    autocmd Filetype go nnoremap <buffer> <leader>ts :GoTest<CR>
    autocmd Filetype go nnoremap <buffer> <leader>tf :GoTestFunc<CR>
augroup END
" }}}

" Python SETTINGS {{{
augroup PYTHON_SETTINGS
    autocmd!
    autocmd BufNewFile  *.py   0r ~/.vim/templates/tpl.py
    autocmd BufWritePre python setlocal foldmethod=indent
    autocmd FileType    python setlocal foldmethod=indent
    autocmd Filetype    python nnoremap <buffer> <leader>r :exec '!python' shellescape(@%, 1)<CR>
augroup END
" }}}

" Latex Settings {{{
augroup LATEX_SETTINGS
    autocmd!
    " autocmd BufNewFile *.tex        0r ~/.vim/templates/tpl.tex
    autocmd BufNewFile preamble.tex 0r ~/.vim/templates/preamble.tex
    autocmd BufNewFile commands.tex 0r ~/.vim/templates/commands.tex
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
    autocmd BufNewFile *.wiki execute "normal! i= " . substitute(expand("%:t"), ".wiki", "", "") . " =\<esc>"
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

" Dotenv SETTINGS {{{
augroup DOTENV_SETTINGS
    autocmd!
    autocmd BufNewFile .env 0r ~/.vim/templates/tpl.env
augroup END
" }}}
