" Plugins

call plug#begin('~/.config/nvim/plugged')

" Plug 'dbeecham/ctrlp-commandpalette.vim'
" Plug 'edkolev/tmuxline.vim'
" Plug 'nvie/vim-flake8'
" Plug 'xolox/vim-easytags'
Plug 'cespare/vim-toml'
Plug 'chrisbra/csv.vim'
Plug 'chriskempson/base16-vim' " colorschemes
" Plug 'ctrlpvim/ctrlp.vim' " fuzzy file finder
" Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'leafgarland/typescript-vim'
Plug 'majutsushi/tagbar'
Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'mattn/gist-vim'
" Plug 'mattn/webapi-vim' " dependent of gist-vim
" Plug 'mileszs/ack.vim'  " use ack/ag in vim
Plug 'ntpeters/vim-better-whitespace' " strip trailing spaces
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin'  " file tree view
" Plug 'scrooloose/syntastic' " linters
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-commentary' " comment stuff out
Plug 'tpope/vim-fugitive' " git wrapper
Plug 'tpope/vim-surround' " quoting/parenthesizing operations
" Plug 'vim-airline/vim-airline' " fancy status bar
" Plug 'vim-airline/vim-airline-themes'
" Plug 'xolox/vim-misc' " dependent of easytags
Plug 'Yggdroot/indentLine' " indent guidelines
Plug 'posva/vim-vue'
Plug 'w0rp/ale'
Plug 'mxw/vim-jsx'
Plug 'fisadev/vim-isort'  " sort Python imports
" Plug 'ludovicchabant/vim-gutentags'  " manage tags file
Plug 'ruanyl/vim-gh-line'  " Open this line of code in GitHub
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'aaronj1335/underscore-templates.vim'
Plug 'elzr/vim-json'
" Plug 'thaerkh/vim-indentguides'

call plug#end()

" General

set nocompatible " not compatible with vi
set noautoread " don't auto reload when file changed
set scrolloff=5 " start scrolling x lines away before hitting top/bottom
set history=100

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

" let g:airline_powerline_fonts=1
" let g:airline_theme='base16'

"set laststatus=2

" let g:ctrlp_follow_symlinks=1
" let g:ctrlp_max_files=0

" let g:ctrlp_custom_ignore = {
"     \ 'dir': '\v[\/](dist|node_modules)$',
"     \ }

" if executable('rg')
"   set grepprg=rg\ --color=never
"   let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
"   let g:ctrlp_use_caching = 0
" endif

nmap <silent> <leader>t :NERDTreeToggle<cr>
nmap <silent> <leader>f :NERDTreeFind<cr>

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

" nmap <silent> <c-o> :CtrlPCommandPalette<cr>

" nmap <silent> <c-[> :pop<cr>

let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$', '\.git', '\.tox', '\.cache', '\.egg-info', '__pycache__']

autocmd BufWritePre * StripWhitespace

set listchars=eol:$

set clipboard=unnamed

let g:indentLine_enabled = 1
let g:indentLine_faster = 1
let g:indentLine_fileTypeExclude = ['haskell', 'json', 'yaml', 'markdown', 'text', 'sh', 'vim']

autocmd FileType markdown set conceallevel=0  " unhide aterisks in markdown

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType jade setlocal ts=2 sts=2 sw=2 noexpandtab
autocmd FileType vue setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType crontab setlocal nobackup nowritebackup

" Detect file change
" autocmd FileChangedShell * echo "Warning: File changed on disk"
" autocmd CursorHold,CursorHoldI * silent! checktime

" let g:ctrlp_commandpalette_autoload_commands = 0

" Show full path of the current cursor
" let g:airline#extensions#tagbar#flags = 'f'

" let g:syntastic_python_checkers = ['flake8']

" Populate vim loclist once syntastic finds errors, making it navigatable
" with :lnext and :lprev right away
" let g:syntastic_always_populate_loc_list = 1
" nmap <silent> <leader>n :lnext<cr>
" nmap <silent> <leader>N :lprev<cr>

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Highlight current word
nmap <silent> <leader>c :let @/= '\<'.expand("<cword>").'\>'<cr>:set hls<cr>

