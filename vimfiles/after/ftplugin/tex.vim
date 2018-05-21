" ----------------------------------------------------------------------------
" 4 displaying text
" ----------------------------------------------------------------------------
if has("conceal")
    " controls whether concealable text is hidden
    setlocal conceallevel=2  
endif

" ----------------------------------------------------------------------------
" 14 editing text
" ----------------------------------------------------------------------------
setlocal textwidth=88   " line length above which to break a line

" list of flags that tell how automatic formatting works
setlocal formatoptions=t

" ----------------------------------------------------------------------------
" 15 tabs and indenting
" ----------------------------------------------------------------------------
setlocal tabstop=8      " number of spaces a <Tab> in the text stands for
setlocal shiftwidth=4   " number of spaces used for each step of (auto)indent
setlocal softtabstop=4  " if non-zero, number of spaces to insert for a <Tab>
setlocal expandtab      " expand <Tab> to spaces in Insert mode

" ----------------------------------------------------------------------------
" Select compiler
" ----------------------------------------------------------------------------
compiler tex

" ----------------------------------------------------------------------------
" Keyboard mapping
" ----------------------------------------------------------------------------
nmap <buffer><silent><F9> :make<CR>
nmap <buffer><silent><S-F9> :View<CR>

" ----------------------------------------------------------------------------
" Conceal settings
" ----------------------------------------------------------------------------
let g:tex_conceal="abmg"
" vim:ts=8:sw=4:sts=4:et:ff=unix
