color evening
set nocompatible
set autoindent smartindent
set background=dark
set hlsearch
set nu
set enc=utf-8 fenc=utf-8

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'vim-ruby/vim-ruby'
Plug 'hdima/python-syntax'
Plug 'ekalinin/Dockerfile.vim'
call plug#end()

let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=0
let g:NERDTreeWinSize=30
map <silent> <F11> :NERDTreeToggle<CR>

map <silent> <F10> :TagbarToggle<CR>

vnoremap <silent> # :s#^#\##<cr>:noh<cr>
vnoremap <silent> -# :s#^\###<cr>:noh<cr>

au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim
