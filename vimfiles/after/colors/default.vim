set background=light

if &background=="light"
    highlight Error             gui=bold guifg=Orange
    highlight DiffAdd           guibg=LightYellow
    highlight DiffChange        guibg=Gray95
    highlight DiffDelete        guibg=White
    highlight DiffText          guifg=White
    highlight LineNr            guibg=LightGray guifg=DarkSlateGray
"   highlight StatusLine        gui=NONE,reverse
    highlight StatusLineNC      gui=bold guifg=Gray10 guibg=Gray80
endif

let g:colors_name="default"
" vim:ts=8:sw=4:sts=4:et:ff=unix
