""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen
""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set modelines=0

""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on                        " syntax highlighting

set noerrorbells
set novisualbell

""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI
""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Monospace\ 8         " smaller font size
set guioptions-=m                " no menu bar
set guioptions-=r                " no scrollbar
set guioptions-=T                " no toolbar

""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs
""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

""""""""""""""""""""""""""""""""""""""""""""""""""
" Widgets and sanity
""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=eol,start,indent
set cursorline                   " highlight current line
set relativenumber               " show line numbers relative to current line
set ruler                        " show current line and column
set showcmd                      " show the current command
set showmode                     " show the current mode

""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap / /\v
vnoremap / /\v

set ignorecase
set smartcase

set gdefault

set incsearch
set showmatch
set hlsearch

""""""""""""""""""""""""""""""""""""""""""""""""""
" Long lines
""""""""""""""""""""""""""""""""""""""""""""""""""
set wrap
set textwidth=79
" TODO: formatoptions
set colorcolumn=85

""""""""""""""""""""""""""""""""""""""""""""""""""
" Remapping
""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:startify_bookmarks = ['~/.vim/vimrc']

let g:startify_custom_footer =
      \ ['', "   Vim is charityware. Please read ':help uganda'.", '']
