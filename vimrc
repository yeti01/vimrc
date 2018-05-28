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
set nohlsearch          " highlight matches for last used search pattern (no)

if has("langmap")
    try
        language messages en_US.UTF-8
        language time en_US
    catch
    endtry
endif

if has("autocmd")
    filetype plugin indent on
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
" fileencoding
set statusline+=[%{(&fenc!=''?&fenc:&enc).(&bomb?'-bom':'')}]
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
" 10 printing
" ----------------------------------------------------------------------------
" items that control the format of :hardcopy
set printoptions=header:0,syntax:n,wrap:n

" ----------------------------------------------------------------------------
" 11 messages and info
" ----------------------------------------------------------------------------
set showcmd             " show (partial) command keys in the status line 
set novisualbell        " use a visual bell instead of beeping (no)

" ----------------------------------------------------------------------------
" 12 selecting text
" ----------------------------------------------------------------------------
set selectmode=key      " when to start Select mode instead of Visual mode
set clipboard=unnamed   " use the * register like unnamed register
set keymodel=startsel   " what special keys can do

" ----------------------------------------------------------------------------
" 13 editing text
" ----------------------------------------------------------------------------
set undolevels=5000     " maximum number of changes that can be undone
set textwidth=0         " line length above which to break a line
set backspace=2         " specifies what <BS> CTRL-W etc can do in Insert mode
set complete=.,w,b,u    " specifies how Insert mode completion works
set showmatch           " when inserting a bracket, briefly jump to its match

" ----------------------------------------------------------------------------
" 14 tabs and indenting
" ----------------------------------------------------------------------------
set shiftround          " round to 'shiftwidth' for << and >>
set autoindent          " automatically set the indent of a new line

" ----------------------------------------------------------------------------
" 16 diff mode
" ----------------------------------------------------------------------------
" options for using diff mode
if has("diff")
    set diffopt+=iwhite,context:12
endif

" ----------------------------------------------------------------------------
" 18 reading and writing files
" ----------------------------------------------------------------------------
set nobackup            " keep a backup after overwriting a file (no)
set autoread            " automatically read a file when modified outside

" ----------------------------------------------------------------------------
" 20 command line editing 
" ----------------------------------------------------------------------------
set history=100         " how many command lines are remembered
set wildmenu            " command-line completion shows a list of matches

" ----------------------------------------------------------------------------
" 25 multi-byte characters
" ----------------------------------------------------------------------------
if has("multi_byte")
    set encoding=utf-8          " character encoding used in Vim
    set termencoding=utf-8      " character encoding used by the terminal
endif

" ----------------------------------------------------------------------------
" 26 various
" ----------------------------------------------------------------------------
set virtualedit=block   " when to use virtual editing

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
nmap <silent><F2>       :update<CR>
imap <silent><F2>       <C-O>:update<CR>

" open/browse files
nmap <F3>               :edit .<CR>

" toggle some settings
nmap <F4>               :set wrap!<CR>:set wrap?<CR>
nmap <F5>               :set ignorecase!<CR>:set ignorecase?<CR>
nmap <F6>               :set hlsearch!<CR>:set hlsearch?<CR>

" jump to tag
nnoremap <C-]>          g<C-]>
nnoremap <C-LeftMouse>  g<C-]>

" search for selected text
vnoremap *              y/<C-R>=escape(@",'\\/.*~[]')<CR><CR>
vnoremap #              y?<C-R>=escape(@",'\\/.*~[]')<CR><CR>

" undo/redo with blocks
inoremap <C-U>          <C-G>u<C-U>
inoremap <C-W>          <C-G>u<C-W>
inoremap <Space>        <Space><C-G>u
inoremap <Tab>          <Tab><C-G>u
inoremap <CR>           <CR><C-G>u

" ----------------------------------------------------------------------------
" Events
" ----------------------------------------------------------------------------
if has("autocmd") && has("eval")

" change to directory of file in buffer
autocmd BufEnter * silent! lcd %:p:h

endif

" ----------------------------------------------------------------------------
" Netrw settings
" ----------------------------------------------------------------------------
if has("eval")

" keep the current directory the same as the browsing directory
let g:netrw_keepdir=0

" long listing will be default
let g:netrw_longlist=1

" when sorting by name, first sort by the comma-separated pattern sequence
let g:netrw_sort_sequence='[\/]$'

" comma separated pattern list for hiding files
let g:netrw_list_hide='\.sw[a-p]'

endif

" ----------------------------------------------------------------------------
" Runtime scripts
" ----------------------------------------------------------------------------
runtime macros/matchit.vim

" ----------------------------------------------------------------------------
" Addon scripts
" ----------------------------------------------------------------------------
runtime vimrc.plugin.vim

" ----------------------------------------------------------------------------
" User exit
" ----------------------------------------------------------------------------
runtime after/vimrc.user.vim
" vim:ts=8:sw=4:sts=4:et:ff=unix
