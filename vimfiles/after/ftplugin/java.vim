" ----------------------------------------------------------------------------
" 14 editing text
" ----------------------------------------------------------------------------
" flags that tell how automatic formatting works
setlocal formatoptions-=o

if v:version >= 704
    setlocal formatoptions+=j
endif

" ----------------------------------------------------------------------------
" 15 tabs and indenting
" ----------------------------------------------------------------------------
setlocal tabstop=8      " number of spaces a <Tab> in the text stands for
setlocal shiftwidth=4   " number of spaces used for each step of (auto)indent
setlocal softtabstop=4  " if non-zero, number of spaces to insert for a <Tab>
setlocal expandtab      " expand <Tab> to spaces in Insert mode

" ----------------------------------------------------------------------------
" 22 executing external commands
" ----------------------------------------------------------------------------
if executable("uncrustify") && filereadable(g:uncrustify_cfg_file)
    " program used to format lines with 'gq' command
    let b:formatprg="uncrustify --frag -q"
                \. " -l JAVA"
                \. " -c " . shellescape(g:uncrustify_cfg_file)
endif

" ----------------------------------------------------------------------------
" 25 language specific
" ----------------------------------------------------------------------------
setlocal iskeyword-=:   " specifies the characters in a keyword

" ----------------------------------------------------------------------------
" Select compiler
" ----------------------------------------------------------------------------
compiler javac

" ----------------------------------------------------------------------------
" Keyboard mapping
" ----------------------------------------------------------------------------
nmap <buffer><silent><F9> :make<CR>
" vim:ts=8:sw=4:sts=4:et:ff=unix
