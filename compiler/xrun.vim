" Vim compiler file
" Compiler:         XRUN
" Maintainer:       Eliraz
" Latest Revision:  2019-01-03

if exists("current_compiler")
  finish
endif
let current_compiler = "/tools/CADENCE/XCELIUM/XCELIUM1803/tools/bin/xrun"

"if exists(":CompilerSet") != 2		" older Vim always used :setlocal
"  command -nargs=* CompilerSet setlocal <args>
"endif

let s:cpo_save = &cpo
set cpo-=C

setlocal makeprg=xrun\ 

"setlocal errorformat=%ABDF\ %trror\ on\ line\ %l:\ %m,
"      \%-Z%p^,
"      \%Cbdftopcf:\ bdf\ input\\,\ %f\\,\ corrupt,
"      \%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save
