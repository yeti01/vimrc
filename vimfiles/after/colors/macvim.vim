highlight StatusLine            gui=bold guifg=White guibg=Black
highlight StatusLineNC          gui=bold guifg=DarkSlateGray guibg=Gray90
highlight Error                 gui=bold guifg=Orange

if &background=="light"
    highlight Comment           gui=NONE
    highlight Constant          guifg=OrangeRed
    highlight Identifier        guifg=SteelBlue4
    highlight DiffAdd           guibg=PaleGreen2
    highlight DiffChange        guibg=SkyBlue
    highlight DiffDelete        guibg=LightSlateBlue
    highlight CursorLine        guibg=Lavender
    highlight Search            guibg=Yellow
    highlight Conceal           guibg=White guifg=Black
endif

let g:colors_name="macvim"
" vim:ts=8:sw=4:sts=4:et:ff=unix
