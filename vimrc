" Install vim-plug if we don't already have it
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Visual Plugins
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Edit Plugins
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Valloric/ListToggle'
Plug 'Shougo/unite.vim'
Plug 'majutsushi/tagbar'
Plug 'sjl/gundo.vim'

Plug 'Lokaltog/vim-easymotion'
Plug 'kshenoy/vim-signature'

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'Raimondi/delimitMate'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround' | Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive' | Plug 'tpope/vim-obsession'

Plug 'Chiel92/vim-autoformat'
Plug 'junegunn/vim-easy-align'
Plug 'godlygeek/tabular'

Plug 'rizzatti/dash.vim'

" Language Special
Plug 'LaTeX-Box-Team/LaTeX-Box', { 'for': 'tex' }
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

" Initialize plugin system
call plug#end()

source $HOME/.vim/conf.d/general.vim
source $HOME/.vim/conf.d/mapping.vim
source $HOME/.vim/conf.d/templates.vim

source $HOME/.vim/conf.d/plugin_ack.vim
source $HOME/.vim/conf.d/plugin_airline.vim
source $HOME/.vim/conf.d/plugin_auto_format.vim
source $HOME/.vim/conf.d/plugin_commentary.vim
source $HOME/.vim/conf.d/plugin_cpp_enhanced_highlight.vim
source $HOME/.vim/conf.d/plugin_delimitmate.vim
source $HOME/.vim/conf.d/plugin_easyalign.vim
source $HOME/.vim/conf.d/plugin_easymotion.vim
source $HOME/.vim/conf.d/plugin_gundo.vim
source $HOME/.vim/conf.d/plugin_latex_box.vim
source $HOME/.vim/conf.d/plugin_list_toggles.vim
source $HOME/.vim/conf.d/plugin_nerdtree.vim
source $HOME/.vim/conf.d/plugin_obsession.vim
source $HOME/.vim/conf.d/plugin_solarized.vim
source $HOME/.vim/conf.d/plugin_tagbar.vim
source $HOME/.vim/conf.d/plugin_ultisnip.vim
source $HOME/.vim/conf.d/plugin_unite.vim
source $HOME/.vim/conf.d/plugin_vim_markdown.vim
source $HOME/.vim/conf.d/plugin_you_complet_me.vim
