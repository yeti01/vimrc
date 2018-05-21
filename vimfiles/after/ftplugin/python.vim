" ----------------------------------------------------------------------------
" 14 editing text
" ----------------------------------------------------------------------------
setlocal textwidth=79   " line length above which to break a line

" ----------------------------------------------------------------------------
" 15 tabs and indenting
" ----------------------------------------------------------------------------
setlocal tabstop=8      " number of spaces a <Tab> in the text stands for
setlocal shiftwidth=4   " number of spaces used for each step of (auto)indent
setlocal softtabstop=4  " if non-zero, number of spaces to insert for a <Tab>
setlocal expandtab      " expand <Tab> to spaces in Insert mode

" ----------------------------------------------------------------------------
" Keyboard mapping
" ----------------------------------------------------------------------------
nmap <buffer><silent><S-F9> :call Run()<CR>

" --FUNCTION------------------------------------------------------------------
" Run
" ----------------------------------------------------------------------------
function! Run()
    let l:target=escape(expand("%:p"),' ')
    execute "!python ".l:target
endfunction
" vim:ts=8:sw=4:sts=4:et:ff=unix
