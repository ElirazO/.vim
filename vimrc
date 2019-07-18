set runtimepath+=~/.vim/bundle/vim-nerdtree
set runtimepath+=~/.vim/bundle/vim-indentLine ""TAB line 
set runtimepath+=~/.vim/bundle/vim-verilog-ide
set runtimepath+=~/.vim/bundle/vim-airline
set runtimepath+=~/.vim/bundle/vim-airline-themes ""include eliraz_1 custom theme

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='eliraz_1'



" unicode symbols
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '◀'
let g:airline_left_sep = ' '
let g:airline_right_sep = ' '

