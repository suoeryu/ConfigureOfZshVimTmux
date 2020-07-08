" https://vimawesome.com/plugin/nerdtree-red

let NERDChristmasTree       = 1
"let NERDTreeShowLineNumbers = 1
let NERDTreeShowBookmarks   = 1
"let NERDTreeBookmarksFile = $HOME.'/Dropbox/VimConfiguration/NERDTreeBookmarks'
let NERDTreeIgnore=['Library$', 'Icon', '__pycache__', 'venv']

nnoremap <C-n> :silent! NERDTreeToggle<CR>
