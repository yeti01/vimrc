" Language:     Colorful CSS Color Preview
" Author:       Ulrich Steinmann <usteinmann@gmx.de>

if !( has('gui_running') || &t_Co==256 ) | finish | endif

call css_color#init('any', 'pythonComment,pythonString')
