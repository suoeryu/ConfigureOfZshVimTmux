noremap <leader>ag :Ack!<space>
if executable('ag')
      let g:ackprg = 'ag --vimgrep'
endif

augroup Ack_confing
    " this one is which you're most likely to use?
    autocmd Filetype tex noremap <leader>gl :Ack! --tex<space>
    autocmd Filetype text noremap <leader>gl :Ack! --type-set text:ext:txt<space>
    autocmd Filetype vim noremap <leader>gl :Ack! --vim<space>
    autocmd Filetype make noremap <leader>gl :Ack! --make<space>
    autocmd Filetype matlab noremap <leader>gl :Ack! --type-set text:ext:m<space>
augroup end
