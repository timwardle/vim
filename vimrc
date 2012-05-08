" Vim config
" https://github.com/timwardle/vim

set nocompatible " Ignore vi compatibility

set tabstop=4 " Tabs should be 4 spaces
set shiftwidth=4 " << and >> move 4 spaces
set expandtab " Replace tabs with spaces
set autoindent
set smartindent

set wildmenu

set directory=~/.vim/tmp " Directory to place swap files in

set t_Co=256
set background=dark " Dark background
syntax on " Syntax highlighting
colorscheme wombat256

if has('gui_running')
  colorscheme wombat
  set guifont=Inconsolata\ Medium\ 11
endif

set number " Line numbers

set ruler

set ls=2 " Show a status line even when only one window is open

set incsearch
set hlsearch " Highlight search results

set tags=./tags;/ " Search recursively for tag files

" Setup snippets
filetype plugin on

helptags ~/.vim/doc

let NERDTreeIgnore=['\.pyc$', '\~$']
