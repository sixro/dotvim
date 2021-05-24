" Setup pathogen
" Use the command Helptags to refresh 'help' again
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set nocompatible
syntax enable
filetype plugin on
filetype indent on
set encoding=utf-8
let mapleader=","
set hidden          " Avoid the need of save current buffer before switching to another
set wildmenu
set relativenumber
set autoindent
set tabstop=4
set sw=4
set showmatch
set list
set listchars=tab:▸\ ,trail:·,precedes:←,extends:→
" Search
set hlsearch
set incsearch
nnoremap <Leader><Space> :nohlsearch<CR>
" Disable the fuck*** bell
set visualbell
" Improve performance of macros avoiding redrawing continuosly
set lazyredraw
set foldenable

" Allows to move visual selected rows to left/right preserving the selection
vmap > >gv
vmap < <gv

" Navigate fast in quicklist
nmap <C-n> :cn<CR>
nmap <C-p> :cp<CR>

" Edit vimrc on the right and reload it on save
nmap <silent> <Leader>v :vert sb<CR><C-w>l:e $MYVIMRC<CR>
nmap <silent> <Leader>V :source $MYVIMRC<CR>
augroup VimReload
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

colorscheme mnmlight

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

" ==  Markdown  ================================================================
" <Leader>h
" Transform a summary item in the following format
"     * [Awesome videos](#awesome-videos)
" in a header of level 2 such as:
"     ## <a name="awesome-videos"></a>Awesome videos
autocmd FileType md,markdown map ch 0df[dt]$p0c3l## <a name="<ESC>/)<CR>cl"></a><ESC>
" <Leader>b
" Transform a visual selected text in bold (**xxx**), because it vim-surround
" cannot be used in this case
" autocmd FileType md,markdown vmap <silent> <Leader>b di**<Esc>pi**<Esc>
autocmd FileType md,markdown vmap <silent> cb di**<Esc>pi**<Esc>
autocmd FileType md,markdown vmap <silent> ci di*<Esc>pi*<Esc>
autocmd FileType md,markdown vmap <silent> cc di`<Esc>pi`<Esc>

" ==  Plugins  =================================================================
" vim-schlepp
vmap <silent> <up>    <Plug>SchleppUp
vmap <silent> <down>  <Plug>SchleppDown
vmap <silent> <left>  <Plug>SchleppLeft
vmap <silent> <right> <Plug>SchleppRight
vmap <silent> D <Plug>SchleppDup
" vim-java-maven
let g:javamaven_debug=0
" vim-mnmlight
nmap <silent> _s :call mnmlight#ToggleSyntax()<CR>
nmap <silent> _z :call mnmlight#CheckSynStack()<CR>
nmap <silent> _c :call mnmlight#TestSyntax()<CR>
nmap <silent> _l :set list! list?<CR>

" ==  Experiments  =============================================================
function! TestInput()
	let name = input("Insert your name:")
	echo name
endfunction
nmap <silent> <Leader>t :call TestInput()<CR>