" Toggle search highlighting
nmap <silent> <leader>h :set hlsearch!<cr>

nmap <silent> <leader>u ^hvk$di <esc>

" Highlight color
hi IncSearch cterm=NONE cterm=NONE ctermfg=white ctermbg=24
hi Search cterm=NONE ctermfg=white ctermbg=24

" Set Python debugger breakpoint
au FileType python map <silent> <leader>b oimport ipdb; ipdb.set_trace()<esc>
au FileType python map <silent> <leader>B Oimport ipdb; ipdb.set_trace()<esc>

au FileType javascript map <silent> <leader>b odebugger;<esc>

" Make CtrlP search based on NERDTree root directory
let g:NERDTreeChDirMode       = 2
" let g:ctrlp_working_path_mode = 'rw'

" Use ag if possible
" if executable('rg')
"   let g:ackprg = 'rg --vimgrep'
" endif

" Update ctags files in background
" let g:easytags_async = 1

" Jump to anywhere visible on the screen
" nmap <leader>s <Plug>(easymotion-s2)

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8', 'pylint']
\}

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers['json'] = ['prettier']
"let g:ale_fixers['python'] = ['black']
" let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--single-quote'
"let g:ale_python_black_executable = '/Users/eliang/.pyenv/versions/3.6.2/bin/black'

nmap <silent> <leader>x :ALEFix<cr>

let g:jsx_ext_required = 0

set guicursor=

set mouse=a

let g:vim_isort_map = '<C-i>'

" nmap <silent> <C-m> :TagbarCurrentTag('%s', '', 'f')<cr>

function! DeleteHiddenBuffers()
  let tpbl=[]
  let closed = 0
  call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
  for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
    if getbufvar(buf, '&mod') == 0
      silent execute 'bwipeout' buf
      let closed += 1
    endif
  endfor
  echo "Closed ".closed." hidden buffers"
endfunction

nmap <silent> <leader>d :call DeleteHiddenBuffers()<cr>

function! GetPythonMethodPath()
  let file_dotted_path = strpart(substitute(@%, '/', '.', 'g'), 0, strlen(@%)-3)
  let method_dotted_path = tagbar#currenttag('%s', '', 'f')
  return file_dotted_path . "." . method_dotted_path
endfunction

function! CopyPythonMethodPath()
  let path = GetPythonMethodPath()
  let @* = path
  echo "'".path."' copied to clipboard"
endfunction

nmap <silent> <C-m> :call CopyPythonMethodPath()<cr>

let g:gh_use_canonical = 1

" Lightline
let g:lightline = {
\ 'colorscheme': 'wombat',
\ 'active': {
\   'left': [['mode', 'paste'], ['filename', 'modified'], ['tag']],
\   'right': [['lineinfo'], ['percent'], ['readonly', 'linter_warnings', 'linter_errors', 'linter_ok']]
\ },
\ 'component': {
\   'tag': '%{tagbar#currenttag("%s", "", "f")}'
\ },
\ 'component_expand': {
\   'linter_warnings': 'LightlineLinterWarnings',
\   'linter_errors': 'LightlineLinterErrors',
\   'linter_ok': 'LightlineLinterOK'
\ },
\ 'component_type': {
\   'readonly': 'error',
\   'linter_warnings': 'warning',
\   'linter_errors': 'error'
\ },
\ }

function! LightlineLinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ◆', all_non_errors)
endfunction

function! LightlineLinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ✗', all_errors)
endfunction

function! LightlineLinterOK() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '✓ ' : ''
endfunction

autocmd User ALELint call s:MaybeUpdateLightline()

" Update and show lightline but only if it's visible (e.g., not in Goyo)
function! s:MaybeUpdateLightline()
  if exists('#lightline')
    call lightline#update()
  end
endfunction

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

nmap <silent> ; :Buffers<cr>
nmap <silent> <C-p> :Files<cr>
nmap <silent> <C-l> :Tags<cr>
nmap <silent> <C-k> :Tags <c-r><c-w><cr>
nmap <silent> <C-i> :Rg<cr>

au BufRead,BufNewFile *.template.js set syntax=underscore_template

:command W w

" Fixes error color in cursorline
hi Error cterm=reverse ctermbg=white ctermfg=red
