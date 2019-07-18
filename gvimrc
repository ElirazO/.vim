" .gvimrc file.
" Eliraz 
"
set tabstop=3
set number			      " shows line numbers by default 
set nocompatible	      " Use Vim defaults (much better!)
set bs=2		            " allow backspacing over everything in insert mode
set ai			         " always set autoindenting on
set expandtab            
set nobackup		      " dont save a backup file
set viminfo='20,\"100	" read/write a .viminfo file, don't store more
set history=100		   " keep 100 lines of command line history
set ruler		         " show the cursor position all the time
set undolevels=100       
set mouse=a              
set shiftwidth=3         
set smarttab             
set laststatus=2         
set showcmd              
set backspace=indent,eol,start
set hlsearch            " Vim will highlight all matches.
set incsearch

set wildmenu

"set nowrap
"set CursorLineNR
"set guioptions+=b

"highlight cursorline cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=Yellow
"set cursorline

colorscheme eliraz_53

if has("terminfo")     
set t_Co=8     
set t_Sf=[3%p1%dm 
set t_Sb=[4%p1%dm 
else 
set t_Co=8 
set t_Sf=[3%dm 
set t_Sb=[4%dm  
endif 

if &t_Co > 2 || has("gui_running") 
syntax on
endif 


if has("autocmd") 
augroup cprog
autocmd FileType c,cpp  set formatoptions=croql cindent comments=sr:/*,mb:*,el:*/,://
augroup END 

augroup gzip
autocmd BufReadPre,FileReadPre	*.gz set bin
autocmd BufReadPost,FileReadPost	*.gz let ch_save = &ch|set ch=2
autocmd BufReadPost,FileReadPost	*.gz '[,']!gunzip
autocmd BufReadPost,FileReadPost	*.gz set nobin
autocmd BufReadPost,FileReadPost	*.gz let &ch = ch_save|unlet ch_save
autocmd BufReadPost,FileReadPost	*.gz execute ":doautocmd BufReadPost " . expand("%:r")

autocmd BufWritePost,FileWritePost	*.gz !mv <afile> <afile>:r
autocmd BufWritePost,FileWritePost	*.gz !gzip <afile>:r

autocmd FileAppendPre			*.gz !gunzip <afile>
autocmd FileAppendPre			*.gz !mv <afile>:r <afile>
autocmd FileAppendPost		   *.gz !mv <afile> <afile>:r
autocmd FileAppendPost		   *.gz !gzip <afile>:r
augroup END
endif 

autocmd BufReadPost *aliases*,run,run_clarinet*,*.err,*.delay,*summery set filetype=sh
autocmd BufReadPost *.kf,*.KF,*.nl,*.csh,*.c set filetype=c
autocmd BufReadPost *.M,*.m set filetype=matlab
autocmd BufReadPost *.tcl,*.rab,*.do,*.lib set filetype=tcl
autocmd BufReadPost *.prl set filetype=perl
autocmd BufReadPost *.v,*.sv,*.everilog,*.ver,*.rtl,*.glv set filetype=verilog
autocmd BufReadPost *.e set filetype=specman
autocmd BufReadPost *.vhd set filetype=vhdl
autocmd BufReadPost *.py set filetype=python

"filetype plugin on
"let g:pydiction_location = '/home/elirazo/.vim/bundle/vim-dictionary/python'

"Dictionary
au FileType * execute 'set dict+=~/.vim/bundle/vim-dictionary/'.&filetype
set complete+=k
set iskeyword+=.,(
set pumheight=8



" Useful mappings here
map <C-a> ggvG<End>
imap <C-a> <Esc>ggvG<End>
vmap <C-a> <Esc>ggvG<End>

imap <C-c> <Esc>y<Insert><right>

imap <C-v> <Esc>p<Insert><right>

map <C-z> u
imap <C-z> <Esc>u<Insert><right>

imap <C-s> <Esc>:w!<return><Insert><right>
map  <C-s> :w!<return>
vmap <C-s> v:w!<return>

imap <C-q> <Esc>:q!<return>
map  <C-q> :q!<return>
vmap <C-q> v:q!<return>

map <S-F8> <C-R>
imap <F8> <Esc>u<Insert><right>
imap <S-F8> <Esc><C-R><Insert><right>
imap <C-y> <Esc><C-R><Insert><right>

map  <F1> :bfirst<return>
map  <F2> :blast<return>
map  <F3> :bprevious<return>
map  <F4> :bnext<return>
map  <F5> :bp\|bd #<return>
map  <F6> :bn\|bd #<return>
map  <F7> :close<return>

imap  <F1> <Esc>:bfirst<return>
imap  <F2> <Esc>:blast<return>
imap  <F3> <Esc>:bnext<return>
imap  <F4> <Esc>:bprevious<return>
imap  <F5> <Esc>:bp\|bd #<return>
imap  <F6> <Esc>:bn\|bd #<return>
imap  <F7> <Esc>:close<return>


imap <S-RightMouse> <Esc><C-v><RightMouse>
map  <S-RightMouse> <C-v><RightMouse>
map  <C-d> v<Home><Del>
imap <C-d> <Esc>v<Home><Del><Insert>
imap <TAB> <C-n>


nmap <s-Left>  :tabp<CR>
nmap <s-Right> :tabn<CR>
nmap <s-Up>    :tablast<CR>
nmap <s-Down>  :tabfirst<CR>

"---------------Eliraz shortcuts--------------------

map  <S-s> :vsp<return>:bprevious<return>
map  <C-f> /
imap <C-f> <Esc>/

map <S-p>  <Esc>:echo expand('%:p')<return>
map <C-l>  <Esc>:cd %:p:h<return>
map <C-F8>   <Esc>:e ~/.vim/gvimrc<return>

"----------NERDTree plugin shortcuts----------------
map <C-F12> :NERDTree<return>
vmap <C-F12> <Esc>:cd %:p:h<return>:NERDTree<return>
imap <C-F12> <Esc>:cd %:p:h<return>:NERDTree<return>
nmap <C-F12> <Esc>:cd %:p:h<return>:NERDTree<return>

map <C-F11> :NERDTreeClose<return>
vmap <C-F11> <Esc>:NERDTreeClose<return>
imap <C-F11> <Esc>:NERDTreeClose<return>
nmap <C-F11> <Esc>:NERDTreeClose<return>

"autocmd BufEnter NERD_tree_* colorscheme desert 

nnoremap <silent><expr> <F9> ':set wrap! go'.'-+'[&wrap]."=b\r"

map <A-a> <Esc>:print<return>


