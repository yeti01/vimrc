" filetype.vim

augroup filetype

" Excel
autocmd! BufNewFile,BufRead *.csv               set filetype=sql

" TeX
autocmd! BufNewFile,BufRead *.tex               set filetype=tex
autocmd! BufNewFile,BufRead *.lco               set filetype=tex

" Nroff/Troff
autocmd! BufNewFile,BufRead *.ms                set filetype=groff
autocmd! BufNewFile,BufRead *.mm                set filetype=groff
autocmd! BufNewFile,BufRead *.me                set filetype=groff
autocmd! BufNewFile,BufRead *.mom               set filetype=groff

" Pascal
autocmd! BufNewFile,BufRead *.p                 set filetype=pascal

" HTML, XML
autocmd! BufNewFile,BufRead *.xml               set filetype=xml
autocmd! BufNewFile,BufRead *.html              set filetype=html

augroup END
" vim:ts=8:sw=4:sts=4:et:ff=unix
