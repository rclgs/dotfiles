" Basic Settings
set nocompatible                 " Disable compatibility with old versions of Vim
set encoding=utf-8               " Set the character encoding to UTF-8
set fileencoding=utf-8           " Set the file encoding to UTF-8

" Appearance
set number                       " Show line numbers
set relativenumber               " Show relative line numbers
set cursorline                   " Highlight the current line
set showcmd                      " Show command in the bottom bar
set showmatch                    " Highlight matching parentheses
set hlsearch                     " Highlight search results
set incsearch                    " Incremental search
set ignorecase                   " Ignore case in search
set smartcase                    " Override ignorecase if search contains uppercase

" Editing
set autoindent                   " Enable automatic indentation
set smartindent                  " Enable smart indentation
set tabstop=4                    " Number of spaces a tab counts for
set shiftwidth=4                 " Number of spaces to use for each step of (auto)indent
set expandtab                    " Convert tabs to spaces
set backspace=indent,eol,start   " Allow backspacing over everything in insert mode

" Performance
set lazyredraw                   " Don't redraw while executing macros
set history=1000                 " Increase the history size

" File Handling
set autoread                     " Automatically reload files edited outside of Vim
autocmd FocusGained * checktime  " Check for external changes when returning to Vim
set backup                       " Enable backup files
set backupdir=~/.vim/backup/     " Set backup directory
set undofile                     " Enable persistent undo
set undodir=~/.vim/undo/         " Set undo directory
set directory=~/.vim/swap//      " Set swap file directory

" Miscellaneous
set clipboard=unnamedplus        " Use system clipboard
set timeoutlen=500               " Time to wait for a mapped sequence to complete
set wildmenu                     " Enable command-line completion
set termguicolors                " Enable true colors
set colorcolumn=80,100,120       " Enable color column in cols 80, 100 and 120

" Plugins
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync
endif

" Plugin list
call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
call plug#end()

" Colorscheme
let g:seoul256_background = 234
silent! colorscheme seoul256
