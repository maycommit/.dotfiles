
""""""""""""""""""""""""""""""""""
" => Plug plugins
""""""""""""""""""""""""""""""""""
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()


""""""""""""""""""""""""""""""""""
" => Airline
""""""""""""""""""""""""""""""""""

let g:airline_theme='molokai'


""""""""""""""""""""""""""""""""""
" => NERDTree 
""""""""""""""""""""""""""""""""""

map <Leader>e :NERDTreeToggle<CR>


""""""""""""""""""""""""""""""""""
" => FZF 
""""""""""""""""""""""""""""""""""

nnoremap <silent> <leader><space> :Files<CR>
nnoremap <silent> K :call SearchWordWithAg()<CR>


""""""""""""""""""""""""""""""""""
" => Helpers 
""""""""""""""""""""""""""""""""""

function! SearchWordWithAg()
  execute 'Ag' expand('<cword>')
endfunction
