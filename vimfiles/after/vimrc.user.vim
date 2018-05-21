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
" 9 GUI
" ----------------------------------------------------------------------------
if has("gui_running") && has("win32")
    set guifont=Lucida_Console:h8
endif

" ----------------------------------------------------------------------------
" Events
" ----------------------------------------------------------------------------
if has("autocmd") && has("eval")

autocmd! FileType *
    \ let g:ftplugin_file="$VIM/vimfiles/after/ftplugin/".&filetype.".vim" |
    \ if filereadable(expand(g:ftplugin_file)) |
    \     execute "source ".g:ftplugin_file |
    \ endif

endif
" vim:ts=8:sw=4:sts=4:et:ff=unix
