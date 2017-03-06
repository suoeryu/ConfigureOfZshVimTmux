" Vundle settings {{{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'kshenoy/vim-signature'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Shougo/unite.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/ListToggle'
Plugin 'sjl/gundo.vim'
" Plugin 'xolox/vim-session'
Plugin 'tpope/vim-obsession'

"Plugin 'scrooloose/syntastic'
Plugin 'Chiel92/vim-autoformat'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tpope/vim-commentary'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'junegunn/vim-easy-align'
Plugin 'godlygeek/tabular'

Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'tpope/vim-fugitive'

Plugin 'vimwiki/vimwiki'
"Plugin 'vim-latex/vim-latex'
Plugin 'LaTeX-Box-Team/LaTeX-Box'

call vundle#end()            " required
filetype plugin indent on     " required
" }}}

" EDITOR SETTINGS {{{
set timeoutlen=1000 ttimeoutlen=0

set ignorecase          " case insensitive searching
set smartcase           " but become case sensitive if you type uppercase
" characters

set autoindent          " on new lines, match indent of previous line
set copyindent          " copy the previous indentation on autoindenting
set cindent             " smart indenting for c-like code
set cino=b1,g0,N-s,t0,(0,W4  " see :h cinoptions-values
" set smarttab            " smart tab handling for indenting
" set magic               " change the way backslashes are used in search
" patterns
set backspace=2             " make backspace work like most other apps
" set bs=indent,eol,start   " Allow backspacing over everything in insert mode

set clipboard=unnamed

set nowritebackup
"
set tabstop=4           " number of spaces a tab counts for
set shiftwidth=4        " spaces for autoindents
set softtabstop=4
" set shiftround          " makes indenting a multiple of shiftwidth
set expandtab           " turn a tab into spaces
set laststatus=2        " the statusline is now always shown

set hidden              " allows making buffers hidden even with unsaved changes
set viminfo='20,\"500   " remember copy registers after quitting in the .viminfo
                        " file -- 20 jump links, regs up to 500 lines'
set history=1000        " remember more commands and search history
set undolevels=1000     " use many levels of undo

set autoread            " auto read when a file is changed from the outside

set swapfile
set dir=~/.vimbackups
set backup
set backupext=.bak
set backupdir=~/.vimbackups
set undofile            " stores undo state even when files are closed (in undodir)
set undodir=~/.vimbackups

set conceallevel=1

set cm=blowfish2

" options for formatting text; see :h formatoptions
set formatoptions=tcroqnj

" }}}

" DISPLAY SETTINGS {{{
if has('gui_running')
    set guifont=Menlo\ for\ Powerline:h15
else
    if exists('$TMUX')
        let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
        let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    else
        let &t_SI = "\<Esc>]50;CursorShape=1\x7"
        let &t_EI = "\<Esc>]50;CursorShape=0\x7"
    endif
endif

set scrolloff=2         " 2 lines above/below cursor when scrolling
set showmatch           " show matching bracket (briefly jump)
set matchtime=2         " reduces matching paren blink time from the 5[00]ms def
set showmode            " show mode in status bar (insert/replace/...)
set showcmd             " show typed command in status bar
set cursorline          " highlights the current line
set cursorcolumn

" When you type the first tab, it will complete as much as possible, the
" second
" tab hit will provide a list, the third and subsequent tabs will cycle
" through
" completion options so you can complete the file without further keys
set wildmenu            " completion with menu
set wildmode=longest,list,full

" This changes the default display of tab and CR chars in list mode
set list
set listchars=tab:»·,trail:·,eol:¬

" The "longest" option makes completion insert the longest prefix of all
" the possible matches; see :h completeopt
set completeopt=menu,menuone,longest
set switchbuf=useopen,usetab

set hlsearch                    "查找高亮
set incsearch

" set columns=120 lines=45    "设置窗口大小
set number                 "显示行号
" set relativenumber          "显示相对行号

" With this, the gui (gvim and macvim) now doesn't have the toolbar, the left
" and right scrollbars and the menu.
set guioptions-=T
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=M

set colorcolumn=81

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,chinese,gb18030,latin1

set fileformat=unix     " file mode is unix
set fileformats=unix,dos,mac   " detects unix, dos, mac file formats in that order

set spell spelllang=en_us,cjk

set mouse=a             " enables the mouse in all modes
" Right-click on selection should bring up a menu
set mousemodel=popup_setpos

set foldlevelstart=99   " all folds open by default
" }}}

" MAPPING SETTINGS {{{
let mapleader=" "
let maplocalleader = "-"

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

nnoremap <silent> <C-l> :<C-u> nohlsearch<CR><C-l>

nnoremap <silent> [a :previous<CR>
nnoremap <silent> [A :first<CR>
nnoremap <silent> ]a :next<CR>
nnoremap <silent> ]A :last<CR>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> ]B :blast<CR>
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> [Q :cfirst<CR>
nnoremap <silent> ]q :cnext<CR>
nnoremap <silent> ]Q :clast<CR>

