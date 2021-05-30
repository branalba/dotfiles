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
Plugin 'tpope/vim-fugitive'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'Chiel92/vim-autoformat'
Plugin 'morhetz/gruvbox'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
colorscheme gruvbox
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
nnoremap <C-t> :TlistToggle<CR>
nnoremap <C-m> :w <bar> !make<CR>
nnoremap <C-d> :let g:termdebugger="gdb" <bar> Termdebug<CR>
nnoremap <C-e> :let g:termdebugger="arm-none-eabi-gdb" <bar> Termdebug<CR>
nnoremap <C-l> :w <bar> !pdflatex *.tex<CR>

" enable the termdebug plugin
packadd termdebug
let g:termdebugger = "arm-none-eabi-gdb"
let g:termdebug_popup=0
let g:termdebug_wide=163
set mouse=a

" keep the cursor vertically centered
" from https://vim.fandom.com/wiki/Keep_your_cursor_centered_vertically_on_the_screen
augroup VCenterCursor
    au!
    au BufEnter,WinEnter,WinNew,VimResized *,*.*
                \ let &scrolloff=winheight(win_getid())/2
augroup END

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" set the virtual environment directory to the project working directory
" https://github.com/jmcantrell/vim-virtualenv/issues/60
let g:virtualenv_directory = $PWD
let g:airline#extensions#virtualenv#enabled = 1
let g:virtualenv_auto_activate = 1

" Autoformat on file save
" au BufWrite * :Autoformat

let g:formatdef_my_custom_c = "'clang-format -style=''{SpacesInParentheses: true, AlignTrailingComments: true, SpaceBeforeParens: NonEmptyParentheses}'''"
let g:formatters_c = ['my_custom_c']
let g:autoformat_verbosemode=1
