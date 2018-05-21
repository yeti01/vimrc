" ----------------------------------------------------------------------------
" 15 tabs and indenting
" ----------------------------------------------------------------------------
setlocal tabstop=8      " number of spaces a <Tab> in the text stands for
setlocal shiftwidth=2   " number of spaces used for each step of (auto)indent
setlocal softtabstop=2  " if non-zero, number of spaces to insert for a <Tab>
setlocal expandtab      " expand <Tab> to spaces in Insert mode

" ----------------------------------------------------------------------------
" 22 executing external commands
" ----------------------------------------------------------------------------
if executable("tidy")
    " program used to format lines with 'gq' command
    let b:formatprg="tidy -xml --quiet yes"
                \. " --indent auto"
                \. " --wrap 0"
endif
" vim:ts=8:sw=4:sts=4:et:ff=unix
