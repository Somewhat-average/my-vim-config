" Matthew's Vim Configuration
" =========================

" Disable vi compatibility mode
set nocompatible

" Enable syntax highlighting
syntax enable

" Enable file type detection and plugins
filetype plugin on

" Add ** to the path for better file finding
set path+=**

" Enable wildmenu for better command completion
set wildmenu

" Ignore specific file types in completion
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Show line numbers relative to current line
set rnu

" Show absolute line numbers
set number

" Set tab stop width to 4 spaces
set tabstop=4

" Set shift width for indentation to 4 spaces
set shiftwidth=4

" Set scroll offset to 8 lines
set scrolloff=8

" Disable netrw banner
let g:netrw_banner=0

" Set netrw list style to tree view
let g:netrw_liststyle=3

" Convert tabs to spaces
set expandtab

" Enable smart indentation
set smartindent

" Enable smart tab behavior
set smarttab

" Disable line wrapping
set nowrap

" Disable swap files
set noswapfile

" Disable backup files
set nobackup

" Enable highlighting of search results
set hlsearch

" Enable incremental search
set incsearch

" Enable true color support
set termguicolors

" Set timeout length for key mappings
set timeoutlen=1000 ttimeoutlen=0

" Allow switching between buffers without saving
set hidden

" Remove automatic commenting on new line?
autocmd Filetype * setlocal formatoptions-=c formatoptions-=r  formatoptions-=o

" Set color scheme
colorscheme sorbet

" Set leader key to space
let g:mapleader = " "

" Improved navigation with centering
nnoremap n nzzzv
nnoremap N Nzzzv

" Join lines with better cursor positioning
nnoremap J mzJ`z

" Open terminal with Ctrl-t
map <C-t> :ter<CR>

" Exit terminal mode with Ctrl-t
tnoremap <C-t> exit<CR>

" Open file explorer with leader-pv
nnoremap <leader>pv :Ex<CR>

" Move selected text up/down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Center view when scrolling
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Search and replace with word under cursor
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

" Comment selection with block comment
nnoremap <leader>/ I/* <Esc>A */<Esc>^

" Delete block comment section
nnoremap <leader>\ ^d3l<Esc>$d2hx<Esc>^

" LEARN HOW TO USE ins-completion
