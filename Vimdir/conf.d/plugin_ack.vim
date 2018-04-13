if executable('ag')
    let g:ackprg = 'ag --vimgrep'
    augroup Ack_confing
        autocmd!
        autocmd Filetype make     noremap <leader>al :Ack! -G 'makefile$'<space>
        autocmd Filetype markdown noremap <leader>al :Ack! --markdown<space>
        autocmd Filetype matlab   noremap <leader>al :Ack! --matlab<space>
        autocmd Filetype python   noremap <leader>al :Ack! --python<space>
        autocmd Filetype tex      noremap <leader>al :Ack! --tex<space>
        autocmd Filetype text     noremap <leader>al :Ack! -G '\.txt$'<space>
        autocmd Filetype vim      noremap <leader>al :Ack! --vim<space>
        autocmd filetype cpp      noremap <leader>al :ack! --cpp<space>
        autocmd filetype go       noremap <leader>al :ack! --go<space>
    augroup end
else
    augroup Ack_confing
        autocmd!
        autocmd Filetype make   noremap <leader>al :Ack! --make<space>
        autocmd Filetype matlab noremap <leader>al :Ack! --type-set text:ext:m<space>
        autocmd Filetype tex    noremap <leader>al :Ack! --tex<space>
        autocmd Filetype text   noremap <leader>al :Ack! --type-set text:ext:txt<space>
        autocmd Filetype vim    noremap <leader>al :Ack! --vim<space>
    augroup end
endif

noremap <leader>ag :Ack!<space>
