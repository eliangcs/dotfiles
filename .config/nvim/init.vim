" Plugins

call plug#begin('~/.config/nvim/plugged')

" Plug 'dbeecham/ctrlp-commandpalette.vim'
" Plug 'edkolev/tmuxline.vim'
" Plug 'nvie/vim-flake8'
" Plug 'xolox/vim-easytags'
Plug 'chrisbra/csv.vim'
Plug 'chriskempson/base16-vim' " colorschemes
Plug 'ctrlpvim/ctrlp.vim' " fuzzy file finder
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim' " dependent of gist-vim
Plug 'mileszs/ack.vim'  " use ack in vim
Plug 'ntpeters/vim-better-whitespace' " strip trailing spaces
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin'  " file tree view
Plug 'scrooloose/syntastic' " linters
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-commentary' " comment stuff out
Plug 'tpope/vim-fugitive' " git wrapper
Plug 'tpope/vim-surround' " quoting/parenthesizing operations
Plug 'vim-airline/vim-airline' " fancy status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'xolox/vim-misc' " dependent of easytags
Plug 'Yggdroot/indentLine' " indent guidelines

call plug#end()

" General

set nocompatible " not compatible with vi
set noautoread " don't auto reload when file changed
set scrolloff=5 " start scrolling x lines away before hitting top/bottom

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
hi Search ctermfg=black

set colorcolumn=79

let g:airline_powerline_fonts=1
let g:airline_theme='base16'

"set laststatus=2

let g:ctrlp_follow_symlinks=1

let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/]dist$',
    \ }

nmap <silent> <leader>t :NERDTreeToggle<cr>
nmap <silent> <leader>y :NERDTreeFind<cr>

" Split navigation
" nmap <silent> <leader>h :wincmd h<cr>
" nmap <silent> <leader>j :wincmd j<cr>
" nmap <silent> <leader>k :wincmd k<cr>
" nmap <silent> <leader>l :wincmd l<cr>

" Tab navigation
" nnoremap <silent> <c-h> :tabprev<cr>
" nnoremap <silent> <c-l> :tabnext<cr>
" nnoremap <silent> <c-t> :tabnew<cr>
" inoremap <silent> <c-h> <esc>:tabprev<cr>i
" inoremap <silent> <c-l> <esc>:tabnext<cr>i
" inoremap <silent> <c-t> <esc>:tabnew<cr>

nmap <silent> <c-o> :CtrlPCommandPalette<cr>

" nmap <silent> <c-[> :pop<cr>

let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$', '\.git', '\.tox', '\.cache', '\.egg-info', '__pycache__']

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

" Detect file change
" autocmd FileChangedShell * echo "Warning: File changed on disk"
" autocmd CursorHold,CursorHoldI * silent! checktime

let g:ctrlp_commandpalette_autoload_commands = 0

" Show full path of the current cursor
let g:airline#extensions#tagbar#flags = 'f'

let g:syntastic_python_checkers = ['flake8']

" Highlight current word
nmap <silent> <leader>c :let @/= '\<'.expand("<cword>").'\>'<cr>:set hls<cr>

" Toggle search highlighting
nmap <silent> <leader>h :set hlsearch!<cr>

" Don't jump to an already-open file
let g:ctrlp_switch_buffer = 0

" Make IndentLine faster
let g:indentLine_faster = 1
