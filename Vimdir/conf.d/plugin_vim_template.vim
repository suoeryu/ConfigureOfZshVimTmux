let g:templates_directory = ['~/.vim/templates']

let g:templates_user_variables = [
            \       ['FOLDER_NAME', 'GetFolderName'],
            \ ]

function! GetFolderName()
    return expand('%:p:h:t')
endfunction
