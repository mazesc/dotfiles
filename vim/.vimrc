" global settings
" " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "
if has("gui_running")
  set guioptions-=T
  set lines=50 columns=100
  if has("gui_gtk2")
    set guifont=Inconsolata\ for\ Powerline\ Medium\ 14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" Pathogen extract plugins into ~/.vim/bundle and they are added to runtimepath
" automatically
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible

" TAB instead of spaces in Makefiles
autocmd FileType make setlocal noexpandtab

" Continuously slows down vim when repeatedly opening files (reproducible by e.g. <C-e>
" between a Scala file and .vimrc)
"filetype on             "detect filetypes
"filetype plugin on      "load plugin file
"filetype indent on      "load indent file

syntax on               "allow syntax highlighting

set encoding=utf-8

"colorscheme mustang    "set colorscheme
"colorscheme smyck      "set colorscheme
"colorscheme molokai     "set colorscheme

"let g:hybrid_reduced_contrast=1
set background=dark
"colorscheme hybrid     "set colorscheme
colorscheme falcon     "set colorscheme

set termguicolors

set number              "show line numbers

set wildmode=longest,list,full
set wildmenu

set tabstop=2           "show tabs as 2 spaces
set shiftwidth=2        "show tabs as 2 spaces
set backspace=2         "backspace over indent
set scrolloff=10        "show always last 10 lines
set textwidth=80        "limit textwidth
set autoindent          "allow autoindent
set smarttab

set expandtab           "convert tabs to spaces
set ignorecase          "ignore case
set smartcase           "overwrite ignorecase on uppercase
set hlsearch            "highlights all search results
set incsearch

set showcmd             "show current command
set showmode            "show current mode
set laststatus=2

set history=200         "keep history
set title

set ttimeoutlen=50      "immediate update of statusbar when leaving insert mode

set colorcolumn=80


" [autocmds]

" " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "
" Prevent multiple sourcing of autocmds
augroup Group1
  autocmd!
  autocmd BufEnter *.tex map <C-t> :w<CR>:!pdflatex %<CR>
  autocmd BufEnter *.tex map <C-y> :w<CR>:!xelatex %<CR>
  "autocmd vimenter * if !argc() | NERDTree | endif
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
augroup END

" mappings
" " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "
set pastetoggle=<F2>

" use comma as <Leader> key instead of backslash
let mapleader=","

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

nmap <silent> <Space> :silent noh<CR>

nmap <C-e> :e#<CR>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap j gj
nnoremap k gk

" nnoremap ; :

" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" [file specific]
" " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "

au BufRead,BufNewFile *.thy setfiletype isabelle
au BufRead,BufNewFile *.smt2 setfiletype smt-lib
au BufRead,BufNewFile *.scala setfiletype scala
au BufRead,BufNewFile *.tptp setfiletype tptp
au BufRead,BufNewFile *.ML setfiletype sml
au BufRead,BufNewFile *.sk set filetype=sketch

" plugins
" " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "
"
" CtrlP
nmap ; :CtrlPBuffer<CR>
":let g:ctrlp_map = '<Leader>t'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend|exe|so|class)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0

" NerdTree
map <C-n> :NERDTreeToggle<CR>
map <C-t> :TagbarToggle<CR>

" Airline
":let g:airline_theme='hybrid'
let g:falcon_airline = 1
let g:airline_theme='falcon'
let g:airline_powerline_fonts = 1

"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''

" Syntastic
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
