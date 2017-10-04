if has('gui_running')
    let g:UltiSnipsUsePythonVersion    = 2
else
    let g:UltiSnipsUsePythonVersion    = 3
endif
let g:UltiSnipsSnippetDirectories  = ["UltiSnips"]

let g:UltiSnipsExpandTrigger       = "<C-j>"
let g:UltiSnipsListSnippets        = "<C-u>"
let g:UltiSnipsJumpForwardTrigger  = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
