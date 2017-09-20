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

" Visual Plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'octol/vim-cpp-enhanced-highlight'

" Edit Plugins
Plugin 'Raimondi/delimitMate'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'

" File Operate Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim'

" Move In/Between Files
Plugin 'Lokaltog/vim-easymotion'
Plugin 'majutsushi/tagbar'
Plugin 'Shougo/unite.vim'
Plugin 'mileszs/ack.vim'

" Format
Plugin 'Chiel92/vim-autoformat'
Plugin 'junegunn/vim-easy-align'
Plugin 'godlygeek/tabular'

" Development Utils
"Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'plasticboy/vim-markdown'

" Other
Plugin 'tpope/vim-obsession'
Plugin 'Valloric/ListToggle'
Plugin 'kshenoy/vim-signature'
Plugin 'rizzatti/dash.vim'
Plugin 'LanguageTool'

call vundle#end()            " required
filetype plugin indent on     " required
" }}}

source $HOME/.vim/conf.d/general.vim
source $HOME/.vim/conf.d/mapping.vim
source $HOME/.vim/conf.d/templates.vim

" Visual Plugins {{{
source $HOME/.vim/conf.d/plugin_solarized.vim
source $HOME/.vim/conf.d/plugin_airline.vim
source $HOME/.vim/conf.d/plugin_cpp_enhanced_highlight.vim
" }}}

" Edit Plugins {{{
source $HOME/.vim/conf.d/plugin_delimitmate.vim
source $HOME/.vim/conf.d/plugin_ultisnip.vim
" }}}

" File Operate Plugins {{{
source $HOME/.vim/conf.d/plugin_nerdtree.vim
source $HOME/.vim/conf.d/plugin_gundo.vim
" }}}

" Move in/between Files Plugins {{{
source $HOME/.vim/conf.d/plugin_easymotion.vim
source $HOME/.vim/conf.d/plugin_tagbar.vim
source $HOME/.vim/conf.d/plugin_unite.vim
source $HOME/.vim/conf.d/plugin_ack.vim
" }}}

" Format Plugins {{{
source $HOME/.vim/conf.d/plugin_auto_format.vim
source $HOME/.vim/conf.d/plugin_easyalign.vim
" }}}

" Development Plugins {{{
"source $HOME/.vim/conf.d/plugin_syntastic.vim
source $HOME/.vim/conf.d/plugin_you_complet_me.vim
source $HOME/.vim/conf.d/plugin_latex_box.vim
source $HOME/.vim/conf.d/plugin_commentary.vim
source $HOME/.vim/conf.d/plugin_vim_markdown.vim
" }}}

" Other Plugins {{{
source $HOME/.vim/conf.d/plugin_obsession.vim
source $HOME/.vim/conf.d/plugin_list_toggles.vim
source $HOME/.vim/conf.d/plugin_languagetool.vim
" }}}
