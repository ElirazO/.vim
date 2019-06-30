


















module vl_pipe
  (
   dout,   
   din,    
   clk, 
   reset_n
   );

   
   
   
   parameter PIPE_DEPTH = 1;
   parameter PIPE_DW    = 1;
   
   
   
   
   
   output [PIPE_DW-1:0] dout;
   input  [PIPE_DW-1:0] din;
   input           	clk;
   input           	reset_n;
   

   
   
   
   wire [PIPE_DW-1:0]   pipe_data [PIPE_DEPTH:0];
   

   
   
   
   genvar    pipe_gen;
   

   
   
   
   
   assign pipe_data[PIPE_DEPTH] = din;
   
   
   assign dout = pipe_data[0];
   
   
   generate
     for (pipe_gen = 0; pipe_gen < PIPE_DEPTH ; pipe_gen = pipe_gen+1)
        begin : Gen_Pipe
           vl_dline_dep_wid #(
             .DEPTH(1), 
             .WIDTH(PIPE_DW)) pipe_line_i 
             (
             .din    (pipe_data[pipe_gen+1]),
             .dout   (pipe_data[pipe_gen]),
             .clr    (1'b0),
             .clk    (clk),
             .reset_n(reset_n)
             );
        end
   endgenerate

endmodule 



