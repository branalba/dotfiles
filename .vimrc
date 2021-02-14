set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'preservim/NERDTree'
Plugin 'frazrepo/vim-rainbow'
Plugin 'jiangmiao/auto-pairs'
Plugin 'yegappan/taglist'
Plugin 'adelarsq/vim-matchit'
Plugin 'morhetz/gruvbox'
Plugin 'justinmk/vim-sneak'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on

set number
let g:rainbow_active = 1
