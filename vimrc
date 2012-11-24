syntax on
set ignorecase
" show numbers
set nu
" show ruler
set ruler
set smartindent
" use 4 spaces for tabs
set tabstop=4
set shiftwidth=4
set expandtab
" we work with utf-8
set encoding=utf-8
set laststatus=2
" Vundle settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'molokai'
Bundle 'Markdown'
Bundle 'Syntastic'
Bundle 'powerline'
Bundle 'vim-coffee-script'
Bundle 'AutoClose'
Bundle 'Command-T'
Bundle 'surround.vim'
Bundle 'tComment'
Bundle 'Indent-Guides'
Bundle 'django.vim'
Bundle 'pep8'
Bundle 'snipMate'
Bundle 'The-NERD-tree'
Bundle 'golang'
Bundle 'Python-mode-klen'
Bundle 'Tagbar'
Bundle 'ctags.vim'
Bundle 'SuperTab'
Bundle 'virtualenv.vim'
Bundle 'JSON.vim'
Bundle 'Indent-Guides'
" Bundle 'inkpot'
" End vundle settings


" Tagbar settings
nmap <F8> :TagbarToggle<CR>

" CommandT settings
set wildignore+=*.pyc,*/migrations/*,*/static_collected/*

" python-mode settings
let g:pymode_folding = 0
let g:pymode_lint_onfly = 0

" Indent guides settings
let g:indent_guides_enable_on_vim_startup = 1

" move between split screens
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" NERDTree
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
" let NERDTreeShowHidden=1
" autoclose vim if NERDTree is the last opened
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" for Vundle to handle SSL git repos correctly
let $GIT_SSL_NO_VERIFY = 'true'

" indent guides colors
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

" Powerline settings
set guifont=menlo\ For\ Powerline
let g:Powerline_symbols = 'fancy'

" F2 to handle copy-paste correctly
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" my Indent-Guides settings
" let g:indent_guides_color_change_percent = 30
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=#3d4244 ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#303030 ctermbg=4

" remove macvim gui elements and set font etc.
set guioptions-=r
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guifont=Menlo:h14
set mousemodel=extend
set showtabline=0
" well, you know :)
colorscheme molokai 
filetype plugin indent on
set nobackup
set nowritebackup
set noswapfile
set autoread
set vb t_vb=
set cursorline
" set autochdir
