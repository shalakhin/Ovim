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
" Bundle 'jellybeans.vim'
Bundle 'surround.vim'
Bundle 'tComment'
Bundle 'Indent-Guides'
Bundle 'django.vim'
Bundle 'pep8'
Bundle 'snipMate'
" Bundle 'Pydiction'
Bundle 'The-NERD-tree'
Bundle 'golang'
" Bundle 'ack.vim'
" Bundle 'pylint-mode'
Bundle 'Python-mode-klen'
" End vundle settings

" Pydiction autocomplete
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'

" CommandT settings
set wildignore+=*.pyc

" pylint-mode settings
" set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
" set errorformat=%f:%l:\ %m
" let g:PyLintCWindow = 1
" let g:PyLintSigns = 1
" let g:PyLintOnWrite = 1

" python-mode settings
let g:pymode_folding = 0

" Indent guides settings
let g:indent_guides_enable_on_vim_startup = 0

" move between split screens
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" NERDTree
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
" let NERDTreeShowHidden=1

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

" well, you know :)
colorscheme molokai 
filetype plugin indent on

