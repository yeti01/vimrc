" ----------------------------------------------------------------------------
" 15 tabs and indenting
" ----------------------------------------------------------------------------
set tabstop=8           " number of spaces a <Tab> in the text stands for
set shiftwidth=4        " number of spaces used for each step of (auto)indent
set softtabstop=4       " if non-zero, number of spaces to insert for a <Tab>
set expandtab           " expand <Tab> to spaces in Insert mode
set cindent             " enable specific indenting for C code

" ----------------------------------------------------------------------------
" 19 running make and jumping to errors
" ----------------------------------------------------------------------------
if has("win32")
    " list of formats for error messages
    set errorformat+=LINK\ :\ fatal\ %m\ '%f'
    set errorformat+=NMAKE\ :\ fatal\ %m
    set errorformat+=%f\ :\ fatal\ %m
endif

" ----------------------------------------------------------------------------
" Keyboard mapping
" ----------------------------------------------------------------------------
nmap <F9> :make<CR>
" vim:ts=8:sw=4:sts=4:et:ff=unix
