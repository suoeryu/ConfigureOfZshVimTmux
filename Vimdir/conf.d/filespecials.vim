" GENERAL SETTINGS {{{
augroup GENERAL_SETTINGS
    autocmd!
    autocmd BufRead,BufWritePre,FileWritePre * silent! %s/[\r \t]\+$//
augroup END
" }}}

" C & C++ SETTINGS {{{
augroup C_CPP_SETTINGS
    autocmd!
    autocmd BufNewFile *.h   0r ~/.vim/templates/tlp.h
    autocmd BufNewFile *.cpp 0r ~/.vim/templates/tlp.cpp
    autocmd FileType   cpp   setlocal foldmethod=syntax
augroup END
" }}}

" Python SETTINGS {{{
augroup PYTHON_SETTINGS
    autocmd!
    autocmd BufNewFile  *.py   0r ~/.vim/templates/tlp.py
    autocmd BufWritePre python setlocal foldmethod=indent
    autocmd FileType    python setlocal foldmethod=indent
    autocmd Filetype    python nnoremap <buffer> <F12> :exec '!python' shellescape(@%, 1)<CR>
augroup end
" }}}

" Vim SETTINGS {{{
augroup VIM_SETTINGS
    autocmd!
    autocmd Filetype    vim    setlocal foldmethod=marker
augroup end
" }}}

" Rst SETTINGS {{{
augroup RST_SETTINGS
    autocmd!
    autocmd FileType    rst setlocal foldmethod=syntax
    autocmd BufWritePre rst setlocal foldmethod=syntax
augroup end
" }}}

" Latex Settings {{{
augroup LATEX_SETTINGS
    autocmd!
    " autocmd BufNewFile makefile     0r ~/.vim/templates/tlp.makefile
    " autocmd BufNewFile *.tex        0r ~/.vim/templates/tlp.tex
    autocmd BufNewFile preamble.tex 0r ~/.vim/templates/preamble.tex
    autocmd BufNewFile commands.tex 0r ~/.vim/templates/commands.tex
augroup end
" }}}
