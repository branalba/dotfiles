set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/NERDTree'
Plugin 'frazrepo/vim-rainbow'
Plugin 'jiangmiao/auto-pairs'
Plugin 'yegappan/taglist'
Plugin 'adelarsq/vim-matchit'
Plugin 'justinmk/vim-sneak'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" enable syntax highlighting
syntax on

" have Taglist always open to the right
let Tlist_Use_Right_Window   = 1

" enable line numbers
set number

" enable rainbow brackets
let g:rainbow_active = 1

" fix coc.nvim popup colors
highlight CocFloating ctermbg=0

" keybinds
nnoremap <C-f> :NERDTreeToggle<CR> 
nnoremap <C-l> :TlistToggle<CR>
nnoremap <C-m> :!make<CR>
nnoremap <C-d> :let g:termdebugger="gdb" <bar> Termdebug<CR>
nnoremap <C-e> :let g:termdebugger="arm-none-eabi-gdb" <bar> Termdebug<CR>
nnoremap <C-l> :!pdflatex *.tex<CR>

" enable the termdebug plugin
packadd termdebug
let g:termdebugger = "arm-none-eabi-gdb"
let g:termdebug_popup=0
let g:termdebug_wide=163
set mouse=a

