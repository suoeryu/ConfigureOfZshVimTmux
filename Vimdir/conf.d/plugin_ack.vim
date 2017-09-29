if executable('ag')
      let g:ackprg = 'ag --vimgrep'
endif

augroup Ack_confing
    " this one is which you're most likely to use?
    autocmd Filetype tex noremap <leader>al :Ack! --tex<space>
    autocmd Filetype text noremap <leader>al :Ack! --type-set text:ext:txt<space>
    autocmd Filetype vim noremap <leader>al :Ack! --vim<space>
    autocmd Filetype make noremap <leader>al :Ack! --make<space>
    autocmd Filetype matlab noremap <leader>al :Ack! --type-set text:ext:m<space>
augroup end

noremap <leader>ag :Ack!<space>
