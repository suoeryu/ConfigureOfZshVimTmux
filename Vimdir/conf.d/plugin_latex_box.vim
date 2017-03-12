" Latex Box settings {{{
let g:tex_flavor='latex'
let g:LatexBox_Folding = 1
let g:LatexBox_latexmk_options = "-pdflatex='xelatex -synctex=1 --src-specials \%O \%S'"
map <silent> <LocalLeader>ls :silent
            \ !/Applications/Skim.app/Contents/SharedSupport/displayline
            \ <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>"
            \ "%:p" <CR>
" map <silent> <LocalLeader>ls :silent !open "<C-R>=LatexBox_GetOutputFile()<CR>" <CR>
" }}}
