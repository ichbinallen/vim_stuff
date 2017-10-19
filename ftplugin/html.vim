" HTML vim settings

" HTML tab settings
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix

" Set UTF 8 encodings for html files
setlocal encoding=utf-8  " The encoding displayed.
setlocal fileencoding=utf-8  " The encoding written to file.

" Syntastic Checkers
let g:syntastic_html_checkers = ['syntastic-html-tidy']

" Build commands for kniting Rhtml files
command! Knit !Rscript -e "library(knitr); knit('%:p')"
" comma kk shortcut
noremap <Leader><space><space> <esc>:Knit<CR>
" Build commands for viewing html files
command! ViewHTML !firefox '%:r.html'
" comma kk shortcut
noremap <Leader>vv <esc>:ViewHTML<CR>
