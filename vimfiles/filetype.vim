" filetype.vim

if exists("did_load_filetypes")
    finish
endif

" POSIX shell
let g:is_posix=1

augroup filetypedetect

" Apache
autocmd! BufNewFile,BufRead */apache2*/*.conf*  setfiletype apache.xml

" Twig
autocmd! BufNewFile,BufRead *.twig              setfiletype twig

" Excel
autocmd! BufNewFile,BufRead *.csv               setfiletype sql

" Gnuplot
autocmd! BufNewFile,BufRead *.gnu               setfiletype gnuplot
autocmd! BufNewFile,BufRead *.gp                setfiletype gnuplot

" TeX
autocmd! BufNewFile,BufRead *.tex               setfiletype tex
autocmd! BufNewFile,BufRead *.lco               setfiletype tex

" Nroff/Troff
autocmd! BufNewFile,BufRead *.ms                setfiletype groff.ms
autocmd! BufNewFile,BufRead *.mm                setfiletype groff
autocmd! BufNewFile,BufRead *.me                setfiletype groff
autocmd! BufNewFile,BufRead *.mom               setfiletype mom.groff

" Objective C
autocmd! BufNewFile,BufRead *.m                 setfiletype objc

" Pascal
autocmd! BufNewFile,BufRead *.p                 setfiletype pascal

" Plant UML
autocmd! BufRead,BufNewFile *.pu,*.*uml
        \ if getline(1) =~# '@startuml\>'     | setfiletype plantuml |
        \ endif

" Spice
autocmd! BufNewFile,BufRead *.cir               setfiletype spice

" NEC2
autocmd! BufNewFile,BufRead *.nec               setfiletype nec

" CNC file
autocmd! BufNewFile,BufRead *.ngc               setfiletype ngc

augroup END
" vim:ts=8:sw=4:sts=4:et:ff=unix
