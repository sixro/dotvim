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

" Setup java syntax in a way where javadoc remains as a comment
let java_ignore_javadoc=1

" Colorscheme
" set background=dark
" colorscheme torte
" colorscheme medic_chalk
if exists("syntax_on")
  syntax reset
endif
" See here for colors: https://jonasjacek.github.io/colors/
set background=light
hi clear
hi Normal ctermbg=256 ctermfg=0
hi Comment ctermfg=250
hi Ignore ctermfg=250
hi Statement ctermfg=240
hi Special ctermfg=0
hi PreProc ctermfg=0
hi Identifier ctermfg=0
hi Type ctermfg=0
hi Constant ctermfg=160
hi Underlined ctermfg=0 term=underline
hi Todo ctermfg=15 ctermbg=34

hi Visual ctermfg=0 ctermbg=229
hi LineNr ctermfg=247 ctermbg=255

" See here for java syntax: https://github.com/vim/vim/blob/master/runtime/syntax/java.vim
hi def link javaStorageClass Statement
hi def link javaClassDecl Statement
hi def link javaType Statement
hi def link javaTypedef Statement
hi def link javaExternal Statement
hi def link javaConditional Statement
hi def link javaRepeat Statement
hi def link javaExceptions Statement
hi def link javaOperator Statement
hi def link javaConstant Statement
hi def link javaBoolean Statement
hi javaAnnotation ctermfg=142

hi def link markdownUrl Comment
hi markdownLinkText ctermfg=57
hi markdownCode ctermfg=244
hi markdownCodeDelimiter ctermfg=244
hi markdownH1 ctermfg=91
hi markdownH2 ctermfg=91
hi markdownH3 ctermfg=91
hi markdownH4 ctermfg=91
hi markdownH5 ctermfg=91
hi markdownH6 ctermfg=91
hi def link markdownHeadingDelimiter Comment
hi def link markdownUrlDelimiter Comment
hi def link markdownUrlTitleDelimiter Comment

" Search
set hlsearch
set incsearch
nnoremap <Leader><Space> :nohlsearch<CR>

nmap <silent> <Leader>C :so $VIMRUNTIME/syntax/hitest.vim<CR><C-w>t<C-w>H<C-w>l
" Improve performance of macros avoiding redrawing continuosly
set lazyredraw
set foldenable

" Edit vimrc on the right and reload it on save
nmap <silent> <Leader>v :vert sb<CR><C-w>l:e $MYVIMRC<CR>
nmap <silent> <Leader>V :source $MYVIMRC<CR>
augroup VimReload
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" Toggle syntax hilighting
function! ToggleSyntax()
   if exists("g:syntax_on")
      syntax off
   else
      syntax enable
   endif
endfunction
nmap <silent> <Leader>s :call ToggleSyntax()<CR>

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
" <Leader>b
" Transform a visual selected text in bold (**xxx**), because it vim-surround
" cannot be used in this case
autocmd FileType md,markdown vmap <silent> <Leader>b di**<Esc>pi**<Esc>


" ==  Plugins  =================================================================
" vim-schlepp
vmap <silent> <up>    <Plug>SchleppUp
vmap <silent> <down>  <Plug>SchleppDown
vmap <silent> <left>  <Plug>SchleppLeft
vmap <silent> <right> <Plug>SchleppRight
vmap <silent> D <Plug>SchleppDup

" vim-java-maven
" let g:javamaven_debug=1

