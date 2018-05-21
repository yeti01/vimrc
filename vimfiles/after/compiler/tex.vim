" TeX
"CompilerSet makeprg=pdftex

" LaTeX
"CompilerSet makeprg=pdftex\ -fmt=latex

" LuaLaTeX
CompilerSet makeprg=luatex\ -fmt=lualatex

" XeLaTeX
"CompilerSet makeprg=xetex\ -fmt=xelatex

CompilerSet makeprg+=\ -output-format=pdf\ -file-line-error\ -interaction=nonstopmode\ %

CompilerSet errorformat=%f:%l:\ %m
