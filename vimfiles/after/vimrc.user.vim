" ----------------------------------------------------------------------------
" 2 moving around, searching and patterns
" ----------------------------------------------------------------------------
" directory names used for file searching
let path_save=&path

set path=$HOME/Sites/myProject/**

exe "set path+=".path_save

" ----------------------------------------------------------------------------
" 3 tags
" ----------------------------------------------------------------------------
" list of file names to search for tags
set tags+=$HOME/Sites/myProject/tags
set tags+=$VIM/vim-cpp-stl/tags

" ----------------------------------------------------------------------------
" 5 syntax, highlighting and spelling
" ----------------------------------------------------------------------------
set spelllang+=de       " list of accepted languages

if has("gui_running")
    set background=light
    colorscheme macvim
elseif ($TERM == "xterm-256color" && $COLORTERM != "truecolor")
    set t_Co=256
    set background=light
    colorscheme solarized
else
    set t_Co=16
    set background=light
    colorscheme solarized
endif

" ----------------------------------------------------------------------------
" 10 GUI
" ----------------------------------------------------------------------------
if has("gui_running")

if has("win32")
    set guifont=Consolas:h9
    set linespace=0     " number of pixel lines to use between characters
elseif has("mac")
    set guifont=Menlo\ Regular:h12
else
    set guifont=Monospace\ 9
endif

endif

" ----------------------------------------------------------------------------
" 11 printing
" ----------------------------------------------------------------------------
" font to be used for :hardcopy
set printfont=Courier:h10

" ----------------------------------------------------------------------------
" Keyboard mapping
" ----------------------------------------------------------------------------
if has("eval")
    let mapleader=","
endif

" ----------------------------------------------------------------------------
" Netrw plugin
" ----------------------------------------------------------------------------
" comma separated pattern list for hiding files
let g:netrw_list_hide=g:netrw_list_hide.',\.DS_Store'

" ----------------------------------------------------------------------------
" Grep plugin
" ----------------------------------------------------------------------------
if has("win32")
    " handle the difference between backslash and slash
    let Grep_Cygwin_Find=1

    " character to use to quote patterns and filenames
    let Grep_Shell_Quote_Char='"'
endif

" list of directories to skip while doing recursive searches
let Grep_Skip_Dirs=
    \'CVS .svn .git build .metadata'

" files in which to search for the pattern
let Grep_Default_Filelist=
    \'*.cpp *.hpp *.c *.h *.m *.java *.js *.php *.phtml *.html *.xml *.css'

" ----------------------------------------------------------------------------
" CtrlP plugin
" ----------------------------------------------------------------------------
" set the default opening command to use
let g:ctrlp_cmd='CtrlP $HOME/Sites/myProject'

" specify an external tool to use for listing files
if has("win32")
    let s:findprg='dir %s /-n /b /s /a-d'
    let s:grepprg='findstr /v '
else
    let s:findprg='find %s -type f'
    let s:grepprg='grep -v '
endif

let g:ctrlp_user_command=s:findprg
    \. ' | ' . s:grepprg . '\CVS\'
    \. ' | ' . s:grepprg . '\.svn\'
    \. ' | ' . s:grepprg . '\.git\'
    \. ' | ' . s:grepprg . '".sw[a-p]"'
    \. ' | ' . s:grepprg . '\.DS_Store'
    \. ' | ' . s:grepprg . '\build\'
    \. ' | ' . s:grepprg . '\.metadata\'

if !has("win32")
    let g:ctrlp_user_command=substitute(g:ctrlp_user_command, '\', '/', 'g')
endif

" ----------------------------------------------------------------------------
" SnipMate plugin
" ----------------------------------------------------------------------------
let g:snipmate_address_file="$HOME/.address.vim"
let g:snipmate_address_file=expand(g:snipmate_address_file, ":p")

if filereadable(g:snipmate_address_file)
    execute "source " . fnameescape(g:snipmate_address_file)
endif

" ----------------------------------------------------------------------------
" Uncrustify
" ----------------------------------------------------------------------------
let g:uncrustify_cfg_file='$HOME/.uncrustify.cfg'
let g:uncrustify_cfg_file=expand(g:uncrustify_cfg_file, ":p")
" vim:ts=8:sw=4:sts=4:et:ff=unix
