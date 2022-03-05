
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

set ignorecase
set smartcase
set expandtab
set smarttab
set number relativenumber
set shiftwidth=2
set tabstop=2
set ai
set si
set wrap
set hlsearch
set paste


""""""""""""""""""""""""""""""""""
" => Mappings 
""""""""""""""""""""""""""""""""""

nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>

nnoremap <Leader>h<Enter> :leftabove vnew<CR>:terminal<CR>
nnoremap <Leader>l<Enter> :rightbelow vnew<CR>:terminal<CR>
nnoremap <Leader>k<Enter> :leftabove  new<CR>:terminal<CR>
nnoremap <Leader>j<Enter> :rightbelow new<CR>:terminal<CR>

nnoremap <silent> <Leader>hh :call JumpOrOpenNewSplit('h', ':leftabove vsplit', 0)<CR>
nnoremap <silent> <Leader>ll :call JumpOrOpenNewSplit('l', ':rightbelow vsplit', 0)<CR>
nnoremap <silent> <Leader>kk :call JumpOrOpenNewSplit('k', ':leftabove split', 0)<CR>
nnoremap <silent> <Leader>jj :call JumpOrOpenNewSplit('j', ':rightbelow split', 0)<CR>

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

function! JumpOrOpenNewSplit(key, cmd, fzf) " {{{
      let current_window = winnr()
        execute 'wincmd' a:key
        if current_window == winnr()
          execute a:cmd
          if a:fzf
            Files
          endif
        else
          if a:fzf
            Files
          endif
        endif
endfunction
