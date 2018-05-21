" filetype.vim

if exists("did_load_filetypes")
    finish
endif

augroup filetypedetect

" Apache
autocmd! BufNewFile,BufRead */apache2*/*.conf*  setfiletype apache

" Excel
autocmd! BufNewFile,BufRead *.csv               setfiletype sql

" TeX
autocmd! BufNewFile,BufRead *.tex               setfiletype tex
autocmd! BufNewFile,BufRead *.lco               setfiletype tex

" Nroff/Troff
autocmd! BufNewFile,BufRead *.ms                setfiletype groff
autocmd! BufNewFile,BufRead *.mm                setfiletype groff
autocmd! BufNewFile,BufRead *.me                setfiletype groff
autocmd! BufNewFile,BufRead *.mom               setfiletype groff

" Pascal
autocmd! BufNewFile,BufRead *.p                 setfiletype pascal

" HTML, XML
autocmd! BufNewFile,BufRead *.xml               setfiletype xml
autocmd! BufNewFile,BufRead *.html              setfiletype html

augroup END
" vim:ts=8:sw=4:sts=4:et:ff=unix
