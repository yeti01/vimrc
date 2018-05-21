" ----------------------------------------------------------------------------
" 1 important
" ----------------------------------------------------------------------------
" list of directories used for runtime files and plugins
if has("win32")
    set runtimepath+=$VIM/vimfiles/win32
    set runtimepath+=$HOME/vimfiles/win32
endif

" ----------------------------------------------------------------------------
" 4 displaying text
" ----------------------------------------------------------------------------
set sidescroll=6        " minimal number of columns to scroll horizontally
set columns=111         " width of the display
set lines=45            " number of lines in the display

if has("eval")
    let g:MyColumns=&columns
    let g:MyLines=&lines
endif

" ----------------------------------------------------------------------------
" 8 terminal
" ----------------------------------------------------------------------------
" specifies what the cursor looks like in different modes
set guicursor+=n:blinkon0

" ----------------------------------------------------------------------------
" 10 GUI
" ----------------------------------------------------------------------------
set guioptions+=T       " include toolbar
set guioptions+=b       " bottom (horizontal) scrollbar is present
set browsedir=buffer    " which directory used for the file browser

" ----------------------------------------------------------------------------
" 12 messages and info
" ----------------------------------------------------------------------------
set visualbell t_vb=    " no beep or flash is wanted

" ----------------------------------------------------------------------------
" Keyboard mapping
" ----------------------------------------------------------------------------
" buffer switch
nmap <C-Tab>            :bnext!<CR>
nmap <C-S-Tab>          :bprevious!<CR>

" buffer close
if has("mac")
    nmap <D-F4>         :bdelete<CR>
else
    nmap <C-F4>         :bdelete<CR>
endif

" change window size
if has("eval")

nmap <Leader><Left>     :let &columns-=40<CR>
nmap <Leader><Right>    :let &columns+=40<CR>
nmap <Leader><Up>       :let &lines-=10<CR>
nmap <Leader><Down>     :let &lines+=10<CR>
nmap <Leader><Space>    :execute "winsize ".g:MyColumns." ".g:MyLines<CR>

endif

" ----------------------------------------------------------------------------
" Resize split windows
" ----------------------------------------------------------------------------
if has("autocmd")
    autocmd VimResized * wincmd=
endif
" vim:ts=8:sw=4:sts=4:et:ff=unix
