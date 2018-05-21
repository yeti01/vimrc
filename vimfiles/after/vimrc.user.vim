" ----------------------------------------------------------------------------
" 2 moving around, searching and patterns
" ----------------------------------------------------------------------------
" directory names used for file searching
let path_save=&path

set path=$HOME/Sites/myProject/**

exe "set path+=".path_save

" ----------------------------------------------------------------------------
" 3 tags
" ----------------------------------------------------------------------------
" list of file names to search for tags
set tags+=$HOME/Sites/myProject/tags

" ----------------------------------------------------------------------------
" 5 syntax and highlighting
" ----------------------------------------------------------------------------
colorscheme default

" ----------------------------------------------------------------------------
" 9 GUI
" ----------------------------------------------------------------------------
if has("gui_running") && has("win32")
    set guifont=Lucida_Console:h8       
    set linespace=3     " number of pixel lines to use between characters
endif

" ----------------------------------------------------------------------------
" 10 printing
" ----------------------------------------------------------------------------
" font to be used for :hardcopy
set printfont=Courier:h10

" ----------------------------------------------------------------------------
" Keyboard mapping
" ----------------------------------------------------------------------------
if has("eval")
    let mapleader=","
endif

" ----------------------------------------------------------------------------
" Netrw plugin
" ----------------------------------------------------------------------------
" comma separated pattern list for hiding files
let g:netrw_list_hide=g:netrw_list_hide.',\.DS_Store'

" ----------------------------------------------------------------------------
" Grep plugin
" ----------------------------------------------------------------------------
" list of directories to skip while doing recursive searches
let Grep_Skip_Dirs=
    \'CVS .svn build .metadata'

" files in which to search for the pattern
let Grep_Default_Filelist=
    \'*.cpp *.hpp *.c *.h *.m *.java *.js *.php *.phtml *.html *.xml *.css'
" vim:ts=8:sw=4:sts=4:et:ff=unix
