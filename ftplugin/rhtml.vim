"Check if ftplugin alread ran
if exists("b:did_ftplugin")
  echo "ftplugin already exists. Exiting."
  finish
endif

echo "Running runtime! ~/.vim/ftplugin/html.vim"
" Load HTML settings
runtime! ~/.vim/ftplugin/html.vim
