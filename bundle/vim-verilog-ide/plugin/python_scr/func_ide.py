import os
import re
import vim
import time
from time import sleep

global location
location = vim.eval('expand("<sfile>:h")')

## gvim - zc - close , zo - open , zf - folder
##-------------------------------------------------------------------------------------
## get_path_from_list(input_module) 
## args:
## 1. input module - A name of a module
## details: 
## the function open the uploaded list and search a file named 'input_module.v'
##-------------------------------------------------------------------------------------
def get_path_from_list(input_module):
   input_valid = re.match(r'\w+',input_module)

   if input_valid is None:
      print("Error: Wrong input...")
      return None
 
   path_to_list = get_block_list()
   
   if path_to_list is None :
      return None
   
   try:
      with open(path_to_list,'r') as modules_list:
         for line in modules_list:
            if (len(line) > 1) and (line[0]+line[1] == "//"):
               continue

            if re.search("/"+input_module+".v",line):
               return line.rstrip('\n')
   except:
      print "IOError (get_path_from_list()):"
      return None

##-------------------------------------------------------------------------------------

def set_block_list(local_blocks):
   if os.path.exists(local_blocks) :
      if re.search(".list",local_blocks) :
         with open(location+"/func_mem.txt",'w') as f:
            f.write(local_blocks)        
         print("Uploading list succeeded!")
      else:
         print("Error: Please load '.list' file")
   else:
      print("Error: The file doesn't exists!")

##-------------------------------------------------------------------------------------

def get_block_list():
   try:
      with open(location+"/func_mem.txt",'r') as func_mem:
         line_func_mem = func_mem.readline()
   except:
      print "IOError (get_block_list()) : Block list unloaded or not valid. Please use 'Set_block_list(<Path>) for insertion."
      return None

   if line_func_mem != "" :
      return line_func_mem
   else:
      return None

##-------------------------------------------------------------------------------------

def no_com_verilog(input_file_p):   
   try:
      with open(input_file_p,'r') as f_in:   
         text_in = f_in.read()
   except:
      print "IOError (no_com_verilog()):Not exists path: "+input_file_p
      return None

   comment_type1 = False
   comment_type2 = False
   text_len = len(text_in)
   list_text = list(text_in)
   for i in range(0,text_len):
      if (text_in[i] == "`") and not comment_type2 :
         comment_type1 = True
      if (text_in[i] == "/") and (text_in[i+1] == "/") and not comment_type2 :
         comment_type1 = True
      if (text_in[i] == "/") and (text_in[i+1] == "*") and not comment_type1 :
         comment_type2 = True
      
      if comment_type1 or comment_type2 :
         if text_in[i] == "\n" :
            list_text[i] = "\n"
         else:
            list_text[i] = ""
      
      if (text_in[i] == "\n") and comment_type1 :
         comment_type1 = False
      if (i>1) and (text_in[i-1] == "*") and (text_in[i] == "/") and comment_type2 :
         comment_type2 = False

   text_out = ''.join(list_text)

   try:
      with open(location+"/verilog_no_comment.v",'w') as f_out:  
         f_out.write(text_out)
   except:
      print "IOError (no_com_verilog()): - Writig Faild!"

##-------------------------------------------------------------------------------------
def fast_rm_com(input_file_p):
   output_file = location+"/fast_rm_comment.v"
      
   try:
      with open(input_file_p,'r') as f_in:
         text_in = f_in.read()
   except:
      print "IOError (fast_rm_com()): Not exists path: "+input_file_p
      return None         

   regex = r'(\/\*([^*]|(\*+[^*/]))*\*+\/)|(\/\/.*)|(\`.*)'
   text_out = re.sub(regex,"",text_in)
   
   ##################try to improve#######################################
   #regex = r'(\/\/.*)|(\`.*)'
   #text_out = re.sub(regex,"",text_in)

   #regex = r'(\/\*([^*]|(\*+[^*/]))*\*+\/)'

   #for m in re.finditer(regex, text_out):
   #   n = re.sub(r'[^\n]*',r' ',m.group(0))
   #   text_oo = re.sub(m.group(0),n,text_out)
   #   print(text_oo)
   ##########################################################
   
   try:
      with open(output_file,'w') as f_out:
         f_out.write(text_out)
   except:
      print "IOError (fast_rm_com()): Writig Faild!"
      return None
   
   return output_file
