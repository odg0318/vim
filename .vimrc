call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'majutsushi/tagbar'
call plug#end()

color evening
set background=dark
set hlsearch
set nu
set enc=utf-8 fenc=utf-8
set autoindent smartindent

au BufRead,BufNewFile *.json set sts=2 ts=2 sw=2 et
au BufRead,BufNewFile *.rb set sts=2 ts=2 sw=2 et
au BufRead,BufNewFile *.yml set sts=2 ts=2 sw=2 et
au BufRead,BufNewFile *.py set ts=8 et sw=4 sts=4
au BufNewFile,BufRead Berksfile set filetype=ruby

let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=0
let g:NERDTreeWinSize=30
map <silent> <F11> :NERDTreeToggle<CR>

map <silent> <F10> :TagbarToggle<CR>

vnoremap <silent> # :s#^#\##<cr>:noh<cr>
vnoremap <silent> -# :s#^\###<cr>:noh<cr>
