let mapleader=" "
let maplocalleader = "\\"

" Go to home and end using capitalized directions
noremap H 0
noremap L $

" this makes vim's regex engine "not stupid"
" " see :h magic
nnoremap / /\v
vnoremap / /\v

" CTRL-U and CTRL-W in insert mode cannot be undone.  Use CTRL-G u to first
" " break undo, so that we can undo those changes after inserting a line
" break.
" " For more info, see:
" http://vim.wikia.com/wiki/Recover_from_accidental_Ctrl-U
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>
inoremap jk <ESC>

" Swap implementations of ` and ' jump to markers
" By default, ' jumps to the marked line, ` jumps to the marked line and
" column, so swap them
nnoremap ' `
nnoremap ` '

" key bindings for quickly moving between windows
" h left, l right, k up, j down
noremap <leader>h <c-w>h
noremap <leader>l <c-w>l
noremap <leader>k <c-w>k
noremap <leader>j <c-w>j

nnoremap <silent> <leader>n :Ex<CR>
nnoremap <silent> <C-l> :<C-u> nohlsearch<CR><C-l>

nnoremap <silent> [a :previous<CR>
nnoremap <silent> ]a :next<CR>
nnoremap <silent> [A :first<CR>
nnoremap <silent> ]A :last<CR>

" nnoremap <silent> [b :bprevious<CR>
" nnoremap <silent> ]b :bnext<CR>
" nnoremap <silent> [B :bfirst<CR>
" nnoremap <silent> ]B :blast<CR>

nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>
nnoremap <silent> [Q :cfirst<CR>
nnoremap <silent> ]Q :clast<CR>

nnoremap <silent> [l :lprevious<CR>
nnoremap <silent> [L :lfirst<CR>
nnoremap <silent> ]l :lnext<CR>
nnoremap <silent> ]L :llast<CR>

nnoremap <leader>gf :e <cfile><cr>
nnoremap <C-n> :silent! Explore<CR>


" The alt (option) key on macs now behaves like the 'meta' key. This means we
" can now use <m-x> or similar as maps. This is buffer local, and it can easily
" be turned off when necessary (for instance, when we want to input special
" characters) with :set nomacmeta.
if has("gui_macvim")
    set macmeta
    set winaltkeys=no       " turns of the Alt key bindings to the gui menu
    noremap <silent><m-1> :tabn 1<cr>
    noremap <silent><m-2> :tabn 2<cr>
    noremap <silent><m-3> :tabn 3<cr>
    noremap <silent><m-4> :tabn 4<cr>
    noremap <silent><m-5> :tabn 5<cr>
    noremap <silent><m-6> :tabn 6<cr>
    noremap <silent><m-7> :tabn 7<cr>
    noremap <silent><m-8> :tabn 8<cr>
    noremap <silent><m-9> :tabn 9<cr>
    noremap <silent><m-0> :tabn 10<cr>
endif