##-------------------------------------------------------------------------------------
def get_inst_name(input_file_p):
   line_num = vim.eval('line(".")')
   col_num = vim.eval('col(".")') # i want to allow identification of every stractur. 
   
   try:
      with open(location+"/verilog_no_com_cursor_flag.v",'w') as file_cursor_flag:
         try:
            with open(location+"/verilog_no_comment.v",'r') as file_no_com:  
               for i,line in enumerate(file_no_com):
                  if str(i+1) == line_num :
                     newline = "X!X!X ->"+line            #not only in the begin of the line
                     line = newline
                  file_cursor_flag.write(line)
         except:
            return None         
   except:
      return None      

   try:
      with open(location+"/verilog_no_com_cursor_flag.v",'r') as file_with_flag:
         filetext = file_with_flag.read()
   except:
      return None

   regex_word = '\.\w+\s*\([^)]*\)'       # .abcd(Dont_Care)
   regex_pntr = '\X\!\X\!\X\s\-\>\s+'     # X!X!X - >  
   regex_inst = '\(\s*('+regex_word+'\s*\,\s*)*'+regex_word+'\s*\)\s*'
   regex1 = r'(?P<module>(\`?)\w+)\s+((\#\s*'+regex_inst+')?)(?P<inst_name>\w+)\s*\(\s*('+regex_word+'\s*\,\s*)*'+regex_pntr+'('+regex_word+'\s*\,\s*)*('+regex_word+'\s*)\)\s*\;'
   result1 = re.search(regex1,filetext)
   
   if result1 :
      module = result1.group('module')
      print("Module: \""+module+"\"  ,  "),

      inst_name = result1.group('inst_name')
      print("Name: \""+inst_name+"\"  ,  "),

      regex2 = r'\X\!\X\!\X\s\-\>\s+\.(?P<port_name>\w+)'
      result2 = re.search(regex2,result1.group(0))
      port_name = result2.group('port_name')
      print("Port \""+port_name+"\""),
      
      port_dir , port_range = port_direction(module,port_name)
      
      if  port_dir is not None :
         print("is an "+port_dir.upper()+"  ,  "),
         
         if port_range is not None :
            print("Width: "+port_range)
         else:
            print("Width: 1")               
               
      else:
         print("isn't found...")
      
      return module
   else:
      print("Error: Invalid search...")
      return None


##-------------------------------------------------------------------------------------
def port_direction(module,port_name):
  
   if 'last_module' in locals():
      if module != last_module :
         path_to_module = get_path_from_list(module)
         last_module = module
   else:
      path_to_module = get_path_from_list(module)
      last_module = module

   if  path_to_module is None :
      return None , None
   
   try: 
      with open(path_to_module,'r') as f:
         filetext = f.read()
   except:
      return None , None
      
   regex1 = r'(output|input|inout)\s*((\[[^:]*\:[^]]*\]\s*)?)'+port_name+'\s*(\;|\,|\n)'      
   result1 = re.search(regex1,filetext)
   
   if result1 is not None :
      fields1 = result1.group(0).split()
      regex2 = r'\[[^:]*\:[^]]*\]'
      result2 = re.search(regex2,result1.group(0))
      
      if  result2 is not None :
         return fields1[0] , result2.group(0)   
      else:
         return fields1[0] , None
   
   else:
      return None , None
   
##-------------------------------------------------------------------------------------
def roots(input_path):
   #return path to uncomment file
   uncom_file = fast_rm_com(input_path)
   if uncom_file is None :
      return None

   this_module = module_name(uncom_file)
   if this_module is None :
      return None
   
   path_to_list = get_block_list()
   if path_to_list is None :
      return None

   try:
      with open(path_to_list,'r') as listfile:
         nol = sum(1 for line in listfile)
    
      with open(path_to_list,'r') as listfile:
         list_of_roots = ""
         number_of_roots = 0
         for i,line in enumerate(listfile):
            
            #progress_bar
            #-------------------------------------------------
            progress = (i+2)/(nol*1.0)*100
            progress = "%.1f" %progress
            vim.command("redrawstatus")
            vim.command("set statusline=Searching:\ "+str(progress)+"%%\ \ (\ "+str(number_of_roots)+"\ Roots\ Found\ )")
            #-------------------------------------------------
            
            path_to_module = line.rstrip('\n')
            commant_line = 'Yes' if ((len(path_to_module) > 1) and (path_to_module[0]+path_to_module[1] == "//")) else 'No'
            
            if commant_line == 'No' and os.path.exists(path_to_module):
               uncom_file = fast_rm_com(path_to_module)
               
               try:
                  with open(uncom_file,'r') as module:
                     text = module.read()
               except:
                  return None

               regex_word = '\.\w+\s*\([^,]*'
               regex_ports = '\(\s*('+regex_word+'\,\s*)*\.\w+\s*\([^;]*\;'
               regex_inst = r''+this_module+'\s+(?P<inst_name>\w+)\s*'+regex_ports+'|'+this_module+'\s+\#'

               result = re.search(regex_inst,text)
               
               if result is not None :
                  #vim.command("e "+path_to_module)
                  #print("e "+path_to_module)
                  list_of_roots = list_of_roots+"e "+path_to_module+"\n"
                  number_of_roots = number_of_roots + 1
      
      print(list_of_roots)
		
   except:
      print "IOError (roots()): Not exists path: "+path_to_module
      return None
##-------------------------------------------------------------------------------------

