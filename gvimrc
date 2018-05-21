" ----------------------------------------------------------------------------
" 4 displaying text
" ----------------------------------------------------------------------------
set columns=111         " width of the display
set lines=45            " number of lines in the display

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

source $VIM/vimfiles/after/colors/default.vim

" ----------------------------------------------------------------------------
" 10 messages and info
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
" vim:ts=8:sw=4:sts=4:et:ff=unix
