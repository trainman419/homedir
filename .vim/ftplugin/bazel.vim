
" Tabstopbs to 4 spaces, per PEP8
setlocal sw=4
setlocal ts=4
setlocal syntax=python

" setup cindent, and do minimal configuration so that it doesn't do the wrong
" thing for bazel files
set cindent
setlocal cinkeys-=0#
setlocal cinkeys-=#
setlocal cino=(s,m1