" The alt (option) key on macs now behaves like the 'meta' key. This means we
" can now use <m-x> or similar as maps. This is buffer local, and it can easily
" be turned off when necessary (for instance, when we want to input special
" characters) with :set nomacmeta.
if has("gui_macvim")
    set transparency=5
    set macmeta
endif

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
" }}}

" TEMPLATES SETTINGS{{{
augroup eryu_templates
    autocmd!
    autocmd BufNewFile makefile     0r ~/.vim/templates/tlp.makefile
    autocmd BufNewFile *.cpp        0r ~/.vim/templates/tlp.cpp
    autocmd BufNewFile *.h          0r ~/.vim/templates/tlp.h
    autocmd BufNewFile *.py         0r ~/.vim/templates/tlp.py
    autocmd BufNewFile *.tex        0r ~/.vim/templates/tlp.tex
    autocmd BufNewFile preamble.tex 0r ~/.vim/templates/preamble.tex
    autocmd BufNewFile commands.tex 0r ~/.vim/templates/commands.tex
augroup END
" }}}

" FOLD METHOD SETTING {{{
augroup eryu_foldmethod
    autocmd!
    autocmd Filetype    vim    setlocal foldmethod=marker
    autocmd FileType    cpp    setlocal foldmethod=syntax
    autocmd FileType    python setlocal foldmethod=indent
    autocmd BufWritePre python setlocal foldmethod=indent
    autocmd FileType    rst setlocal foldmethod=syntax
    autocmd BufWritePre rst setlocal foldmethod=syntax
augroup END
" }}}

" AUTOCOMMAND SETTINGS {{{
augroup General
    autocmd!
    " autocmd CompleteDone * pclose
    " Automatically delete trailing DOS-returns and whitespace on file open and
    " write.
    autocmd BufRead,BufWritePre,FileWritePre * silent! %s/[\r \t]\+$//
augroup END
augroup filetype_markdown
    autocmd!
    autocmd BufNewFile,BufReadPost *.md set filetype=markdown
augroup END
" }}}

" Solarized settings {{{
let g:solarized_termcolors=256
syntax enable
set background=dark     " enable for dark terminals
colorscheme solarized   " sets the colorscheme
" if has('gui_running')
"     set background=dark
" else
"     set background=light
" endif
"}}}

" Airline settings {{{

" let g:airline_theme = 'dark'
let g:airline_theme = 'serene'
" let g:airline_theme = 'tomorrow'

let g:airline_solarized_normal_green = 1
let g:airline_powerline_fonts = 1

" let g:airline_left_sep      = ''
" let g:airline_left_alt_sep  = ''
" let g:airline_right_sep     = ''
" let g:airline_right_alt_sep = ''
let g:airline_left_sep = '»'
let g:airline_left_alt_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_alt_sep = '◀'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.branch     = ''
let g:airline_symbols.readonly   = ''
let g:airline_symbols.linenr     = ''
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.paste      = 'Þ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled    = 1
let g:airline#extensions#bufferline#enabled = 1
" }}}

" EasyMotion settings {{{
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
let g:EasyMotion_leader_key = '<Leader>e'
" }}}

