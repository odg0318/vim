color evening

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'vim-ruby/vim-ruby'
Plug 'python-mode/python-mode', { 'tag': '0.8.0' }
Plug 'ekalinin/Dockerfile.vim'
Plug 'hashivim/vim-terraform'
call plug#end()

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set expandtab
set autoindent
set background=dark
set hlsearch
set nu
set enc=utf-8 fenc=utf-8
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2

let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=0
let g:NERDTreeWinSize=30
map <silent> <F11> :NERDTreeToggle<CR>

map <silent> <F10> :TagbarToggle<CR>

let g:pymode_folding = 0 
let g:pymode_options_colorcolumn = 0 
let g:pymode_doc = 0 
let g:pymode_lint_ignore = "E501"
let g:pymode_rope = 0
set completeopt-=preview

let g:go_version_warning = 0

vnoremap <silent> # :s#^#\##<cr>:noh<cr>
vnoremap <silent> -# :s#^\###<cr>:noh<cr>

set foldmethod=manual
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim
