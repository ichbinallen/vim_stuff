
" TABS & INDENTATION - Python Pep8 standards
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix

" Syntastic Checker
setlocal statusline+=%#warningmsg#
setlocal statusline+=%{SyntasticStatuslineFlag()}
setlocal statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list =	0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" syntax higlighting
let python_highlight_all=1
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_checker_args="--ignore=E501,W601"

" don't let vim-jedi autocomplete unless asked to
let g:jedi#popup_on_dot = 0

" Build Shortcut
command! Buildpython !python %:p
noremap <Leader><space><space> <esc>:Buildpython<CR>
