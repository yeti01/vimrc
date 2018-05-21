" ----------------------------------------------------------------------------
" 1 important
" ----------------------------------------------------------------------------
set nocompatible        " behave very Vi compatible (no)
set pastetoggle=<F11>   " key sequence to toggle paste mode

" ----------------------------------------------------------------------------
" 2 moving around, searching and patterns
" ----------------------------------------------------------------------------
set whichwrap+=<,>,[,]  " flags specifying which commands wrap to another line
set nostartofline       " jump commands move cursor to first non-blank (no)
set path=./**           " directory names used for file searching
set noincsearch         " show match for partly typed search command (no)
set ignorecase          " ignore case when using a search pattern
set smartcase           " no ignorecase when pattern has upper case characters

" ----------------------------------------------------------------------------
" 3 tags
" ----------------------------------------------------------------------------
set tags=./tags         " list of file names to search for tags

" ----------------------------------------------------------------------------
" 4 displaying text
" ----------------------------------------------------------------------------
set nowrap              " long lines wrap (no)
set linebreak           " wrap long lines at a character in 'breakat'
set number              " show the line number for each line

" ----------------------------------------------------------------------------
" 5 syntax and highlighting
" ----------------------------------------------------------------------------
set nohlsearch          " highlight matches for current search pattern (no)

if has("autocmd")
    let myfiletypefile="$VIM/vimfiles/filetype.vim"
    filetype on
endif

if has("syntax")
    syntax on
endif

" ----------------------------------------------------------------------------
" 6 multiple windows
" ----------------------------------------------------------------------------
set laststatus=2        " when to use a status line for the last window

" Emulate standard status line with 'ruler' set
" :set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" path to the file in the buffer
set statusline=%<%f
" help buffer flag, text is [help]
set statusline+=\ %h
" modified flag, text is [+]
set statusline+=%m
" readonly flag, text is [RO]
set statusline+=%r
" fileformat
set statusline+=[%{&ff}]
" separation point between left and right aligned items
set statusline+=%=
" value of byte under cursor (hexadecimal)
set statusline+=\ \ 0x%02B
" line number, column number, virtual column number
set statusline+=\ \ %-14.(%l,%c%V%)
" percentage through file of displayed window
set statusline+=\ %P

set hidden              " don't unload a buffer when no longer shown

" ----------------------------------------------------------------------------
" 8 using the mouse
" ----------------------------------------------------------------------------
if has("mouse")
    set mouse=a                 " list of flags for using the mouse
    set mousemodel=popup        " what the right mouse button is used for
endif

" ----------------------------------------------------------------------------
" 10 messages and info
" ----------------------------------------------------------------------------
set showcmd             " show (partial) command keys in the status line 
set novisualbell        " use a visual bell instead of beeping (no)

" ----------------------------------------------------------------------------
" 11 selecting text
" ----------------------------------------------------------------------------
set selectmode=key      " when to start Select mode instead of Visual mode
set clipboard=unnamed   " use the * register like unnamed register
set keymodel=startsel   " what special keys can do

" ----------------------------------------------------------------------------
" 12 editing text
" ----------------------------------------------------------------------------
set undolevels=5000     " maximum number of changes that can be undone
set textwidth=0         " line length above which to break a line
set backspace=2         " what <BS> can do in Insert mode
set complete=.,w,b,u    " specifies how Insert mode completion works
set showmatch           " when inserting a bracket, briefly jump to its match

" ----------------------------------------------------------------------------
" 13 tabs and indenting
" ----------------------------------------------------------------------------
set shiftround          " round to 'shiftwidth' for << and >>
set autoindent          " automatically set the indent of a new line

" ----------------------------------------------------------------------------
" 15 reading and writing files
" ----------------------------------------------------------------------------
set nobackup            " keep a backup after overwriting a file (no)

" ----------------------------------------------------------------------------
" 17 command line editing 
" ----------------------------------------------------------------------------
set history=100         " how many command lines are remembered
set wildmenu            " command-line completion shows a list of matches

" ----------------------------------------------------------------------------
" 21 various
" ----------------------------------------------------------------------------
" list that specifies what to write in the viminfo file
set viminfo='20,\"50,h

" ----------------------------------------------------------------------------
" Keyboard mapping
" ----------------------------------------------------------------------------
" Command    Normal     Visual     Operator   Insert     Command
"                                  Pending               Line
" :map       X          X          X          -          -
" :nmap      X          -          -          -          -
" :vmap      -          X          -          -          -
" :omap      -          -          X          -          -
" :map!      -          -          -          X          X
" :imap      -          -          -          X          -
" :cmap      -          -          -          -          X
" ----------------------------------------------------------------------------
" save file
nmap <F2>               :update<CR>
imap <F2>               <C-O>:update<CR>

" open/browse files
nmap <F3>               :call ExplInitiate(0)<CR>

" toggle some settings
nmap <F4>               :set wrap!<CR>:set wrap?<CR>
nmap <F5>               :set ignorecase!<CR>:set ignorecase?<CR>
nmap <F6>               :set hlsearch!<CR>:set hlsearch?<CR>

" jump to tag
nmap <C-]>              g<C-]>
nmap <C-LeftMouse>      g<C-]>

" search for selected text
vmap *                  y/<C-R>=escape(@",'\\/.*~[]')<CR><CR>
vmap #                  y?<C-R>=escape(@",'\\/.*~[]')<CR><CR>

" ----------------------------------------------------------------------------
" Events
" ----------------------------------------------------------------------------
if has("autocmd") && has("eval")

" change to directory of file in buffer
autocmd BufEnter * cd %:p:h

endif

" ----------------------------------------------------------------------------
" Runtime scripts
" ----------------------------------------------------------------------------
source $VIMRUNTIME/macros/diffwin.vim
source $VIMRUNTIME/macros/explorer.vim

" ----------------------------------------------------------------------------
" Addon scripts
" ----------------------------------------------------------------------------
source $VIM/vimfiles/vimrc.plugin.vim

" ----------------------------------------------------------------------------
" User exit
" ----------------------------------------------------------------------------
source $VIM/vimfiles/after/vimrc.user.vim
" vim:ts=8:sw=4:sts=4:et:ff=unix
