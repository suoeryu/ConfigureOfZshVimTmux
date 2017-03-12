" TEMPLATES SETTINGS{{{
augroup eryu_templates
    autocmd!
    " autocmd BufNewFile makefile     0r ~/.vim/templates/tlp.makefile
    autocmd BufNewFile *.cpp        0r ~/.vim/templates/tlp.cpp
    autocmd BufNewFile *.h          0r ~/.vim/templates/tlp.h
    autocmd BufNewFile *.py         0r ~/.vim/templates/tlp.py
    " autocmd BufNewFile *.tex        0r ~/.vim/templates/tlp.tex
    autocmd BufNewFile preamble.tex 0r ~/.vim/templates/preamble.tex
    autocmd BufNewFile commands.tex 0r ~/.vim/templates/commands.tex
augroup END
" }}}
