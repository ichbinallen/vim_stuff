" Allen's .vimrc VIM settings


" Pathogen plugin 'manager'
execute pathogen#infect()


" allows filetype detection - see ~/.vim/ftplugin directory
filetype plugin on


" Show trailing  whitespace
autocmd ColorScheme *
    \ highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/


" COLOR SCHEMES - stored in ~/.vim/colors
try
    colorscheme badwolf
catch
endtry


" SYNTAX
syntax enable           " enable syntax processing


" Syntastic Syntax Checker
let g:syntastic_python_checker_args="--ignore=E501,W601"

let g:syntastic_python_checker_args="--ignore=E501,W601"
" Moved to ~/.vim/ftplugin/python.vim

"UI CONFIG
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmode=longest,list,full " bash style autocomplete
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set laststatus=2	" display current file at bottom


" SEARCH
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>


" configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


" ==================================
" Stolen from Martin Brochhous .vimrc
" ==================================

" Mouse and backspace
try
    set mouse=a  " on OSX press ALT and click
catch
endtry


" Rebind <Leader> key
let mapleader = ","


" easier moving between buffers
map <Leader>n <esc>:bn<CR>
map <Leader>m <esc>:bp<CR>


" ==================================
" Back to my own commands
" ==================================

" Compile Commands
" I have some language specific compile command shortcuts
" comma space space will compile a file if I have a shortcut
" set up.  Look in the ftplugin/<appropriate Language>.vim
" file to see the commands

" NERDTree
" autocmd vimenter * NERDTree" automatically show nerdtree
" easy close
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>


" Split preferences
set splitbelow " new splits below
set splitright " new vsplits to the right
" easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Terminal Style Copy/Paste
" Need to make sure vim compiled with copy paste abilities
vnoremap <C-c> "+y

" Learn Vimscript the hard way commands
" Make space expand code folds in normal mode
nnoremap <space> za
" Edit vimrc
nnoremap <leader>ev :split $MYVIMRC<cr>G
" Source vimrc (load all the commands in vimrc to be active)
nnoremap <leader>sv :source $MYVIMRC<cr>

" quotes around visual selection
vnoremap <leader>" v`<i"<esc>`>la"<esc>

" Map H as a stronger h and L as a stronger l
" same as movement 0
nnoremap H 0
" same as movement $
nnoremap L $

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}


