" EDITOR SETTINGS {{{
set nocompatible
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

if has("gui_macvim")
    set transparency=5
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
set fileencodings=utf-8,utf-16,chinese,gb18030,latin1

set fileformat=unix     " file mode is unix
set fileformats=unix,dos,mac   " detects unix, dos, mac file formats in that order

set spell spelllang=en_us,cjk

set mouse=a             " enables the mouse in all modes
" Right-click on selection should bring up a menu
set mousemodel=popup_setpos

set foldlevelstart=99   " all folds open by default
" }}}

" PRE/POST PROCESS SETTINGS {{{
augroup SETTING_PREPOSTPROCESS
    autocmd!
    " Automatically delete trailing DOS-returns and whitespace on file open and
    " write.
    autocmd BufRead,BufWritePre,FileWritePre * silent! %s/[\r \t]\+$//
augroup END
" }}}

" FOLD METHOD SETTING {{{
augroup SETTING_FOLDMETHOD
    autocmd!
    autocmd Filetype    vim    setlocal foldmethod=marker
    autocmd FileType    cpp    setlocal foldmethod=syntax
    autocmd FileType    python setlocal foldmethod=indent
    autocmd BufWritePre python setlocal foldmethod=indent
    autocmd FileType    rst setlocal foldmethod=syntax
    autocmd BufWritePre rst setlocal foldmethod=syntax
augroup END
" }}}
