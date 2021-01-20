set number
call plug#begin()
Plug 'preservim/NERDTree'
Plug 'frazrepo/vim-rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'yegappan/taglist'
Plug '/adelarsq/vim-matchit'
Plug 'vim-python/python-syntax'
Plug 'bfrg/vim-cpp-modern'
Plug 'morhetz/gruvbox'
Plug 'vim-latex/vim-latex'
call plug#end()
let g:rainbow_active = 1
filetype plugin on
set shellslash
filetype indent on 
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
