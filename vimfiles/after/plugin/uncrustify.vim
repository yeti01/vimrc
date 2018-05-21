" uncrustify.vim
" Maintainer:   Ulrich Steinmann <usteinmann@gmx.de>
" Last Change:  2015 Dec 08

" Only do this when not done yet for this buffer
if exists("b:loaded_uncrustify") || !executable("uncrustify")
    finish
endif

" Don't load another plugin for this buffer
let b:loaded_uncrustify=1

let s:cpo_save=&cpo
set cpo&vim

" Beautify command
command! Beautify :call Uncrustify()

" Get uncrustify config file
if !filereadable("g:uncrustify_cfg_file")
    if ($UNCRUSTIFY_CONFIG != "")
        let g:uncrustify_cfg_file=$UNCRUSTIFY_CONFIG
    else
        let g:uncrustify_cfg_file="$HOME/.uncrustify.cfg"
    endif
endif

let g:uncrustify_cfg_file=expand(g:uncrustify_cfg_file, ":p")

" Execute uncrustify
" (http://stackoverflow.com/a/15513829/288089)
function! Uncrustify()
    if filereadable(g:uncrustify_cfg_file)
        call Preserve(":silent %!uncrustify -q"
            \. " -l " . &filetype
            \. " -c " . fnameescape(g:uncrustify_cfg_file))
    else
        echomsg "Missing uncrustify config file."
    endif
endfunction

" Wrapper function to restore some settings after running a command
" (https://docwhat.org/vim-preserve-your-cursor-and-window-state)
function! Preserve(command)
    " Save the last search
    let last_search=@/
    " Save the current cursor position
    let cursor_position=getpos(".")
    " Save the window position
    normal! H
    let window_position=getpos(".")
    call setpos(".", cursor_position)

    " Do the business:
    execute a:command

    " Restore the last search
    let @/=last_search
    " Restore the window position
    call setpos(".", window_position)
    normal! zt
    " Restore the cursor position
    call setpos(".", cursor_position)
endfunction

let &cpo=s:cpo_save
unlet s:cpo_save
" vim:ts=8:sw=4:sts=4:et:ff=unix
