" ----------------------------------------------------------------------------
" 4 displaying text
" ----------------------------------------------------------------------------
set columns=111         " width of the display
set lines=45            " number of lines in the display

if has("eval")
    let g:MyColumns=&columns
    let g:MyLines=&lines
endif

" ----------------------------------------------------------------------------
" 7 terminal
" ----------------------------------------------------------------------------
" specifies what the cursor looks like in different modes
set guicursor+=n:blinkon0

" ----------------------------------------------------------------------------
" 9 GUI
" ----------------------------------------------------------------------------
set guioptions+=b       " bottom (horizontal) scrollbar is present
set browsedir=buffer    " which directory used for the file browser

" ----------------------------------------------------------------------------
" 11 messages and info
" ----------------------------------------------------------------------------
set visualbell t_vb=    " no beep or flash is wanted

" ----------------------------------------------------------------------------
" Keyboard mapping
" ----------------------------------------------------------------------------
" buffer switch
nmap <C-Tab>            :bnext!<CR>
nmap <C-S-Tab>          :bprevious!<CR>

" buffer close
nmap <C-F4>             :bdelete<CR>

" change window size
if has("eval")

nmap <Leader><Left>     :let &columns=&columns-40<CR>
nmap <Leader><Right>    :let &columns=&columns+40<CR>
nmap <Leader><Up>       :let &lines=&lines-10<CR>
nmap <Leader><Down>     :let &lines=&lines+10<CR>
nmap <Leader><Space>    :execute "winsize ".g:MyColumns." ".g:MyLines<CR>

endif
" vim:ts=8:sw=4:sts=4:et:ff=unix