def root(input_path):
   #return path to uncomment file
   uncom_file = fast_rm_com(input_path)
   if uncom_file is None :
      return None

   this_module = module_name(uncom_file)
   if this_module is None :
      return None
   
   path_to_list = get_block_list()
   if path_to_list is None :
      return None

   try:
      with open(path_to_list,'r') as listfile:
         nol = sum(1 for line in listfile)

      with open(path_to_list,'r') as listfile:      
         for i,line in enumerate(listfile):
            progress_bar("Searching:\ ",i+1,nol)
            path_to_module = line.rstrip('\n')
            commant_line = 'Yes' if ((len(path_to_module) > 1) and (path_to_module[0]+path_to_module[1] == "//")) else 'No'
            
            if commant_line == 'No' and os.path.exists(path_to_module):
               uncom_file = fast_rm_com(path_to_module)
            else:
               continue

            try:
               with open(uncom_file,'r') as module:
                  text = module.read()
            except:
               return None

            regex_word = '\.\w+\s*\([^,]*'
            regex_ports = '\(\s*('+regex_word+'\,\s*)*\.\w+\s*\([^;]*\;'
            regex_inst = r''+this_module+'\s+(?P<inst_name>\w+)\s*'+regex_ports+'|'+this_module+'\s+\#'

            result = re.search(regex_inst,text)
            
            if result is not None :
               vim.command("e "+path_to_module)
               return  #should be parameterized
   except:
      print "IOError (root()): Not exists path: "+path_to_module
      return None

##-------------------------------------------------------------------------------------
def module_name(input_path):
   try:
      with open(input_path,'r') as this_file:
         text = this_file.read()
   except:
      print "IOError (module_name()): Not exists path: "+input_path
      return None   

   regex = r'module\s+(?P<module_name>\w+)'
   result = re.search(regex,text)

   if result is not None:
      return result.group('module_name')
   else:
      return None
##-------------------------------------------------------------------------------------
def branches(input_path):
   try:
      with open(input_path,'r') as file_in:
         text = file_in.read()
   except:
      print "IOError (branches()): Not exists path: "+input_path
      return None , None   
      
   regex_word = '\.\w+\s*\([^)]*\)\s*'       # .abcd(Dont_Care)
   regex_ports = '\(\s*('+regex_word+'\,\s*)*'+regex_word+'\)\s*'
   regex_inst = r'(?P<module>(\`?)\w+)\s+((\#\s*'+regex_ports+')?)(?P<inst_name>\w+)\s*'+regex_ports+'\;'   

   modules_list=list()
   names_list=list()
 
   for m in re.finditer(regex_inst,text):
      modules_list.append(m.group("module"))
      names_list.append(m.group("inst_name"))

   return modules_list , names_list
##-------------------------------------------------------------------------------------
def get_net_type(input_path,input_net):
   try:
      with open(input_path,'r') as file_in:
         text = file_in.read()
   except:
      print "IOError (get_net_type()): Not exists path: "+input_path
      return None         

   regex = r'(?P<type>output|input|inout|wire|reg|genvar|parameter|localparam)\s+(?P<range>\[[^:]*\:[^]]*\])?\s*'+input_net+'(\s*\=\s*(?P<defval>[^\s]*))?\s*\;'
   result = re.search(regex,text)
   
   if result is not None :
      tern_type   = result.group('type')
      width       = result.group('range')
      default_val = result.group('defval')

      print ("Object: \""+input_net+"\"  ,  Type: "+tern_type),

      if default_val is not None :
         print ("  ,  Default Value: "+default_val)
      elif width is not None :
         print ("  ,  Width: "+width)
      else:
         print ("  ,  Width: 1")            
   
   else:
      print "\""+input_net+"\" is not defined..." 
##-------------------------------------------------------------------------------------
## not on used yet - should be a file of instantiation 
def inst_file(input_path):
   uncom_file = fast_rm_com(input_path)
   if uncom_file is None :
      return None

   this_module = module_name(uncom_file)
   if this_module is None :
      return None
   
   path_to_list = get_block_list()
   if path_to_list is None :
      return None
   
   try:
      with open(path_to_list,'r') as listfile:
         path_to_module = listfile.readline()  
         
         while path_to_module != "" :
            path_to_module = path_to_module.rstrip('\n')
            commant_line = 'Yes' if ((len(path_to_module) > 1) and (path_to_module[0]+path_to_module[1] == "//")) else 'No'
            
            if commant_line == 'No' and os.path.exists(path_to_module):
               uncom_file = fast_rm_com(path_to_module)
              
               root = module_name(uncom_file)
               inst_list , dont_care_list = branches(uncom_file)
               
            path_to_module = listfile.readline()

   except:
      return None

   
##-------------------------------------------------------------------------------------
def progress_bar(string,index,max_index):
   if (index <= max_index):
      progress = index/(max_index*1.0)*100
      progress = "%.1f" %progress
      vim.command("redrawstatus")
      vim.command("set statusline="+string+str(progress)+"%%")
   else:
      print("ProgressBar Error")



   
 

