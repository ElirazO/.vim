


















module usbt_main_parse
  (
   
   coded_sid_err_cnt, 
   handshake_err_cnt, 
   pid_err_cnt, 
   crc16_err_cnt,
   coded_sid_endp_err_cnt, 
   sid_endp_err_msg, 
   sid_endp_err_polling,
   error_status,
   out_eop, 
   out_error, 
   out_d_width, 
   out_entry_type, 
   out_endp_entry,
   out_data, 
   read_ready, 
   read_used, 
   tokin_ready,
   fifo_max_indication,
   fifo_full,
   in_pkt_cnt,
   out_pkt_cnt,
   pkt_stm,
   pass_endp_to_cpu,
   mic_0,
   mic_1,
   mic_2,
   mic_3,
   mic_4,
   mic_5,
   
   WRCK,
   usb_main_parse_WSI,
   WRSTN,
   usb_main_parse_UpdateWR,
   SelectWIR,
   usb_main_parse_ShiftWR,
   usb_main_parse_CaptureWR,
   usb_main_parse_WSO,   
   bist_clk,
   bist_reset_n,
   scan_enable, 
   scan_mode, 
   clk, 
   reset_n, 
   sid_reg,
   sid_endp_reg, 
   sid_err_cnt_clr, 
   sid_endp_err_cnt_clr,
   crc16_err_cnt_clr, 
   handshake_err_cnt_clr, 
   pid_err_cnt_clr,
   fifo_max_indication_clr,
   in_pkt_cnt_r,
   out_pkt_cnt_r,
   pass_endp_to_cpu_clr,
   timer_value, 
   timer_en, 
   max_usb_pkt_len, 
   sid_endp_err_msg_clr, 
   fifo_full_indication_clr,
   start_wr_again_th,
   err_status_clr, 
   usb_direction,
   pass_all_endp,
   read_command, 
   tokin_dat0, 
   tokin_dat1, 
   tokin_valid, 
   Enable,
   IgnoreCRC, 
   Data_Lsb_First
   );

   
   
   
   
   
   
   parameter	    NUM_OF_SID  	= 8;   
   parameter	    SID_WIDTH		= 8;   
   parameter	    SID_REG_WIDTH       = 10;  
   parameter	    ERR_CNT_WIDTH	= 8;   
   parameter	    NUM_OF_SID_ENDP	= 64;  
   parameter	    PT_WIDTH		= 4;   
   parameter	    SID_ENDP_PT_WIDTH	= 25;  
   parameter	    SID_ENDP_WIDTH	= 20;  
   parameter	    COD_ENDP_WIDTH      = 6;   
   parameter        CRC_OWIDTH	        = 16;  
   parameter        CRC_IWIDTH	        = 8;   
   parameter        DATA_WIDTH	        = 32;  
   parameter        DIR_TYPE_WIDTH	= 2;   
   parameter        EXT_INFO_WIDTH	= 7;   
   parameter        PID_WIDTH	        = 8;   
   parameter	    TID_WIDTH	        = 8;   
   parameter	    SOF_FRAME_NUM_WIDTH	= 11;  
   parameter	    OPCODE_WIDTH        = 5;   
   parameter	    TIMER_WIDTH         = 21;  
   parameter	    USB_LEN_WIDTH       = 12;  
   parameter	    IN_CNT_WIDTH        = 8;   
   parameter	    OUT_CNT_WIDTH       = 8;   


   
   
   parameter LOG2_DW = DATA_WIDTH < 2  ? 1  :
		       DATA_WIDTH < 4  ? 2  :
		       DATA_WIDTH < 8  ? 3  :
		       DATA_WIDTH < 16 ? 4  :
		       DATA_WIDTH < 32 ? 5  : 6;
   
   parameter RAM_DATA_WIDTH     = 1+1+2+1+COD_ENDP_WIDTH+DATA_WIDTH;
   parameter RAM_ADDR_WIDTH     = 8;
   
   
   
   
   parameter TOK_WIDTH        = 19;

   
   
   
   
   input                                          bist_clk;
   input                                          bist_reset_n;
   input					  scan_enable;
   input					  scan_mode;
   input					  clk;
   input					  reset_n;
   input 					  WRCK;
   input 					  usb_main_parse_WSI;
   input 					  WRSTN;
   input 					  usb_main_parse_UpdateWR;
   input 					  SelectWIR;
   input 					  usb_main_parse_ShiftWR;
   input 					  usb_main_parse_CaptureWR;
   output 					  usb_main_parse_WSO;

   
   
   
   
   input [NUM_OF_SID*SID_REG_WIDTH-1:0]		  sid_reg;
   input [NUM_OF_SID_ENDP*SID_ENDP_PT_WIDTH-1:0]  sid_endp_reg;
   input					  sid_err_cnt_clr;	 
   input					  sid_endp_err_cnt_clr;  
   input					  crc16_err_cnt_clr;	 
   input					  handshake_err_cnt_clr; 
   input					  pid_err_cnt_clr;       
   input [TIMER_WIDTH-1:0]			  timer_value; 
   input					  timer_en;  
   input [USB_LEN_WIDTH-1:0]			  max_usb_pkt_len; 
   input					  sid_endp_err_msg_clr;  
   input					  usb_direction;  
   input					  pass_all_endp;  
   input					  fifo_max_indication_clr;
   input					  err_status_clr;  
   input [RAM_ADDR_WIDTH:0]                       start_wr_again_th; 
   input					  fifo_full_indication_clr;  
   input 		                          in_pkt_cnt_r; 
   input 		                          out_pkt_cnt_r; 
   input 		                          pass_endp_to_cpu_clr; 
   
   
   input					  read_command;
   
   
   
   
   input [TOK_WIDTH-1:0]			  tokin_dat0;
   input [TOK_WIDTH-1:0]			  tokin_dat1;
   input					  tokin_valid;

   input					  Enable;
   input					  IgnoreCRC;
   input					  Data_Lsb_First;
   
   
   
   
   
   output [ERR_CNT_WIDTH-1:0]			  coded_sid_err_cnt; 
   output [ERR_CNT_WIDTH-1:0]			  handshake_err_cnt;
   output [ERR_CNT_WIDTH-1:0]			  pid_err_cnt;
   output [ERR_CNT_WIDTH-1:0]			  crc16_err_cnt;
   output [ERR_CNT_WIDTH-1:0]			  coded_sid_endp_err_cnt;
   output [SID_ENDP_WIDTH-1:0]			  sid_endp_err_msg;
   output					  sid_endp_err_polling;
   output [RAM_ADDR_WIDTH:0]                      fifo_max_indication;
   output                                         fifo_full;
   output [7:0]                                   error_status;
   output [IN_CNT_WIDTH-1:0]			  in_pkt_cnt; 
   output [OUT_CNT_WIDTH-1:0]			  out_pkt_cnt; 
   output [1:0]		                          pkt_stm; 			       
   output [NUM_OF_SID-1:0]                        pass_endp_to_cpu;

   
   output					  out_eop;
   output					  out_error;
   output [1:0] 				  out_d_width;
   output                        		  out_entry_type;
   output [COD_ENDP_WIDTH-1:0]			  out_endp_entry;
   output [DATA_WIDTH-1:0]			  out_data;
   output					  read_ready;
   output [RAM_ADDR_WIDTH:0]			  read_used;

   
   
   
   output					  tokin_ready;
   
   
   output [31:0]                                  mic_0;
   output [31:0]                                  mic_1;
   output [31:0]                                  mic_2;
   output [31:0]                                  mic_3;
   output [31:0]                                  mic_4;
   output [31:0]                                  mic_5;
			                          
   
   
   
   reg [31:0]                     mic_3;
   reg [31:0]                     mic_4;
   reg [31:0]                     mic_5;


   
   
   
   wire [DATA_WIDTH-1:0]           data_out;
   wire 		           parser_data_valid;
   wire 		           parser_first_data;
   wire 		           parser_last_data;
   wire 		           parser_out_ext;
   wire 		           parser_out_ext1;
   wire 		           parser_out_ext2;
   wire 		           parser_out_ext3;
   wire [DIR_TYPE_WIDTH-1:0]       parser_out_ext_info; 
   wire [EXT_INFO_WIDTH-1:0]       parser_out_ext_info1;
   wire [EXT_INFO_WIDTH-1:0]       parser_out_ext_info2;
   wire [EXT_INFO_WIDTH-1:0]       parser_out_ext_info3;
   wire [LOG2_DW-1:0] 	           parser_out_width;
   wire [SID_WIDTH-1:0]            parser_sid_out;
   wire [1:0]		           parser_sync_out;

   wire [RAM_DATA_WIDTH-1:0]       ram_d;
   wire [RAM_ADDR_WIDTH-1:0]       ram_addr_rd;
   wire [RAM_ADDR_WIDTH-1:0]       ram_addr_wr;
   wire                            ram_re;
   wire                            ram_we;
   wire [RAM_DATA_WIDTH-1:0]       ram_q;
   
   wire			           write_fifo_cmd;   
   wire [RAM_DATA_WIDTH-1:0]       write_data;
   wire                            write_ready;
   wire [RAM_ADDR_WIDTH:0]         write_used;
   wire [RAM_ADDR_WIDTH:0]         read_used;

   
   
   


   
   
   
   MainPktParse #(.DATA_WIDTH(DATA_WIDTH)) MainPktParse_i 
     (
                   
		   .tokin_ready		(tokin_ready),
		   .data_out		(data_out), 
		   .data_valid		(parser_data_valid),
		   .sync_out		(parser_sync_out),
		   .crc_out		(),
		   .sid_out		(parser_sid_out),
		   .len_out		(),
		   .type_out		(),
		   .out_ext		(parser_out_ext),
		   .out_ext1		(parser_out_ext1),
		   .out_ext2		(parser_out_ext2),
		   .out_ext3		(parser_out_ext3),
		   .out_ext_info	(parser_out_ext_info),
		   .out_ext_info1	(parser_out_ext_info1),
		   .out_ext_info2	(parser_out_ext_info2),
		   .out_ext_info3	(parser_out_ext_info3),
		   .out_width		(parser_out_width),
		   .last_data		(parser_last_data),
		   .first_data		(parser_first_data),
                   .prot_out            (),
                   .pad_out             (),
                   .packet_pam          (),
                   .packet_qp           (),
                   .packet_fut          (),      
		   
		   .tokin_dat0		(tokin_dat0),
		   .tokin_dat1		(tokin_dat1),
		   .tokin_valid		(tokin_valid),
		   .data_ready		(1'b1), 
		   .Enable		(Enable),
		   .NibbleMode		(1'b0),
		   .IgnoreCRC		(IgnoreCRC),
		   .Data_Lsb_First	(Data_Lsb_First),
		   .scan_enable		(scan_enable),
		   .clk			(clk),
		   .reset_n		(reset_n));								    

   
   
   
   

   usb_hdbt_parser #(
		     
		     .NUM_OF_SID	(NUM_OF_SID),
		     .SID_WIDTH		(SID_WIDTH),
		     .SID_REG_WIDTH	(SID_REG_WIDTH),
		     .ERR_CNT_WIDTH	(ERR_CNT_WIDTH),
		     .NUM_OF_SID_ENDP	(NUM_OF_SID_ENDP),
		     .PT_WIDTH		(PT_WIDTH),
		     .SID_ENDP_PT_WIDTH	(SID_ENDP_PT_WIDTH),
		     .SID_ENDP_WIDTH	(SID_ENDP_WIDTH),
		     .COD_ENDP_WIDTH	(COD_ENDP_WIDTH),

		     .CRC_OWIDTH	(CRC_OWIDTH),
		     .CRC_IWIDTH	(CRC_IWIDTH),
		     .DATA_WIDTH	(DATA_WIDTH),
		     .DIR_TYPE_WIDTH	(DIR_TYPE_WIDTH),
		     .EXT_INFO_WIDTH	(EXT_INFO_WIDTH),
		     .AWIDTH		(RAM_ADDR_WIDTH),
		     .FIFO_WIDTH	(RAM_DATA_WIDTH),
		     .PID_WIDTH		(PID_WIDTH),
		     .TID_WIDTH	        (TID_WIDTH),
		     .SOF_FRAME_NUM_WIDTH(SOF_FRAME_NUM_WIDTH),
		     .OPCODE_WIDTH	(OPCODE_WIDTH),
		     .TIMER_WIDTH	(TIMER_WIDTH),
		     .USB_LEN_WIDTH	(USB_LEN_WIDTH))
   usb_hdbt_parser_i (
		      
		      .coded_sid_err_cnt(coded_sid_err_cnt),
		      .handshake_err_cnt(handshake_err_cnt),
		      .pid_err_cnt	(pid_err_cnt),
		      .crc16_err_cnt	(crc16_err_cnt),
		      .coded_sid_endp_err_cnt(coded_sid_endp_err_cnt),
		      .sid_endp_err_msg	(sid_endp_err_msg),
		      .sid_endp_err_polling(sid_endp_err_polling),
		      .error_status     (error_status),
                      .fifo_max_indication(fifo_max_indication),
                      .fifo_full        (fifo_full),
                      .write_fifo_cmd   (write_fifo_cmd),
                      .write_data       (write_data),
                      .in_pkt_cnt       (in_pkt_cnt),
                      .out_pkt_cnt      (out_pkt_cnt),
                      .pkt_stm          (pkt_stm),
                      .pass_endp_to_cpu (pass_endp_to_cpu),
                      .mic_0            (mic_0),
                      .mic_1            (mic_1),
                      .mic_2            (mic_2),
		      
		      .scan_enable	(scan_enable),
		      .clk		(clk),
		      .reset_n		(reset_n),
                      .start_wr_again_th(start_wr_again_th), 
		      .sid_reg		(sid_reg),
		      .sid_endp_reg	(sid_endp_reg),
		      .sid_err_cnt_clr	(sid_err_cnt_clr),
		      .sid_endp_err_cnt_clr(sid_endp_err_cnt_clr),
		      .crc16_err_cnt_clr(crc16_err_cnt_clr),
		      .handshake_err_cnt_clr(handshake_err_cnt_clr),
		      .pid_err_cnt_clr	(pid_err_cnt_clr),
		      .err_status_clr   (err_status_clr),
		      .fifo_full_indication_clr(fifo_full_indication_clr),
		      .fifo_max_indication_clr(fifo_max_indication_clr),
		      .timer_value	(timer_value),
		      .timer_en	        (timer_en),
		      .max_usb_pkt_len	(max_usb_pkt_len),
		      .sid_endp_err_msg_clr(sid_endp_err_msg_clr),
		      .usb_direction	(usb_direction),
		      .pass_all_endp    (pass_all_endp),
		      .write_ready	(write_ready),
		      .write_used	(write_used),
		      .read_used	(read_used),
		      .in_pkt_cnt_r	(in_pkt_cnt_r),
		      .out_pkt_cnt_r	(out_pkt_cnt_r),		      
		      .pass_endp_to_cpu_clr (pass_endp_to_cpu_clr),
		      .parser_data_out  (data_out),
		      .parser_data_valid(parser_data_valid),
		      .parser_sync_out	(parser_sync_out),
		      .parser_sid_out	(parser_sid_out),
		      .parser_out_ext	(parser_out_ext),
		      .parser_out_ext1	(parser_out_ext1),
		      .parser_out_ext2	(parser_out_ext2),
		      .parser_out_ext3	(parser_out_ext3),
		      .parser_out_ext_info(parser_out_ext_info),
		      .parser_out_ext_info1(parser_out_ext_info1),
		      .parser_out_ext_info2(parser_out_ext_info2),
		      .parser_out_ext_info3(parser_out_ext_info3),
		      .parser_out_width	(parser_out_width),
		      .parser_last_data	(parser_last_data),
		      .parser_first_data(parser_first_data));


   
   
   
   vl_async_ram #(.WIDTH(RAM_DATA_WIDTH), .AWIDTH(RAM_ADDR_WIDTH), .WE_WIDTH(1), .REAL_USED(1)) usbt_main_parse_fifo
     (
      
      .write_clk    (clk),
      .write_reset_n(reset_n),
      .write_command(write_fifo_cmd),
      .write_ready  (write_ready),
      .write_used   (write_used),
      .write_data   (write_data), 
      
      
      .read_clk     (clk),
      .read_reset_n (reset_n),
      .read_ready   (read_ready), 
      .read_command (read_command), 
      .read_used    (read_used), 
      .read_data    ({out_eop, out_error, out_d_width, out_entry_type, out_endp_entry, out_data}),
      
      
      .ram_a_rd     (ram_addr_rd),
      .ram_a_wr     (ram_addr_wr),
      .ram_d        (ram_d),
      .ram_q        (ram_q),
      .ram_we       (ram_we),
      .ram_re       (ram_re),

      
      .scan_enable  (scan_enable),
      .scan_mode    (scan_mode)
      );
   
   
   
   
       usbt_main_parse_mem_bist_env #(.RAM_DATA_WIDTH(RAM_DATA_WIDTH),
				      .RAM_ADDR_WIDTH(RAM_ADDR_WIDTH)) u_usbt_main_parse_mem_bist_env
	 (
	  .ram_q(ram_q),
	  .ram_addr_wr(ram_addr_wr),
	  .ram_d(ram_d),
	  .ram_we(ram_we),
	  .clk(clk),
	  .ram_addr_rd(ram_addr_rd),
	  .ram_re(ram_re),
	  .bist_clk(bist_clk),
	  .bist_reset_n(bist_reset_n),
	  .scan_mode(scan_mode),
          .vl_sms_WRCK(WRCK),
          .vl_sms_usb2_hdbt_main_parse_SMS_sms_1_WSI(usb_main_parse_WSI),
          .vl_sms_WRSTN(WRSTN),
          .vl_sms_usb2_hdbt_main_parse_SMS_sms_1_UpdateWR(usb_main_parse_UpdateWR),
          .vl_sms_SelectWIR(SelectWIR),
          .vl_sms_usb2_hdbt_main_parse_SMS_sms_1_ShiftWR(usb_main_parse_ShiftWR),
          .vl_sms_usb2_hdbt_main_parse_SMS_sms_1_CaptureWR(usb_main_parse_CaptureWR),
          .vl_sms_usb2_hdbt_main_parse_SMS_sms_1_WSO(usb_main_parse_WSO)
	  );
   

































   
   
   
   always @(posedge clk or negedge reset_n)
     if (!reset_n) begin
      mic_3 <= 32'b0;
      mic_4 <= 32'b0;
      mic_5 <= 32'b0;
     end
     else begin
      mic_3 <= {write_fifo_cmd, write_ready, write_data[29:0]};
      mic_4 <= {write_fifo_cmd, write_ready, out_eop, out_error, out_d_width, out_entry_type, out_endp_entry, write_data[18:0]};
      mic_5 <= {tokin_valid, tokin_ready, tokin_dat1, tokin_dat0[18:16], tokin_dat0[7:0]};
     end
   
endmodule 




