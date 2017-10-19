" my filetype file
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.Rhtml	setfiletype html
  au! BufRead,BufNewFile *.rhtml	setfiletype html
  au! BufRead,BufNewFile *.txt		setfiletype text
augroup END
