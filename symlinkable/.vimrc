" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

" Change swap directory
let mySwapDir = expand('$HOME/.vim/swap')
call system('mkdir -p $HOME/.vim/swap')
let &directory = mySwapDir

" Change backup directory and enable backups
let myBackupDir = expand('$HOME/.vim/backup')
call system('mkdir -p $HOME/.vim/backup')
let &backupdir = myBackupDir
set backup

" Change undo directory and enable it
let myUndoDir = expand('$HOME/.vim/undo')
call system('mkdir -p $HOME/.vim/undo')
let &undodir = myUndoDir
set undofile

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
if has('syntax') && has('eval')
  packadd matchit
endif





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" All other plugins
Plugin 'sheerun/vim-polyglot'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'darfink/vim-plist'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'ctrlpvim/ctrlp.vim'

" finish Vundlizing
call vundle#end()
filetype plugin indent on





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree Stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden = 1
augroup NERDTree
  au!

  autocmd bufenter *
    \ if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) |
    \   q |
    \ endif
augroup END





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My customizations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent
set backspace=indent,eol,start
set display=truncate
set expandtab
set history=2000
set hlsearch
set ignorecase
set incsearch
set linebreak
set mouse=a
set nrformats-=octal
set number
set ruler
set scrolloff=5
set shiftwidth=2
set showbreak=+++
set showmatch
set smartcase
set smartindent
set smarttab
set softtabstop=2
set textwidth=79
set undolevels=1000
set visualbell

" Enable syntax highlighting
syntax on

" Return the cursor to it's position when the file was open last
augroup vimStartup
  au!
  
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
augroup END





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<Space>"

map <leader>f :NERDTree<cr>
map <leader>n :bn<cr>
map <leader>p :bp<cr>
map <leader>d :bd<cr>

