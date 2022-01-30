" TeX
"CompilerSet makeprg=pdftex

" LaTeX
"CompilerSet makeprg=pdftex\ -fmt=latex

" LuaLaTeX
if executable("luahbtex")
    CompilerSet makeprg=luahbtex\ -fmt=lualatex
else
    CompilerSet makeprg=luatex\ -fmt=lualatex
endif

" XeLaTeX
"CompilerSet makeprg=xetex\ -fmt=xelatex

CompilerSet makeprg+=\ -output-format=pdf\ -file-line-error\ -interaction=nonstopmode\ %

CompilerSet errorformat=%f:%l:\ %m
