" ----------------------------------------------------------------------------
" Select compiler
" ----------------------------------------------------------------------------
compiler fortran_g77

" ----------------------------------------------------------------------------
" Keyboard mapping
" ----------------------------------------------------------------------------
nmap <buffer><silent><F9> :make<CR>

" ----------------------------------------------------------------------------
" Fixed/free form source
" ----------------------------------------------------------------------------
if (expand("%:e") == "f90")
    let fortran_have_tabs=1
    let b:fortran_free_source=1
    unlet! b:fortran_fixed_source
else
    let b:fortran_fixed_source=1
    unlet! b:fortran_free_source
endif
" vim:ts=8:sw=4:sts=4:et:ff=unix
