" Plugins

call plug#begin('~/.config/nvim/plugged')

Plug 'chrisbra/csv.vim'
Plug 'chriskempson/base16-vim' " colorschemes
Plug 'ctrlpvim/ctrlp.vim' " fuzzy file finder
"Plug 'edkolev/tmuxline.vim'
Plug 'ervandew/supertab'
Plug 'ntpeters/vim-better-whitespace' " strip trailing spaces
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin'  " file tree view
Plug 'tpope/vim-commentary' " comment stuff out
Plug 'tpope/vim-fugitive' " git wrapper
Plug 'vim-airline/vim-airline' " fancy status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine' " indent guidelines

call plug#end()

" General

set nocompatible " not compatible with vi
set autoread " detect when a file is changed

let mapleader=','

set wildignore+=*.swp,*.pyc,*.zip

" Tab control
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround

" User Interface

set ignorecase
set smartcase

set cursorline

syntax on

set encoding=utf8
let base16colorspace=256  " Access colors present in 256 colorspace
set t_Co=256 " Tell vim terminal supports 256 colors
execute "set background=dark"
execute "colorscheme base16-tomorrow"

set number " show absolute line number
set relativenumber
hi CursorLineNR ctermfg=yellow

set colorcolumn=79

let g:airline_powerline_fonts=1
let g:airline_theme='base16'

"set laststatus=2

let g:ctrlp_follow_symlinks=1

nmap <silent> <leader>t :NERDTreeToggle<cr>
nmap <silent> <leader>y :NERDTreeFind<cr>

" Remap backspace so that we can use <c-h> for navigate splits
if has('nvim')
    nmap <BS> <C-W>h
endif

nmap <silent> <c-h> :wincmd h<cr>
nmap <silent> <c-j> :wincmd j<cr>
nmap <silent> <c-k> :wincmd k<cr>
nmap <silent> <c-l> :wincmd l<cr>

let NERDTreeIgnore=['\.pyc$']

autocmd BufWritePre * StripWhitespace
autocmd BufWritePost *.py call Flake8()

set listchars=eol:$

set clipboard=unnamed

let g:indentLine_enabled=1

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2 noexpandtab indentkeys-=*<return>
autocmd FileType jade setlocal ts=2 sts=2 sw=2 noexpandtab
autocmd FileType crontab setlocal nobackup nowritebackup
