let s:encoding=&fenc!=''?&fenc:&enc

if (s:encoding!="latin1")
    let &l:makeprg='iconv -f '.expand(s:encoding).' -t latin1 "'.expand("%").'" \| groff -pte -'.expand("%:e").' \| ps2pdf - "'.expand("%:p:r").'.pdf"'
else
    let &l:makeprg='groff -pte -'.expand("%:e").' "'.expand("%").'" \| ps2pdf - "'.expand("%:p:r").'.pdf"'
endif
