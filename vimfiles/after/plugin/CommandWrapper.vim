" ----------------------------------------------------------------------------
" Menu, Toolbar and Command
" ----------------------------------------------------------------------------
amenu 40.320 &Tools.Build\ &Tags\ File :call RunCtags()<CR>
amenu 40.360 &Tools.&Make<Tab>:make :call Make()<CR>

amenu 1.250 ToolBar.Make :call Make()<CR>
amenu 1.270 ToolBar.RunCtags :call RunCtags()<CR>

cnoreabbrev make <C-R>=
    \(getcmdtype()==":" && getcmdpos()==1 ? "call Make()" : "make")<CR>

autocmd QuickFixCmdPost grep cwindow

command RunCtags :call RunCtags()
command View :call View()

" --FUNCTION------------------------------------------------------------------
" Compile
" ----------------------------------------------------------------------------
function! Make()
    cclose | redraw
    echo "Compiling..."
    silent make!
    redraw!
    if !empty(filter(getqflist(),'v:val.valid'))
        copen
        wincmd p
    else
        cclose | redraw
        echo "Successfully compiled."
    endif
endfunction

" --FUNCTION------------------------------------------------------------------
" Build Tags
" ----------------------------------------------------------------------------
function! RunCtags()
    cclose | redraw
    echo "Building tags..."
    let cmd_output=system(g:ctags_command)
    redraw!
    if v:shell_error
        cclose | redraw
        echo "Error building tags."
    else
        cclose | redraw
        echo "Ready."
    endif
endfunction

" --FUNCTION------------------------------------------------------------------
" View PDF
" ----------------------------------------------------------------------------
function! View()
    let l:target='"'.expand("%:p:r").".pdf".'"'
    if has("mac")
        silent execute "!open ".l:target
    elseif has("win32")
        silent execute "silent ! ".l:target
    else
        if executable("xdg-open")
            silent execute "!xdg-open ".l:target
        elseif executable("gnome-open")
            silent execute "!gnome-open ".l:target
        endif
    endif
endfunction
" vim:ts=8:sw=4:sts=4:et:ff=unix
