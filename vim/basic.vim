
""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""
filetype plugin on
filetype indent on

" Set to auto read when a file
set autoread
au FocusGained,BufEnter * checktime

let mapleader = ","
nmap <leader>w :w!<cr>

" For regular expressions turn magic on
set magic

" Show matching brackets
set showmatch

set expandtab
set smarttab
set number relativenumber
set shiftwidth=2
set tabstop=2
set ai
set si
set wrap
set hlsearch

""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

set background=dark
set encoding=utf8


""""""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""""""
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


""""""""""""""""""""""""""""""""""
" => Helper functions
""""""""""""""""""""""""""""""""""
function! HasPaste()
  if &paste
    return 'PASTE MODE '
  endif
  return ''
endfunction
