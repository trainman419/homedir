" For dealing slightly better with bazel files
" @author hendrix
au BufRead,BufNewFile *.bzl set filetype=bazel
au BufRead,BufNewFile BUILD set filetype=bazel
au BufRead,BufNewFile BUILD.* set filetype=bazel
