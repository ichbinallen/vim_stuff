" TEX SETTINGS

" Allow matching \ref{fig:<something>} to \ref{fig:<something>}
" Use <C-n> to match
setlocal iskeyword+=:

" Disable folding
setlocal nofoldenable

" TABS & INDENTATION - 2 space tabs
setlocal textwidth=79
setlocal autoindent
setlocal fileformat=unix
setlocal softtabstop=0
setlocal expandtab
setlocal shiftwidth=2
setlocal smarttab

" grep setting reccomended by vim-latex
setlocal grepprg=grep\ -nH\ $*

" enable spellcheck by default
setlocal spell spelllang=en_us

" Build Commands
command! -buffer BuildPDFlatex !pdflatex %:p
noremap <Leader><space><space> <esc>:BuildPDFlatex<CR><CR>
command! -buffer MakeLatex !make
noremap <Leader>ll <esc>:MakeLatex<CR><CR>
command! -buffer ViewPDFlatex !evince %:r".pdf" &>/dev/null &
noremap <Leader>vv <esc>:ViewPDFlatex<CR>
