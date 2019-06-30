


















module watchdog
  (
   
   nmi,
   reset_wdg_n,
   enabled,
   
   debug_mode,
   clear_wgd,
   write_key,
   write_data,
   WD_LIMIT,
   clk,
   reset_n
   );

   
   
   
   parameter CNT_WIDTH = 32;
   parameter RST_LIMIT = 256;
   parameter CLR_DATA  = 32'hAB_CD_EF_44;
   parameter EN_DATA_0 = 32'h12_45_67_9A;
   parameter EN_DATA_1 = 32'h34_BC_76_C5;
   parameter DS_DATA_0 = 32'h33_DF_E4_74;
   parameter DS_DATA_1 = 32'h32_79_B5_6E;
   
   
   
   
   output 	       nmi;
   output 	       reset_wdg_n;
   output 	       enabled;
   input 	       clear_wgd;
   input 	       write_key;
   input [31:0]        write_data;
   input 	       clk;
   input 	       reset_n;
   input 	       debug_mode;
   input [4:0] 	       WD_LIMIT;
   
   
   
   
   reg [CNT_WIDTH-1:0] wdog_cnt;
   reg [2:0] 	       stm;
   reg 		       enabled;
   reg [23:0] 	       scnt;
   reg [1:0] 	       wdog_stm;
   
   
   
   
   wire [CNT_WIDTH-1:0] CNT_LIMIT;
   
   
   
   
   assign nmi         = wdog_stm == 2'b01;
   assign reset_wdg_n = !(wdog_stm == 2'b11);
   assign CNT_LIMIT   = (1 << WD_LIMIT);
   
   always @(posedge clk or negedge reset_n)
     if (!reset_n)
       wdog_stm <= 2'b00;
     else if (!enabled || debug_mode)
       wdog_stm <= 2'b00;
     else 
       case (wdog_stm)
	 2'b00 : wdog_stm <= clear_wgd && write_data == CLR_DATA ? 2'b00 : wdog_cnt >= CNT_LIMIT ? 2'b01 : 2'b00;
	 2'b01 : wdog_stm <= clear_wgd && write_data == CLR_DATA ? 2'b00 : wdog_cnt >= CNT_LIMIT ? 2'b11 : 2'b01;
	 2'b11 : wdog_stm <= wdog_cnt >= RST_LIMIT ? 2'b10 : 2'b11;
	 2'b10 : wdog_stm <= 2'b00;
       endcase 
   
   
   
   
   always @(posedge clk or negedge reset_n)
     if (!reset_n)
       wdog_cnt <= {CNT_WIDTH{1'b0}};
     else if (!enabled || debug_mode)
       wdog_cnt <= {CNT_WIDTH{1'b0}};
     else if (clear_wgd && write_data == CLR_DATA)
       wdog_cnt <= {CNT_WIDTH{1'b0}};
     else if (wdog_cnt >= CNT_LIMIT)
       wdog_cnt <= {CNT_WIDTH{1'b0}};
     else
       wdog_cnt <= wdog_cnt + 1'b1;

   
   
   
   always @(posedge clk or negedge reset_n)
     if (!reset_n)
       enabled <= 1'b0;
     else if (stm == 3'b011)
       enabled <= 1'b1;
     else if (stm == 3'b101)
       enabled <= 1'b0;

   
   
   
   always @(posedge clk or negedge reset_n)
     if (!reset_n)
       stm <= 3'b000;
     else
       case (stm)
	 3'b000 : stm <= (write_key && (write_data == EN_DATA_0)) ? 3'b001 : (write_key && (write_data == DS_DATA_0)) ? 3'b100 : 3'b000;
	 3'b001 : stm <= &scnt ? 3'b000 : (write_key && (write_data == EN_DATA_1)) ? 3'b011 : 3'b001;
	 3'b011 : stm <= 3'b010;
	 3'b010 : stm <= 3'b000;
	 3'b100 : stm <= &scnt ? 3'b000 : (write_key && (write_data == DS_DATA_1)) ? 3'b101 : 3'b100;
	 3'b101 : stm <= 3'b111;
	 3'b111 : stm <= 3'b110;
	 3'b110 : stm <= 3'b010;
       endcase 
   
   
   
   
   always @(posedge clk or negedge reset_n)
     if (!reset_n)
       scnt <= 24'h0;
     else if (stm == 3'b001 || stm == 3'b100)
       scnt <= scnt + 1'b1;
     else
       scnt <= 24'h0; 
   
endmodule 



