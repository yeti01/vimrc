" ----------------------------------------------------------------------------
" Scripts
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" 1. Utilities
" ----------------------------------------------------------------------------
"   grep                https://github.com/yeti01/grep
"   vcscommand          http://www.vim.org/scripts/script.php?script_id=90
"   align               http://www.vim.org/scripts/script.php?script_id=294
"   sqlutilities        http://www.vim.org/scripts/script.php?script_id=492
"   aftercolors         http://www.vim.org/scripts/script.php?script_id=1641
"   dirdiff             http://www.vim.org/scripts/script.php?script_id=102
"   visincr             http://www.vim.org/scripts/script.php?script_id=670
"   omnicppcomplete     https://github.com/yeti01/OmniCppComplete
"   tags for std c++    http://www.vim.org/scripts/script.php?script_id=2358
"   fencview            http://www.vim.org/scripts/script.php?script_id=1708
"   snipmate            https://github.com/yeti01/snipmate.vim
"   ctrlp               http://www.vim.org/scripts/script.php?script_id=3736
"   buffet              https://github.com/yeti01/buffet.vim
"   twig                https://github.com/evidens/vim-twig

" ----------------------------------------------------------------------------
" 2. Color schemes
" ----------------------------------------------------------------------------
"   solarized           https://github.com/yeti01/vim-colors-solarized

" ----------------------------------------------------------------------------
" 3. Syntax
" ----------------------------------------------------------------------------
"   cpp                 https://github.com/octol/vim-cpp-enhanced-highlight
"   css                 https://github.com/ap/vim-css-color
"   mom                 http://www.vim.org/scripts/script.php?script_id=1231
"   ngc                 http://wiki.linuxcnc.org/uploads/ngc.vim

" ----------------------------------------------------------------------------
" Align plugin
" ----------------------------------------------------------------------------
" no extra menu
let g:DrChipTopLvlMenu="Plugin."

" ----------------------------------------------------------------------------
" SQLUtilities plugin
" ----------------------------------------------------------------------------
let g:sqlutil_keyword_case='\U' " case of the keywords should be changed
let g:sqlutil_align_where=0     " used to align operators
let g:sqlutil_align_comma=1     " force each column to be placed on a new line

" ----------------------------------------------------------------------------
" OmniCppComplete plugin
" ----------------------------------------------------------------------------
let OmniCpp_MayCompleteDot=0    " automatically completion after '.' (no)
let OmniCpp_MayCompleteArrow=0  " automatically completion after '->' (no)
let OmniCpp_DefaultNamespaces=["std"] " default namespace list

" ----------------------------------------------------------------------------
" Fencview plugin
" ----------------------------------------------------------------------------
let g:fencview_autodetect=0     " Auto detect file encoding (no)

" ----------------------------------------------------------------------------
" CtrlP plugin
" ----------------------------------------------------------------------------
let g:ctrlp_by_filename=1       " set searching by filename as the default
let g:ctrlp_regexp=1            " set regexp search as the default
let g:ctrlp_max_height=20       " set the maximum height of the match window
let g:ctrlp_max_files=0         " maximum number of files to scan (0=no limit)

"specify how files are to be opened
let g:ctrlp_open_new_file='r'
let g:ctrlp_open_multiple_files='1r'

" ----------------------------------------------------------------------------
" Solarized
" ----------------------------------------------------------------------------
let g:solarized_italic=0
let g:solarized_diffmode="high"

" ----------------------------------------------------------------------------
" CPP enhanced highlight
" ----------------------------------------------------------------------------
let g:cpp_member_variable_highlight=1

" ----------------------------------------------------------------------------
" CSS color
" ----------------------------------------------------------------------------
" let syn_fg = r*30 + g*59 + b*11 > 12800 ? s:black : s:white

" ----------------------------------------------------------------------------
" SnipMate plugin
" ----------------------------------------------------------------------------
let g:snips_author='Max Mustermann'
let g:snips_fromname='Max Mustermann'
let g:snips_fromaddress='Kurfürstendamm 42, 10719 Berlin'
let g:snips_fromphone='030-88154711'
let g:snips_place='Berlin'

" ----------------------------------------------------------------------------
" Buffet plugin
" ----------------------------------------------------------------------------
highlight link buffethelpline StatusLineNC
" vim:ts=8:sw=4:sts=4:et:ff=unix
