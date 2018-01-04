" Vundle  (TODO: vim-plug looks pretty good too.)
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'     " the chochacho
Plugin 'sickill/vim-monokai'
Plugin 'ctrlpvim/ctrlp.vim'       " fast file switching

Plugin 'ervandew/supertab'        " YCM + ultisnips compat
Plugin 'SirVer/ultisnips'         " snippets
Plugin 'mhinz/vim-startify'       " nice start screen (TODO: remove? slow)
" Plugin 'Valloric/YouCompleteMe'   " code completion. See README to add langs.
Plugin 'tpope/vim-surround'       " 's' motion
Plugin 'junegunn/vim-easy-align'  " easily align on chars (gaip=)


" Syntax highlighting
Plugin 'wavded/vim-stylus'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'kchmck/vim-coffee-script'

call vundle#end()

""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set modelines=0                  " security
filetype plugin indent on        " for coffeescript (why?)

" Appearance
syntax on
set t_Co=256                     " 256 color support
colorscheme monokai

set noerrorbells
set novisualbell

" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Widgets and sanity
set backspace=eol,start,indent
set cursorline                   " highlight current line
set relativenumber               " show line numbers relative to current line
set ruler                        " show current line and column
set showcmd                      " show the current command
set showmode                     " show the current mode

set noswapfile

" Search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault                     " global replace by default
set incsearch                    " search as characters are entered
set showmatch
set hlsearch                     " highlight matches

" Long lines
set wrap
set textwidth=0
set wrapmargin=0
" TODO: formatoptions
set colorcolumn=81

""""""""""""""""""""""""""""""""""""""""""""""""""
" Remapping
""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","              " more convenient than \

map Q <ESC>
" Fast write
nnoremap <Leader>w :update<CR>

" Move by screen line
" nnoremap j gj
" nnoremap k gk

" System clipboard
nnoremap <Leader>y "+y
nnoremap <Leader>p "+p

" Easy vimrc changes
nnoremap <Leader>ev :split $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>

" Fast window switch
nnoremap <c-h> <c-W>h
nnoremap <c-j> <c-W>j
nnoremap <c-k> <c-W>k
nnoremap <c-l> <c-W>l

" Timestamp -- 2016-01-01 09:30:15
nnoremap <Leader>d :put =strftime('%F %X')<CR>


nnoremap <Leader>v <C-w>v<C-w>l
nnoremap <Leader>h <C-w>s<C-w>j
nnoremap <Leader>o :only<CR>
nnoremap <Leader>q :q<CR>

" For accidents
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""
" ultisnips + YCM
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_server_keep_logfiles = 1
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit = "vertical"

" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Ctrl P
nnoremap <Leader>t :CtrlP<CR>
let g:ctrlp_custom_ignore = {
  \ 'dir': 'env\|node_modules\|build_server\|build_client\|build',
  \ }

let g:startify_bookmarks = ['~/.vim/vimrc']

let g:startify_custom_footer =
      \ ['', "   Vim is charityware. Please read ':help uganda'.", '']


" Jedi
autocmd FileType python setlocal completeopt-=preview
autocmd FileType javascript setlocal omnifunc=tern#Complete
