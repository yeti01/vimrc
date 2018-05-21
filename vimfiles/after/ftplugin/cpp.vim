let g:ftpluginfile="$VIM/vimfiles/after/ftplugin/c.vim"

if filereadable(expand(g:ftpluginfile))
    execute "source ".g:ftpluginfile
endif
" vim:ts=8:sw=4:sts=4:et:ff=unix
