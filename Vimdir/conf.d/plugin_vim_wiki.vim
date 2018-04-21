let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_CJK_length = 1
let g:vimwiki_list_ignore_newline = 0
let g:vimwiki_folding = 'expr'
let g:vimwiki_html_header_numbering = 2
let g:vimwiki_listsyms = ' ○◐●✓'

let wiki = {}
let wiki.path = '~/Documents/Projects/Vimwiki'
" let wiki.path_html = wiki.path . '_html'
let wiki.auto_export = 0
let wiki.auto_toc = 1
let wiki.template_path = '~/.vim/templates/'
let wiki.template_default = 'wiki_tpl'
let wiki.template_ext = '.html'
let wiki.css_name = 'style.css'
" let wiki.nested_syntaxs = {'py': 'python', 'c++', 'cpp'}
let wiki.automatic_nested_syntaxes = 1
let wiki.aut_tags = 1

let leetcode_wiki = copy(wiki)
let leetcode_wiki.path = '~/Documents/Projects/LeetCode/Vimwiki'

let g:vimwiki_list = [wiki, leetcode_wiki]
