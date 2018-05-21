" formatprg.vim
" Maintainer:   Ulrich Steinmann <usteinmann@gmx.de>
" Last Change:  2016 Jan 06

" This is a workaround to make 'formatprg' local to the current buffer. Using
" the buffer variable 'b:formatprg' instead of assigning 'formatprg' directly
" you get the effect like the missing command 'setlocal formatprg'.
"
" Do something like this in your ftplugin file:
"
" let b:formatprg="uncrustify --frag -q -l CPP"

augroup formatprg

autocmd BufEnter,FileType *
    \ if exists("b:formatprg") |
    \     let &formatprg=b:formatprg |
    \ else |
    \     set formatprg= |
    \ endif

augroup END
" vim:ts=8:sw=4:sts=4:et:ff=unix
