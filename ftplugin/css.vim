" CSS vim settings

" CSS tab settings
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix

" Set UTF 8 encodings for css files
setlocal encoding=utf-8  " The encoding displayed.
setlocal fileencoding=utf-8  " The encoding written to file.

" Syntastic Checkers
let g:syntastic_css_checkers = ['syntastic-css-tidy']
