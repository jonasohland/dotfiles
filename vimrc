set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'git://git.wincent.com/command-t.git'

Plugin 'vhdirk/vim-cmake'		" CMakeSupport
Plugin 'skywind3000/asyncrun.vim'	" Run Commands Async
Plugin 'tpope/vim-surround'		" Surround Syntax
Plugin 'scrooloose/nerdtree'
Plugin 'martong/vim-compiledb-path'
Plugin 'moll/vim-node'
Plugin 'pangloss/vim-javascript'
Plugin 'lrvick/Conque-Shell'
Plugin 'icymind/NeoSolarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'w0rp/ale'
Plugin 'lervag/vimtex'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'junegunn/vim-easy-align'
Plugin 'rhysd/vim-clang-format'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin  'Valloric/YouCompleteMe'

call vundle#end()            " required

filetype plugin indent on    " required

" VIM CONFIG "
set guifont=Inconsolata\ for\ Powerline:h13

set autoread
set backspace=indent,eol,start "normal backspace behaviour
set number relativenumber

set exrc

" SOLARIZED THEME CONFIG "
syntax enable
set background=dark
colorscheme NeoSolarized
set termguicolors


" AIRLINE CONFIG "
let g:airline_powerline_fonts = 1
let g:airline_theme = 'luna'

" KEYS "
nnoremap <Left> :echoe "NO. Use h" <CR>
nnoremap <Right> :echoe "NO. Use l" <CR>
nnoremap <Up> :echoe "NO. Use k" <CR>
nnoremap <Down> :echoe "NO. Use j" <CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" No markdown folding
let g:vim_markdown_folding_disabled = 1

" remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Align GitHub-flavored Markdown tables
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>

" Clang Format Setup
" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
