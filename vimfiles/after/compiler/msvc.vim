" program used for the :make command
CompilerSet makeprg=nmake\ /f\ makefile.win

" list of formats for error messages (%f|%l %t %n| %m)
CompilerSet errorformat+=LINK\ :\ fatal\ %m\ '%f'
CompilerSet errorformat+=NMAKE\ :\ fatal\ %m
CompilerSet errorformat+=%f\ :\ fatal\ %m
