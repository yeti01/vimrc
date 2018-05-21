if executable("gmake")
    CompilerSet makeprg=gmake
endif

CompilerSet errorformat+=%A%f:%l.%c:,%C,%C\ %.%#,
CompilerSet errorformat+=%ZError:\ %m,%ZWarning:\ %m,%f:(%.%#):%m
