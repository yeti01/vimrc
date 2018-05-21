" NetrwSettings.vim: makes netrw settings simpler
" Last Change:	Aug 15, 2005
" Maintainer:	Charles E Campbell, Jr <drchipNOSPAM at campbellfamily dot biz>
" Version:		2
" Copyright:    Copyright (C) 1999-2005 Charles E. Campbell, Jr.
"               Permission is hereby granted to use and distribute this code,
"               with or without modifications, provided that this copyright
"               notice is copied with it. Like anything else that's free,
"               NetrwSettings.vim is provided *as is* and comes with no
"               warranty of any kind, either expressed or implied. By using
"               this plugin, you agree that in no event will the copyright
"               holder be liable for any damages resulting from the use
"               of this software.
" Load Once: {{{1
if exists("g:loaded_NetrwSettings") || &cp
  finish
endif
let g:loaded_NetrwSettings  = "v2"

" ---------------------------------------------------------------------
"  Public Interface:
com! -nargs=0 NetrwSettings :call <SID>NetrwSettings()

" ---------------------------------------------------------------------
" NetrwSettings: {{{1
fun! s:NetrwSettings()
  above wincmd s
  enew
  setlocal noswapfile bh=wipe
  set ft=vim
  file Netrw\ Settings

  " these variables have the following default effects when they don't
  " exist (ie. have not been set by the user in his/her .vimrc)
  if !exists("g:netrw_longlist")
   let g:netrw_longlist= 0
   let g:netrw_list_cmd= "ssh HOSTNAME ls -FLa"
  endif
  if !exists("g:netrw_silent")
   let g:netrw_silent= 0
  endif
  if !exists("g:netrw_use_nt_rcp")
   let g:netrw_use_nt_rcp= 0
  endif
  if !exists("g:netrw_ftp")
   let g:netrw_ftp= 0
  endif
  if !exists("g:netrw_ignorenetrc")
   let g:netrw_ignorenetrc= 0
  endif

  put ='+ ---------------------------------------------'
  put ='+ NetrwSettings:  (by Charles E. Campbell, Jr.)'
  put ='+  Press ? with cursor atop any line for help  '
  put ='+ ---------------------------------------------'
  let s:netrw_settings_stop= line(".")

  put =''
  put ='+ Netrw Protocol Commands'
  put = 'let g:netrw_dav_cmd           = '.g:netrw_dav_cmd
  put = 'let g:netrw_fetch_cmd         = '.g:netrw_fetch_cmd
  put = 'let g:netrw_ftp_cmd           = '.g:netrw_ftp_cmd
  put = 'let g:netrw_http_cmd          = '.g:netrw_http_cmd
  put = 'let g:netrw_rcp_cmd           = '.g:netrw_rcp_cmd
  put = 'let g:netrw_rsync_cmd         = '.g:netrw_rsync_cmd
  put = 'let g:netrw_scp_cmd           = '.g:netrw_scp_cmd
  put = 'let g:netrw_sftp_cmd          = '.g:netrw_sftp_cmd
  let s:netrw_protocol_stop= line(".")
  put = ''

  put ='+Netrw Transfer Control'
  put = 'let g:netrw_cygwin            = '.g:netrw_cygwin
  put = 'let g:netrw_ftp               = '.g:netrw_ftp
  put = 'let g:netrw_ftpmode           = '.g:netrw_ftpmode
  put = 'let g:netrw_ignorenetrc       = '.g:netrw_ignorenetrc
  put = 'let g:netrw_use_nt_rcp        = '.g:netrw_use_nt_rcp
  put = 'let g:netrw_win95ftp          = '.g:netrw_win95ftp
  let s:netrw_xfer_stop= line(".")

  put = ''
  put ='+ Netrw Browser Control'
  put = 'let g:netrw_alto              = '.g:netrw_alto
  put = 'let g:netrw_altv              = '.g:netrw_altv
  put = 'let g:netrw_dirhistmax        = '.g:netrw_dirhistmax
  put = 'let g:netrw_ftp_browse_reject = '.g:netrw_ftp_browse_reject
  put = 'let g:netrw_ftp_list_cmd      = '.g:netrw_ftp_list_cmd
  put = 'let g:netrw_hide              = '.g:netrw_hide
  put = 'let g:netrw_keepdir           = '.g:netrw_keepdir
  put = 'let g:netrw_list_cmd          = '.g:netrw_list_cmd
  put = 'let g:netrw_list_cmd          = '.g:netrw_list_cmd
  put = 'let g:netrw_list_hide         = '.g:netrw_list_hide
  put = 'let g:netrw_local_mkdir       = '.g:netrw_local_mkdir
  put = 'let g:netrw_local_rmdir       = '.g:netrw_local_rmdir
  put = 'let g:netrw_longlist          = '.g:netrw_longlist
  put = 'let g:netrw_maxfilenamelen    = '.g:netrw_maxfilenamelen
  put = 'let g:netrw_mkdir_cmd         = '.g:netrw_mkdir_cmd
  put = 'let g:netrw_rename_cmd        = '.g:netrw_rename_cmd
  put = 'let g:netrw_rm_cmd            = '.g:netrw_rm_cmd
  put = 'let g:netrw_rmdir_cmd         = '.g:netrw_rmdir_cmd
  put = 'let g:netrw_rmf_cmd           = '.g:netrw_rmf_cmd
  put = 'let g:netrw_silent            = '.g:netrw_silent
  put = 'let g:netrw_sort_by           = '.g:netrw_sort_by
  put = 'let g:netrw_sort_direction    = '.g:netrw_sort_direction
  put = 'let g:netrw_sort_sequence     = '.g:netrw_sort_sequence
  put = 'let g:netrw_ssh_browse_reject = '.g:netrw_ssh_browse_reject
  put = 'let g:netrw_timefmt           = '.g:netrw_timefmt
  put = 'let g:netrw_winsize           = '.g:netrw_winsize

  put =''
  put ='+ For help, place cursor on line and press ?'

  1d
  silent %s/^+/"/e
  res 99
  silent %s/= \([^0-9].*\)$/= '\1'/e
  silent %s/= $/= ''/e
  1

  set nomod

  map <buffer> <silent> ? :call NetrwSettingHelp()<cr>
  let tmpfile= tempname()
  exe 'au BufWriteCmd	Netrw\ Settings	silent w! '.tmpfile.'|so '.tmpfile.'|call delete("'.tmpfile.'")|set nomod'
endfun

" ---------------------------------------------------------------------
" NetrwSettingHelp: {{{2
fun! NetrwSettingHelp()
"  call Dfunc("NetrwSettingHelp()")
  let curline = getline(".")
  if curline =~ '='
   let varhelp = substitute(curline,'^\s*let ','','e')
   let varhelp = substitute(varhelp,'\s*=.*$','','e')
"   call Decho("trying help ".varhelp)
   try
    exe "he ".varhelp
   catch /^Vim\%((\a\+)\)\=:E149/
   	echo "***sorry*** no help available for <".varhelp.">"
   endtry
  elseif line(".") < s:netrw_settings_stop
   he netrw-settings
  elseif line(".") < s:netrw_protocol_stop
   he netrw-externapp
  elseif line(".") < s:netrw_xfer_stop
   he netrw-variables
  else
   he netrw-browse-var
  endif
"  call Dret("NetrwSettingHelp")
endfun
