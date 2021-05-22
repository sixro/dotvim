runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set nocompatible
syntax enable
filetype plugin on
filetype indent on
set encoding=utf-8

let mapleader=","

" Avoid the need of save current buffer before switching to another
set hidden
set wildmenu
set number numberwidth=5 relativenumber

set autoindent
set tabstop=4
set showmatch

" Colorscheme
set background=dark
colorscheme medic_chalk


" Search
set hlsearch
set incsearch
nnoremap <Leader><Space> :nohlsearch<CR>

" Improve performance of macros avoiding redrawing continuosly
set lazyredraw
set foldenable


" ==  Learning Improvement  ====================================================

" Disable Arrow keys in Escape and Insert mode
" Disabled because I'm using cursors with vim-schlepp
" map <Up>    <Nop>
" map <Down>  <Nop>
" map <Left>  <Nop>
" map <Right> <Nop>
" imap <Up>    <Nop>
" imap <Down>  <Nop>
" imap <Left>  <Nop>
" imap <Right> <Nop>


" ==  Windows Environment "  ===================================================

" Disable the fuck*** bell
set visualbell


" ==  Development  =============================================================

set path=$PWD/**


" ==  Markdown  ================================================================

" <Leader>h
" Transform a summary item in the following format
"     * [Awesome videos](#awesome-videos)
" in a header of level 2 such as:
"     ## <a name="awesome-videos"></a>Awesome videos
autocmd FileType md,markdown map <Leader>h 0df[dt]$p0c3l## <a name="<ESC>/)<CR>cl"></a><ESC>


" ==  Plugins  =================================================================
" vim-schlepp
vmap <unique> <up>    <Plug>SchleppUp
vmap <unique> <down>  <Plug>SchleppDown
vmap <unique> <left>  <Plug>SchleppLeft
vmap <unique> <right> <Plug>SchleppRight
vmap <unique> D <Plug>SchleppDup

" vim-java-maven
let g:javamaven_debug=1

