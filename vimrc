" Vim-Plug {{{1
" Install vim-plug if we don't already have it
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Colorschemes & Statusline {{{2
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" }}}2

" Navigation & Finder & Motion {{{2
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } | Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'Valloric/ListToggle'
Plug 'kshenoy/vim-signature'
Plug 'easymotion/vim-easymotion'
" }}}2

" Code completion & Snippets {{{2
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --go-completer' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'vim-syntastic/syntastic'
" }}}2

" Edit {{{2
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdcommenter'
Plug 'wellle/targets.vim'
Plug 'sjl/gundo.vim'
" }}}

" Formatting {{{2
Plug 'Chiel92/vim-autoformat'
Plug 'junegunn/vim-easy-align'
Plug 'godlygeek/tabular'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'FooSoft/vim-argwrap'
" }}}2

" Language Support {{{2
" Plug 'LaTeX-Box-Team/LaTeX-Box', { 'for': 'tex' }
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'css' }
Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'fatih/vim-go', { 'for': 'go' }
" Plug 'pearofducks/ansible-vim', { 'do': 'cd ./UltiSnips; python2 generate.py' }
" }}}2

" Misc {{{2
Plug 'xolox/vim-notes' | Plug 'xolox/vim-misc'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'rizzatti/dash.vim'
" Plug 'mattn/gist-vim' | Plug 'mattn/webapi-vim'
" }}}2

" Initialize plugin system
call plug#end()
" }}}1

" Setting files {{{1
" Basic {{{2
source $HOME/.vim/conf.d/general.vim
source $HOME/.vim/conf.d/mapping.vim
source $HOME/.vim/conf.d/filespecials.vim
source $HOME/.vim/conf.d/plugin_solarized.vim
" }}}2
" Plugins {{{2
source $HOME/.vim/conf.d/plugin_ack.vim
source $HOME/.vim/conf.d/plugin_airline.vim
source $HOME/.vim/conf.d/plugin_arg_wrap.vim
source $HOME/.vim/conf.d/plugin_auto_format.vim
source $HOME/.vim/conf.d/plugin_auto_pairs.vim
source $HOME/.vim/conf.d/plugin_cpp_enhanced_highlight.vim
source $HOME/.vim/conf.d/plugin_ctrlp.vim
source $HOME/.vim/conf.d/plugin_easyalign.vim
source $HOME/.vim/conf.d/plugin_easymotion.vim
" source $HOME/.vim/conf.d/plugin_gist.vim
source $HOME/.vim/conf.d/plugin_gundo.vim
source $HOME/.vim/conf.d/plugin_list_toggles.vim
source $HOME/.vim/conf.d/plugin_nerd_commenter.vim
source $HOME/.vim/conf.d/plugin_nerdtree.vim
source $HOME/.vim/conf.d/plugin_obsession.vim
source $HOME/.vim/conf.d/plugin_syntastic.vim
source $HOME/.vim/conf.d/plugin_tagbar.vim
source $HOME/.vim/conf.d/plugin_ultisnip.vim
source $HOME/.vim/conf.d/plugin_vim_markdown.vim
source $HOME/.vim/conf.d/plugin_vim_notes.vim
source $HOME/.vim/conf.d/plugin_vimtex.vim
source $HOME/.vim/conf.d/plugin_you_complete_me.vim
" }}}2
" }}}1
