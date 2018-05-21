" ----------------------------------------------------------------------------
" Scripts
" ----------------------------------------------------------------------------
"   grep                http://www.vim.org/scripts/script.php?script_id=311
"   cvscommand          http://www.vim.org/scripts/script.php?script_id=90
"   align               http://www.vim.org/scripts/script.php?script_id=294
"   sqlutilities        http://www.vim.org/scripts/script.php?script_id=492
"   aftercolors         http://www.vim.org/scripts/script.php?script_id=1641
"   stl                 http://www.vim.org/scripts/script.php?script_id=2224
"   dirdiff             http://www.vim.org/scripts/script.php?script_id=102
"   visincr             http://www.vim.org/scripts/script.php?script_id=670

" ----------------------------------------------------------------------------
" Grep plugin
" ----------------------------------------------------------------------------
if has("win32")
    " handle the difference between backslash and slash
    let Grep_Cygwin_Find=1

    " character to use to quote patterns and filenames
    let Grep_Shell_Quote_Char="\""
else
    " handle file names with space characters in them
    let Grep_Xargs_Options='-0'
endif

" ----------------------------------------------------------------------------
" SQLUtilities plugin
" ----------------------------------------------------------------------------
let g:sqlutil_keyword_case='\U' " case of the keywords should be changed
let g:sqlutil_align_where=0     " used to align operators
let g:sqlutil_align_comma=1     " force each column to be placed on a new line

" ----------------------------------------------------------------------------
" STL syntax
" ----------------------------------------------------------------------------
autocmd! FileType cpp runtime! after/syntax/cpp/stl.vim
" vim:ts=8:sw=4:sts=4:et:ff=unix
