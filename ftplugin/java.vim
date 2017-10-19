
" TABS & INDENTATION - Python Pep8 standards
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix


" Build Shortcut
command! Compilejava !javac -g %:p
noremap <Leader>jj <esc>:Compilejava<CR>

command! Runjava !java  %:r
noremap <Leader>rr <esc>:Runjava<CR>
