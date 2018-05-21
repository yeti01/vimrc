" Vim syntax file
" Language: NEC2
" Maintainer: 
" Last Change: 2012 May 24

" Quit when a (custom syntax file was already loaded
if exists("b:current_syntax")
    finish
endif

syn case ignore

syn keyword nec2Card		FR LD GN EX NT XQ NE GD RP NX EN TL PT KH NH PQ EK WG CP PL GW GX GR GS GE GM SP SM GF GA SC GC GH
syn match nec2Comment		"^C[ME].*"
syn match nec2Comment		"!.*"
syn match decNumber		"\<[0-9]\+D\=\>"
syn match decNumber		"\<[0-9]\+D\=\>\."
syn match decNumber		"[-+\.][0-9]\+D\=\>"
syn match decNumber		"[-+]\.[0-9]\+D\=\>"
syn match decNumber		"[-+][0-9]\+D\=\>\."
syn match floatE		"_*E_*" contained
syn match floatExponent		"_*E_*[-+]\=[0-9]\+" contained contains=floatE
syn match floatNumber		"[-+]\=[0-9]\+_*E_*[-+]\=[0-9]\+" contains=floatExponent
syn match floatNumber		"[-+]\=[0-9]\+\.[0-9]\+\(E[-+]\=[0-9]\+\)\=" contains=floatExponent
syn match floatNumber		":\([0-9a-f]\+_*\)\+"

highlight link nec2Card		Keyword
highlight link nec2Comment	Comment
highlight link decNumber	Constant
highlight link floatE		Constant
highlight link floatExponent	Constant
highlight link floatNumber	Constant
