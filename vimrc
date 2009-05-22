" Wrap too long lines
set wrap

" Tabs are 2 characters
set tabstop=2

" (Auto)indent uses 2 characters
set shiftwidth=2

" spaces instead of tabs
set expandtab

" guess indentation
set autoindent

" Expand the command line using tab
set wildchar=<Tab>

" show line numbers
set number

" enable all features
set nocompatible

" powerful backspaces
set backspace=indent,eol,start

" highlight the searchterms
set nohlsearch

" jump to the matches while typing
set incsearch

" ignore case while searching
set ignorecase

" don't wrap words
set textwidth=0

" history
set history=50

" 1000 undo levels
set undolevels=1000

" show a ruler
set ruler

" show partial commands
set showcmd

" show matching braces
set showmatch

" write before hiding a buffer
set autowrite

" Files .sh are always bash
au FileType sh let b:is_bash=1

" auto-detect the filetype
filetype plugin indent on

" syntax highlight
syntax on

" Always show the menu, insert longest match
set completeopt=menuone,longest

" Autoselect the right compiler using the filetype
autocmd BufRead *
  \ try | execute "compiler ".&filetype | catch /./ | endtry

" Ruby test unit
autocmd BufNewFile,BufRead test_*.rb  compiler rubyunit

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" Dont save backups
set nobackup
set nowritebackup

set cursorline
set backspace=indent,eol,start

set guioptions-=T
if has("gui_macvim")
  colorscheme railscasts
  " Our prefered font on mac :P
  set guifont=Monaco:h11
  "tell the term has 256 colors
  set t_Co=256
  " Other preferences
  set lines=50
  set columns=180
  set guitablabel=%M%t
endif

if has("gui_running")
  colorscheme railscasts
  " Our prefered font on linux :P
  set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
  "tell the term has 256 colors
  set t_Co=256
  " Other preferences
  set lines=50
  set columns=130
  set guitablabel=%M%t
endif

" Load ~/.vimrc - Reload with :so %
nmap <silent> ,v :e ~/.vimrc<Enter>

" FuzzyFinderOpenFile
nmap ,f :FuzzyFinderFile<Enter>

"Highlightedsearch
map ,sh :set hls!<cr>:echo "Highlightedsearch="&hls<cr>

" Changing menu Make to Cmd-R
nnoremap <D-r> :make %<Enter>
