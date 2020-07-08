" https://vimawesome.com/plugin/obsession-vim
set statusline+=%{ObsessionStatus()}

augroup PLUGIN_OBSESSION
        autocmd!
        autocmd VimEnter * nested
        \ if !argc() && empty(v:this_session) && filereadable('Session.vim') |
        \   source Session.vim |
        \ endif
augroup END
