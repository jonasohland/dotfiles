set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader=" "

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
"# Plugin 'git://git.wincent.com/command-t.git'

Plugin 'vhdirk/vim-cmake'		" CMakeSupport
" Plugin 'skywind3000/asyncrun.vim'	" Run Commands Async
Plugin 'tpope/vim-surround'		" Surround Syntax
" Plugin 'martong/vim-compiledb-path'
Plugin 'moll/vim-node'
Plugin 'pangloss/vim-javascript'
" Plugin 'lrvick/Conque-Shell'
Plugin 'icymind/NeoSolarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
" Plugin 'lervag/vimtex'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'junegunn/vim-easy-align'
Plugin 'flazz/vim-colorschemes'
" Plugin 'rhysd/vim-clang-format'
Plugin 'dag/vim-fish'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'airblade/vim-gitgutter'
Plugin 'hashivim/vim-terraform'

" Plugin  'Valloric/YouCompleteMe'

call vundle#end()            " required

filetype plugin indent on    " required

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set foldlevelstart=20

" VIM CONFIG "
set guifont=Inconsolata\ for\ Powerline:h13

set autoread
set backspace=indent,eol,start "normal backspace behaviour
set number relativenumber

set exrc

syntax enable
colorscheme molokai

set t_Co=256

" AIRLINE CONFIG "
" let g:airline_solarized_bg='dark'
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

" commenting options
let g:NERDDefaultAlign = 'left'
let g:NERDSpaceDelims = 1

" Align GitHub-flavored Markdown tables
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>

nnoremap <Leader>fi gg=G<C-o><C-o>

" Clang Format Setup
" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc,ts nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc,ts vnoremap <buffer><Leader>cf :ClangFormat<CR>

autocmd FileType fish compiler fish
autocmd FileType fish setlocal textwidth=79
autocmd FileType fish setlocal foldmethod=expr

nnoremap <Leader>p vip

" Insert Table Element
autocmd FileType markdown nnoremap <Leader>r a\|---<ESC>
" Align Table
autocmd FileType markdown nnoremap <Leader>a vip:EasyAlign*<Bar><CR>
nnoremap <Leader>ö $bax<ESC>
nnoremap <Leader>ä $bs<ESC>

nnoremap <Leader>. i\
nnoremap <Leader>- a\

nnoremap <C-p> :CtrlP

hi Normal guibg=NONE ctermbg=NONE
highlight LineNr ctermfg=grey ctermbg=NONE
