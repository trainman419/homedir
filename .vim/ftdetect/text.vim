" For dealing smartly with text files
" @author stice
" @author hendrix
au BufRead,BufNewFile *.txt set filetype=text
au BufRead,BufNewFile *.tex set filetype=text
au BufRead,BufNewFile *.py set filetype=python
au BufRead,BufNewFile Makefile set filetype=make
au BufRead,BufNewFile CMakeLists.txt set filetype=cmake
au BufRead,BufNewFile *.dbc set filetype=dbc
