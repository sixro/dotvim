runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

let mapleader=","

set hidden


" ==  Markdown  ================================================================

" <Leader>h
" Transform a summary item in the following format
"     * [Awesome videos](#awesome-videos)
" in a header of level 2 such as:
"     ## <a name="awesome-videos"></a>Awesome videos
autocmd FileType md,markdown map <Leader>h 0df[dt]$p0c3l## <a name="<ESC>/)<CR>cl"></a><ESC>