" Unite settings {{{
nnoremap <silent> <Leader>um :Unite<CR>
nnoremap <silent> <Leader>ub :Unite buffer<CR>
nnoremap <silent> <Leader>uf :Unite file<CR>
nnoremap <silent> <Leader>ua :Unite -start-insert file_rec<CR>
nnoremap <silent> <Leader>ur :Unite register<CR>
nnoremap <silent> <Leader>ut :Unite -start-insert tab<CR>
" }}}

" NERD Tree settings {{{
let NERDChristmasTree       = 1
"let NERDTreeShowLineNumbers = 1
let NERDTreeShowBookmarks   = 1
"let NERDTreeBookmarksFile = $HOME.'/Dropbox/VimConfiguration/NERDTreeBookmarks'
let NERDTreeIgnore=['Library$', 'Icon']
nnoremap <C-n> :silent! NERDTreeToggle<CR>
" }}}

" {{{ Tagbar settings
let g:tagbar_left      = 1
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
let g:tagbar_sort      = 0
" nnoremap <silent> <leader>tl :Tagbar<CR>
nnoremap <silent> <F2> :Tagbar<CR>
" }}}

" ListToggles settings {{{
let g:lt_location_list_toggle_map = '<F3>'
let g:lt_quickfix_list_toggle_map = '<F4>'
" }}}

" Gundo Settings {{{
nnoremap <F5> :GundoToggle<CR>
let g:gundo_width=80
" }}}

" Obsession Settings {{{
set statusline+=%{ObsessionStatus()}
" }}}

" {{{ Syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list            = 1
"let g:syntastic_check_on_open            = 1
"let g:syntastic_check_on_wq              = 0

let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_error_symbol   = '☠'
""let g:syntastic_error_symbol   = '☢'
"let g:syntastic_warning_symbol = '⚠'
" }}}

" vim-cpp-enhanced-highlight settings {{{
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
" let g:cpp_experimental_template_highlight = 1
" }}}

" Auto Format {{{
let g:formatdef_astyle = '"astyle --style=attach --pad-oper"'
let g:formatters_cpp = ['astyle']
let g:formatters_h = ['astyle']
" }}}

" vim-commentary {{{
" autocmd FileType apache setlocal commentstring=#\ %s
" }}}

" delimitmate settings {{{
let delimitMate_expand_cr    = 2
let delimitMate_expand_space = 1
imap <buffer><expr> <S-Tab> delimitMate#JumpAny()
" }}}

" Easy Align settings {{{
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
" }}}

" YouCompleteMe settings {{{
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
" let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_key_list_select_completion   = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_use_ultisnips_completer = 1
"let g:ycm_show_diagnostics_ui = 0
let g:ycm_warning_symbol = '⚠'
let g:ycm_error_symbol = '☠'
let g:ycm_always_populate_location_list = 1
nnoremap <leader>gt :YcmCompleter GoTo<CR>
" }}}

" UltiSnips settings {{{
let g:UltiSnipsUsePythonVersion    = 2
let g:UltiSnipsSnippetDirectories  = ["UltiSnips"]
let g:UltiSnipsExpandTrigger       = "<C-j>"
let g:UltiSnipsListSnippets        = "<C-u>"
let g:UltiSnipsJumpForwardTrigger  = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
" }}}

" VimWiki settings {{{
augroup filetype_wiki
    autocmd!
    "autocmd Filetype vimwiki setlocal foldmethod=syntax
    "autocmd BufWritePre vimwiki setlocal foldmethod=syntax
    autocmd BufNewFile *.wiki execute "normal! i= " . split(expand("%:t"),'\.')[0] . " =\<esc>"
augroup END

let g:vimwiki_camel_case = 0
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_CJK_length = 1
let g:vimwiki_folding = 'expr'
let g:vimwiki_html_header_numbering = 2

let wiki_path = '~/Documents/Vimwiki/'

let wiki_home = {}
let wiki_home.path = wiki_path . 'Home'
let wiki_home.syntax = 'markdown'
let wiki_home.ext = '.mkd'

let g:vimwiki_list = [wiki_home]
" }}}

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
