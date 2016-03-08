" Plugins

call plug#begin('~/.config/nvim/plugged')

" Plug 'edkolev/tmuxline.vim'
" Plug 'nvie/vim-flake8'
Plug 'chrisbra/csv.vim'
Plug 'chriskempson/base16-vim' " colorschemes
Plug 'ctrlpvim/ctrlp.vim' " fuzzy file finder
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'ntpeters/vim-better-whitespace' " strip trailing spaces
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin'  " file tree view
Plug 'scrooloose/syntastic' " linters
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-commentary' " comment stuff out
Plug 'tpope/vim-fugitive' " git wrapper
Plug 'tpope/vim-surround' " quoting/parenthesizing operations
Plug 'vim-airline/vim-airline' " fancy status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine' " indent guidelines
Plug 'dbeecham/ctrlp-commandpalette.vim'

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

" Fix double indent when you press Enter after an open parenthesis
let g:pyindent_open_paren = '&sw'

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

" Split navigation
nmap <silent> <leader>h :wincmd h<cr>
nmap <silent> <leader>j :wincmd j<cr>
nmap <silent> <leader>k :wincmd k<cr>
nmap <silent> <leader>l :wincmd l<cr>

" Tab navigation
nnoremap <silent> <c-h> :tabprev<cr>
nnoremap <silent> <c-l> :tabnext<cr>
nnoremap <silent> <c-t> :tabnew<cr>
inoremap <silent> <c-h> <esc>:tabprev<cr>i
inoremap <silent> <c-l> <esc>:tabnext<cr>i
inoremap <silent> <c-t> <esc>:tabnew<cr>

nmap <silent> <c-o> :CtrlPCommandPalette<cr>

nmap <silent> <c-[> :pop<cr>

let NERDTreeIgnore=['\.pyc$']

autocmd BufWritePre * StripWhitespace

set listchars=eol:$

set clipboard=unnamed

let g:indentLine_enabled=1

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2 noexpandtab indentkeys-=*<return>
autocmd FileType jade setlocal ts=2 sts=2 sw=2 noexpandtab
autocmd FileType crontab setlocal nobackup nowritebackup

let g:ctrlp_commandpalette_autoload_commands = 0

let g:commandPalette = {
    \ 'CSV: Align/Justify Columns': '1,1000ArrangeColumn',
    \ 'New Tab': 'tabnew'}
