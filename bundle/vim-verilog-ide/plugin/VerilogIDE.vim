python import sys 
python import vim
python sys.path.append(vim.eval('expand("<sfile>:h")'))
python import python_scr
python from python_scr import func_ide
python import os
python import re
python import time

" --------------------------------------------------
" Function(s)
" --------------------------------------------------
function! Open_pointed_module()
python << endOfPython
f1 = func_ide.Func()

module = vim.eval('expand("<cword>")')
path_to_module = f1.get_path_from_list(module)
if (path_to_module != None):
   vim.command("e "+path_to_module)
else:
   print("The module: \""+module+"\" is not found...")

endOfPython
endfunction

" --------------------------------------------

function! Set_block_list(blocklist)
python << endOfPython
f1 = func_ide.Func()

local_blocks = vim.eval("a:blocklist")
f1.set_block_list(local_blocks)


endOfPython
endfunction

" --------------------------------------------

function! Set_path_as_block_list()
python << endOfPython
f1 = func_ide.Func()

file_path = vim.eval('expand("%:p")')
f1.set_block_list(file_path)

endOfPython
endfunction

" --------------------------------------------

function! Get_block_list()
python << endOfPython
f1 = func_ide.Func()

list_path_in_mem = f1.get_block_list()

if(list_path_in_mem != None):
	print list_path_in_mem
else:
	print ("Error: Block list was unloaded or not valid. Please use 'Set_block_list('<path>') for insertion.")

endOfPython
endfunction

" --------------------------------------------

function! Open_block_list()
python << endOfPython

f1 = func_ide.Func()

list_path_in_mem = f1.get_block_list()

if(list_path_in_mem != None):
   vim.command("e "+list_path_in_mem)
else:
	print ("Error: Block list was unloaded or not valid. Please use 'Set_block_list('<path>') for insertion.")

endOfPython
endfunction

" --------------------------------------------

function! Get_inst_name()
python << endOfPython
f1 = func_ide.Func()

file_path = vim.eval('expand("%:p")')

if 'last_path' in locals():
   if(file_path != last_path):
      f1.no_com_verilog(file_path)

      last_path = file_path
      last_modify = time.ctime(os.path.getmtime(file_path))
   
   elif(last_modify != time.ctime(os.path.getmtime(file_path))):
      f1.no_com_verilog(file_path)
      last_path = file_path
      last_modify = time.ctime(os.path.getmtime(file_path))       
      
else:
   f1.no_com_verilog(file_path)
   last_path = file_path
   last_modify = time.ctime(os.path.getmtime(file_path))

inst_name = f1.get_inst_name(file_path)

endOfPython
endfunction

" --------------------------------------------

function! No_com_verilog()
python << endOfPython
f1 = func_ide.Func()

start = time.time()  
file_path = vim.eval('expand("%:p")')
f1.no_com_verilog(file_path)

print time.time() - start

endOfPython
endfunction

" --------------------------------------------

function! Fast_rm_com()
python << endOfPython
f1 = func_ide.Func()

start = time.time()  
file_path = vim.eval('expand("%:p")')
f1.fast_rm_com(file_path)

print time.time() - start

endOfPython
endfunction

" --------------------------------------------

function! Branches()
python << endOfPython

f1 = func_ide.Func()

thisfile_path = vim.eval('expand("%:p")')
cln_com_ver = f1.fast_rm_com(thisfile_path)

modules_list , names_list = f1.branches(cln_com_ver) 

for m in range(len(modules_list)):
   print "Module: \""+modules_list[m]+"\"  ,  Name: \""+names_list[m]+"\""

endOfPython
endfunction

" --------------------------------------------

function! Module_name()
python << endOfPython
f1 = func_ide.Func()

thisfile_path = vim.eval('expand("%:p")')
mod = f1.module_name(thisfile_path) 
if (mod != None):
   print mod

endOfPython
endfunction

" --------------------------------------------

function! Get_net_type()
python << endOfPython
f1 = func_ide.Func()

thisfile_path = vim.eval('expand("%:p")')
cln_com_ver = f1.fast_rm_com(thisfile_path)
input_object = vim.eval('expand("<cword>")')
f1.get_net_type(cln_com_ver,input_object)

endOfPython
endfunction

" --------------------------------------------

function! Roots()
python << endOfPython
f1 = func_ide.Func()

#start = time.time()  
thisfile_path = vim.eval('expand("%:p")')
f1.roots(thisfile_path)
#print time.time() - start

endOfPython
endfunction

" --------------------------------------------

function! Root()
python << endOfPython
f1 = func_ide.Func()

#start = time.time()  
thisfile_path = vim.eval('expand("%:p")')
f1.root(thisfile_path)
#print time.time() - start

endOfPython
endfunction

" --------------------------------------------

function! TimeFunc(input_func)
python << endOfPython

func = getattr(input_func)
start = time.time() 
func = getattr(input_func)()
print time.time() - start

endOfPython
endfunction

" --------------------------------------------
" Details : This function will open the module which saved in inst_name after
" using the function

function! Open_last_searched()
python << endOfPython
f1 = func_ide.Func()

if (inst_name):
   path_to_module = f1.get_path_from_list(inst_name)
   if (path_to_module != None):
      vim.command("e "+path_to_module)
   else:
      print("The module: \""+module+"\" is not found...")
else:
   print "VerilogIDE - Function Error"

endOfPython
endfunction

" --------------------------------------------

function! ProgressBar()
python << endOfPython
f1 = func_ide.Func()

for i in range(1,1234):
   f1.progress_bar("Eliraz:",i+1,1234)

endOfPython
endfunction

" --------------------------------------------
" User command
" --------------------------------------------

" :SetBlockList arg
command! -nargs=1 SetBlockList call Set_block_list(<f-args>)
command! GetBlockList call Get_block_list()
command! WhichInst call Get_inst_name()
command! PrintRoots call Roots()
command! Root call Root()
command! Branches call Branches()
command! GetNetType call Get_net_type()
command! ModuleName call Module_name()
command! OpenLastSearched call Open_last_searched()
command! OpenBlockList call Open_block_list()
command! SetPathAsBlockList call Set_path_as_block_list()

" --------------------------------------------

"map <C-w> <esc>:WhichInst<return>
"map <C-e> <esc>:GetNetType<return>

map <C-LeftMouse> <LeftMouse>:call Open_pointed_module()<return>
map <A-1> <esc>:WhichInst<return>
map <A-2> <esc>:OpenLastSearched<return>

" --------------------------------------------

amenu ToolBar.-Sep- :

amenu ToolBar.PrintRoots :PrintRoots <CR>
tmenu ToolBar.PrintRoots Print every modules which instantiate the current module.

amenu ToolBar.Root :Root <CR>
tmenu ToolBar.Root Change scope one level up. 

amenu ToolBar.Branches :Branches <CR>
tmenu ToolBar.Branches Print the instantiations under this module.

amenu ToolBar.GetNetType :GetNetType <CR>
tmenu ToolBar.GetNetType Net definition (input/output/wire/reg/...)

amenu ToolBar.OpenBlockList :OpenBlockList <CR>
tmenu ToolBar.OpenBlockList Open the saved Block-List. 

amenu ToolBar.SetPathAsBlockList :SetPathAsBlockList <CR>
tmenu ToolBar.SetPathAsBlockList Save the path of the current file as Block-List. 




