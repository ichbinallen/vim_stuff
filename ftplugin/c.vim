
" TABS & INDENTATION - Python Pep8 standards
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix


" Build Shortcut
command! CompileC !gcc %:p -o %:r
noremap <Leader>cc <esc>:CompileC<CR>

command! RunC !./%:r
noremap <Leader>rr <esc>:RunC<CR>

