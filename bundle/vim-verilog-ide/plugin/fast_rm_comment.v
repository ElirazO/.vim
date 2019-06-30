



















module vl_dline_dep_wid
  (
   din,
   dout,
   clr,
   clk,
   reset_n
   );

   
   
   
   parameter DEPTH   = 8;
   parameter WIDTH   = 8;
   parameter RST_VAL = 1'b0;
   
   
   
   
   input [WIDTH-1:0]  din;
   output [WIDTH-1:0] dout;
   input 	      clk;
   input 	      reset_n;
   input 	      clr;
   
   
   
   
   reg [WIDTH-1:0]    dline [DEPTH-1:0];

   
   
   
   integer 	      ii;

   
   
   
   assign 	      dout = dline[DEPTH-1];
   
   always @(posedge clk or negedge reset_n)
     if (!reset_n)
       for (ii = 0 ; ii < DEPTH ; ii = ii + 1) dline[ii] <= {WIDTH{RST_VAL}};
     else if (clr)
       for (ii = 0 ; ii < DEPTH ; ii = ii + 1) dline[ii] <= {WIDTH{RST_VAL}};
     else
       begin
	  dline[0] <= din;
	  for (ii = 1 ; ii < DEPTH ; ii = ii + 1) dline[ii] <= dline[ii-1];
       end


endmodule 
