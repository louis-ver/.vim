" Make vim plugins play nice with nvim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
" Load plugins
execute pathogen#infect()
call pathogen#helptags()

let mapleader = ","

packloadall
silent! helptags ALL
filetype off

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Indent 2 spaces
filetype plugin indent on

" Copy the indent from the previous line when starting a new line.
" Automatically indent between curly braces and indent keywords
set smartindent

" Add clipboard support for macOS
set clipboard=unnamed

" Add mouse support in Terminal
set mouse=n

set autoindent
set complete-=i
set showmatch
set smarttab

set et
set tabstop=4
set shiftwidth=4
set expandtab
" Highlight search results
set hlsearch
" Search case insensitive
set ignorecase
" Except when search pattern contains upper case characters
set smartcase
" Clear highlighting on espace in normal mode
nnoremap <esc> :noh<return><esc>
" Automatically reread files that have been changed externally
set autoread
au FocusGained * :checktime

" Highlight the 80th column
set colorcolumn=80

" Show line numbers
set number

" Set the window title with the current file name, status and directory
set title

" Remap popup dialog navigation to Tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Theme
let g:airline_theme='solarized'
syntax on

" NERDTree
map <Leader>n :NERDTreeToggle<CR>
" Show hidden files
let NERDTreeShowHidden=1
let NERDTreeChDirMode=2

" Ack
" Run Ack against word under cursor
nnoremap <leader>s :Ack! <c-r><c-w><CR>
" Use the_silver_searcher as engine
let g:ackprg = 'ag --vimgrep'

" Don't jump to the first result automatically
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" Completion
if has('nvim')
  let g:deoplete#enable_at_startup = 1
endif
" Disable Preview pane
set completeopt-=preview

" CtrlP
nmap ; :CtrlPBuffer<CR>
