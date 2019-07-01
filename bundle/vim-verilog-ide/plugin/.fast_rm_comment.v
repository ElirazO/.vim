





































































module Snir_link
  (
   
   
   
   
   link_main_tokout_ready,
   link_main_tokout_valid,
   link_main_tokout_data,
   
   link_main_tokin_valid,
   link_main_tokin_data,
   
   link_aux_tokout_data,
   link_aux_tokout_valid,
   link_aux_tokout_ready,
   
   link_aux_tokin_data,
   link_aux_tokin_valid,
   link_aux_tokin_ready,
   
   phy_tx_tokin_ready,
   phy_tx_tokin_valid,
   phy_tx_tokin_data,
   
   phy_rx_tokout_ready,
   phy_rx_tokout_valid,
   phy_rx_tokout_data,
   
   
   
   link_top_regs_rif_add_bus,
   link_top_regs_rif_data_wr,
   link_top_regs_rif_wr,
   link_top_regs_rif_byte_en,
   link_top_regs_rif_rd,
   link_top_regs_rif_ack,
   link_top_regs_rif_data_rd,
   
   
   
   
   hdbt_hlic_rx_len,
   hdbt_hlic_rx_len_vld,
   hdbt_hlic_tx_data_free,
   hdbt_hlic_tx_len_rdy,
   
   brif_rd,
   brif_wr,
   brif_addr,
   brif_byte_en,
   brif_burst_size,
   brif_wr_data_valid,
   brif_wr_data,
   
   brif_rd_data,
   brif_addr_ack,
   brif_data_ack,
   
   
   
   bc_drift_drfwin_rx,              
   drift_est_data,
   
   
   
   
   lppf_tx_mode,
   lppf_tx_del,
   lppf_tx_bit,
   lppf_symbol_done,
   lppf_tx_active,
   
   lppf_rx_active,
   lppf_del_on,
   lppf_bit_out,
   lppf_bit_sync,
   lppf_rx_descr_lock,

   
   pd_tokens,
   pd_pixels,
   pd_pulse,
   
   
   
   WRCK,
   WRSTN,
   SelectWIR,
   
   HLIC_IF_CaptureWR,
   HLIC_IF_ShiftWR,
   HLIC_IF_UpdateWR,
   HLIC_IF_WSI,
   HLIC_IF_WSO,
   
   Main2Aux_WSI,
   Main2Aux_UpdateWR,
   Main2Aux_ShiftWR,
   Main2Aux_CaptureWR,
   Main2Aux_WSO,
   
   Aux2Main_CaptureWR,
   Aux2Main_ShiftWR,
   Aux2Main_UpdateWR,
   Aux2Main_WSI,
   Aux2Main_WSO,
   
   bist_clk,
   bist_reset_n,
   
   
   
   
   trn_clk_in,
   sys_clk,
   sys_reset_n,
   rcv_clk,
   
   scan_mode,   
   scan_enable,
   scan_in,
   scan_out,

   
   srcpcs_CaptureWR,
   srcpcs_ShiftWR,
   srcpcs_UpdateWR,
   srcpcs_WSI,
   srcpcs_WSO,

   
   vl_sms_WRCK,
   vl_sms_mainbuffer_src_pcs_if_SMS_sms_1_WSI,
   vl_sms_WRSTN,
   vl_sms_mainbuffer_src_pcs_if_SMS_sms_1_UpdateWR,
   vl_sms_SelectWIR,
   vl_sms_mainbuffer_src_pcs_if_SMS_sms_1_ShiftWR,
   vl_sms_mainbuffer_src_pcs_if_SMS_sms_1_CaptureWR,
   vl_sms_mainbuffer_src_pcs_if_SMS_sms_1_WSO,

   
   snkpcs_CaptureWR,
   snkpcs_ShiftWR,
   snkpcs_UpdateWR,
   snkpcs_WSI,
   snkpcs_WSO,   

   
   Dan_retreq_data,
   Dan_pcs_retr_req,
   Dan_pcs_retr_req_rdy,
   
   
   link_vl_int,

   
   retr_main_buff_WSI,
   retr_main_buff_UpdateWR,
   retr_main_buff_ShiftWR,
   retr_main_buff_CaptureWR,
   retr_main_buff_WSO,

   
   Snir_link_BC_WSI,
   Snir_link_BC_UpdateWR,
   Snir_link_BC_ShiftWR,
   Snir_link_BC_CaptureWR,
   Snir_link_BC_WSO,
   
   lppf_link_clk_div_en,
   
   AYALON_MSIO_DATA_0_RX_2logic,
   AYALON_MSIO_DATA_1_RX_2logic,
   AYALON_MSIO_DATA_2_RX_2logic,
   AYALON_MSIO_DATA_3_RX_2logic,
   AYALON_MSIO_DATA_4_RX_2logic,
   AYALON_MSIO_DATA_5_RX_2logic,
   AYALON_MSIO_DATA_0_TX_out_2iomx,
   AYALON_MSIO_DATA_1_TX_out_2iomx,
   AYALON_MSIO_DATA_2_TX_out_2iomx,
   AYALON_MSIO_DATA_3_TX_out_2iomx,
   AYALON_MSIO_DATA_4_TX_out_2iomx,
   AYALON_MSIO_DATA_5_TX_out_2iomx,
   
   AYALON_UART_RX_T_2logic,
   AYALON_UART_TX_T_out_2iomx,	
   
   AYALON_CIR_IN_2logic,
   AYALON_CIR_OUT_out_2iomx,

   
   Snir_link_test_bus
   );

   
   
   
   parameter MAIN_TOK_WIDTH    = 19;
   parameter AUX_TOK_WIDTH     = 15;
   parameter HDBT_HLIC_ID      = 0;
   parameter EWIDTH            = 32;
   parameter RETR_BUFF_AW      = 12;   
   parameter w_data_bus        = 32;
   parameter w_add_bus         = 32;
   parameter ADDRW             = 6;
   parameter LINK_INT_NUM      = 23;
   parameter PRIO_DIV_MAX_DATA = 8'hff;
   parameter PXL_NUM_W         = 8;
   parameter PKT_LEN_W         = 9;

   parameter TEST_BUS_CHAIN_LEN = 20;
   
   
   
   
   
   
   
   
   input 			 link_main_tokout_ready;
   output 			 link_main_tokout_valid;
   output [2*MAIN_TOK_WIDTH-1:0] link_main_tokout_data;
   
   input 			 link_main_tokin_valid;
   input [2*MAIN_TOK_WIDTH-1:0]  link_main_tokin_data;
   
   output [AUX_TOK_WIDTH-1:0] 	 link_aux_tokout_data;
   output                        link_aux_tokout_valid;
   input 			 link_aux_tokout_ready;
   
   input [AUX_TOK_WIDTH-1:0] 	 link_aux_tokin_data;
   input 			 link_aux_tokin_valid;
   output 			 link_aux_tokin_ready;
   
   output 			 phy_tx_tokin_ready;
   input 			 phy_tx_tokin_valid;
   input [2*MAIN_TOK_WIDTH-1:0]  phy_tx_tokin_data;
   
   input 			 phy_rx_tokout_ready;
   output 			 phy_rx_tokout_valid;
   output [2*MAIN_TOK_WIDTH-1:0] phy_rx_tokout_data;
   
   
   
   
   input [w_add_bus-1:0] 	 link_top_regs_rif_add_bus;
   input [w_data_bus-1:0] 	 link_top_regs_rif_data_wr;
   input 			 link_top_regs_rif_wr;
   input [3:0] 			 link_top_regs_rif_byte_en;
   input 			 link_top_regs_rif_rd;
   output 			 link_top_regs_rif_ack;
   output [w_data_bus-1:0] 	 link_top_regs_rif_data_rd;
   
   
   
   
   
   
   output [11:0] 		 hdbt_hlic_rx_len;
   output 			 hdbt_hlic_rx_len_vld;
   output [12:0] 		 hdbt_hlic_tx_data_free;
   output 			 hdbt_hlic_tx_len_rdy;
   
   input 			 brif_rd;
   input 			 brif_wr;
   input [ADDRW-1:0] 		 brif_addr;
   input [3:0] 			 brif_byte_en;
   input [3:0] 			 brif_burst_size;
   input 			 brif_wr_data_valid;
   input [31:0] 		 brif_wr_data;
   
   output [31:0] 		 brif_rd_data;
   output 			 brif_addr_ack;
   output 			 brif_data_ack;
   
   
   
   output [4:0] 		 bc_drift_drfwin_rx; 
   input [15:0] 		 drift_est_data;
   
   
   
   
   output 			 lppf_tx_mode;
   output 			 lppf_tx_del;
   output 			 lppf_tx_bit;
   input 			 lppf_symbol_done;
   output 			 lppf_tx_active;
   
   input 			 lppf_rx_active;
   input 			 lppf_del_on;
   input 			 lppf_bit_out;
   input 			 lppf_bit_sync;
   input 			 lppf_rx_descr_lock;
   
   
   input [PKT_LEN_W:0] 		 pd_tokens;
   input [PXL_NUM_W-1:0] 	 pd_pixels;
   input 			 pd_pulse;
   
   
   
   
   input 			 WRCK;
   input 			 WRSTN;
   input 			 SelectWIR;
   
   input 			 HLIC_IF_CaptureWR;
   input 			 HLIC_IF_ShiftWR;
   input 			 HLIC_IF_UpdateWR;
   input 			 HLIC_IF_WSI;
   output 			 HLIC_IF_WSO;
   
   input 			 Main2Aux_WSI;
   input 			 Main2Aux_UpdateWR;
   input 			 Main2Aux_ShiftWR;
   input 			 Main2Aux_CaptureWR;
   output 			 Main2Aux_WSO;
   
   input 			 Aux2Main_CaptureWR;
   input 			 Aux2Main_ShiftWR;
   input 			 Aux2Main_UpdateWR;
   input 			 Aux2Main_WSI;
   output 			 Aux2Main_WSO;
   
   input 			 bist_clk;
   input 			 bist_reset_n;
   
   
   
   
   
   input 			 trn_clk_in;
   input 			 sys_clk;
   input 			 sys_reset_n;
   input 			 rcv_clk;
   
   input 			 scan_mode; 
   input 			 scan_enable;
   input [999:0] 		 scan_in;
   output [999:0] 		 scan_out;
   
   
   input 			 srcpcs_CaptureWR;
   input 			 srcpcs_ShiftWR;
   input 			 srcpcs_UpdateWR;
   input 			 srcpcs_WSI;
   output 			 srcpcs_WSO;
   
    
   input 			 vl_sms_WRCK;
   input 			 vl_sms_mainbuffer_src_pcs_if_SMS_sms_1_WSI;
   input 			 vl_sms_WRSTN;
   input 			 vl_sms_mainbuffer_src_pcs_if_SMS_sms_1_UpdateWR;
   input 			 vl_sms_SelectWIR;
   input 			 vl_sms_mainbuffer_src_pcs_if_SMS_sms_1_ShiftWR;
   input 			 vl_sms_mainbuffer_src_pcs_if_SMS_sms_1_CaptureWR;
   output 			 vl_sms_mainbuffer_src_pcs_if_SMS_sms_1_WSO; 

   
   input 			 snkpcs_CaptureWR;
   input 			 snkpcs_ShiftWR;
   input 			 snkpcs_UpdateWR;
   input 			 snkpcs_WSI;
   output 			 snkpcs_WSO;

   
   input [6:0]       Dan_retreq_data;
   input             Dan_pcs_retr_req;
   output            Dan_pcs_retr_req_rdy;
   
   
   output 			 link_vl_int;
   

   
   input 			 retr_main_buff_WSI;
   input 			 retr_main_buff_UpdateWR;
   input 			 retr_main_buff_ShiftWR;
   input 			 retr_main_buff_CaptureWR;
   output 			 retr_main_buff_WSO;
   
   
   input 			 Snir_link_BC_WSI;
   input 			 Snir_link_BC_UpdateWR;
   input 			 Snir_link_BC_ShiftWR;
   input 			 Snir_link_BC_CaptureWR;
   output 			 Snir_link_BC_WSO;
   

   output 			 lppf_link_clk_div_en;

   
   output [31:0] 		 Snir_link_test_bus;
 
  
   input 		       AYALON_MSIO_DATA_0_RX_2logic;
   input 		       AYALON_MSIO_DATA_1_RX_2logic;
   input 		       AYALON_MSIO_DATA_2_RX_2logic;
   input 		       AYALON_MSIO_DATA_3_RX_2logic;
   input 		       AYALON_MSIO_DATA_4_RX_2logic;
   input 		       AYALON_MSIO_DATA_5_RX_2logic;
   output 		       AYALON_MSIO_DATA_0_TX_out_2iomx;
   output 		       AYALON_MSIO_DATA_1_TX_out_2iomx;
   output 		       AYALON_MSIO_DATA_2_TX_out_2iomx;
   output 		       AYALON_MSIO_DATA_3_TX_out_2iomx;
   output 		       AYALON_MSIO_DATA_4_TX_out_2iomx;
   output 		       AYALON_MSIO_DATA_5_TX_out_2iomx;
   
   input 		       AYALON_UART_RX_T_2logic;
   output 		       AYALON_UART_TX_T_out_2iomx; 
   
   input 		       AYALON_CIR_IN_2logic;
   output 		       AYALON_CIR_OUT_out_2iomx;   
   
   
   
   
   reg [PKT_LEN_W:0] 		 pd_tokens_d1;
   reg [PKT_LEN_W:0] 		 pd_tokens_d2;
   reg [PXL_NUM_W-1:0] 		 pd_pixels_d1;
   reg [PXL_NUM_W-1:0] 		 pd_pixels_d2;
   reg 				 pd_pulse_d1;
   reg 				 pd_pulse_d2;
   
   reg [31:0] 			 aux2lppf_token_tb;
   reg [31:0] 			 lppf2aux_token_tb;
   reg [31:0] 			 bc_rx_out_token_tb;
   reg [31:0] 			 bc_tx_out_token_tb;
   reg [31:0] 			 bc_rx_in_token_tb;
   reg [31:0] 			 bc_tx_in_token_tb;  

   
   
   
   
   wire 			 prio_div_p1_tokout_valid;
   wire 			 prio_div_p1_tokout_ready;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 prio_div_p1_tokout_data;
   wire 			 prio_div_p2_tokout_valid;
   wire 			 prio_div_p2_tokout_ready;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 prio_div_p2_tokout_data;
   wire 			 prio_div_p3_tokout_valid;
   wire 			 prio_div_p3_tokout_ready;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 prio_div_p3_tokout_data;
   
   wire 			 bist_tadp_tx_p1_token_valid;
   wire 			 bist_tadp_tx_p1_token_ready;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 bist_tadp_tx_p1_token_out;
   
   wire 			 bist_tadp_tx_p2_token_valid;
   wire 			 bist_tadp_tx_p2_token_ready;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 bist_tadp_tx_p2_token_out;
   
   wire 			 bist_tadp_tx_p3_token_valid;
   wire 			 bist_tadp_tx_p3_token_ready;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 bist_tadp_tx_p3_token_out;
   
   wire 			 bist_tadp_rx_p1_token_valid;
   wire 			 bist_tadp_rx_p1_token_ready;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 bist_tadp_rx_p1_token_out;
   
   wire 			 bist_tadp_rx_p2_token_valid;
   wire 			 bist_tadp_rx_p2_token_ready;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 bist_tadp_rx_p2_token_out;
   
   wire 			 bist_tadp_rx_p3_token_valid;
   wire 			 bist_tadp_rx_p3_token_ready;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 bist_tadp_rx_p3_token_out;
   
   wire 			 trash_disp_token_valid;
   wire 			 trash_disp_token_ready;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 trash_disp_token_out;
   
   wire 			 retr_buff_ram_ce;
   wire 			 retr_buff_ram_we;
   wire [RETR_BUFF_AW-1:0] 	 retr_buff_ram_addr;
   wire [4*MAIN_TOK_WIDTH-1:0] 	 retr_buff_ram_wdata;
   wire [4*MAIN_TOK_WIDTH-1:0] 	 retr_buff_ram_rdata;
   wire 			 retr_buff_thr_cross;
   wire 			 retr_buff_thr_cross_not;
   
   wire [2*MAIN_TOK_WIDTH-1:0] 	 rtrs_buff_tokin_data;
   wire 			 rtrs_buff_tokin_ready;
   wire 			 rtrs_buff_tokin_valid;
   
   wire [2*MAIN_TOK_WIDTH-1:0] 	 link_lb_disp_tokout_data;
   wire 			 link_lb_disp_tokout_ready;
   wire 			 link_lb_disp_tokout_valid;
   
   wire [AUX_TOK_WIDTH-1:0] 	 lppf_tx_aux_token_data;
   wire 			 lppf_tx_aux_token_valid;
   wire 			 lppf_tx_aux_token_ready;
   wire [AUX_TOK_WIDTH-1:0] 	 lppf_rx_aux_token_data;
   wire 			 lppf_rx_aux_token_valid;
   wire 			 lppf_rx_aux_token_ready;
   wire [AUX_TOK_WIDTH-1:0] 	 link_aux_tokin_filt_data;
   wire 			 link_aux_tokin_filt_valid;
   wire 			 link_aux_tokin_filt_ready;   
   
   
   wire [31:0] 			 s_src_pcs_clr_counters;

   
   wire [2*MAIN_TOK_WIDTH-1:0] 	 snk_pcs_if_no_crc_tokin_data;
   wire 			 snk_pcs_if_no_crc_tokin_ready;
   wire 			 snk_pcs_if_no_crc_tokin_valid;
   
   wire 			 snk_pcs_retr_tokout_valid;
   wire 			 snk_pcs_retr_tokout_ready;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 snk_pcs_retr_tokout_data;
   
   wire [2*MAIN_TOK_WIDTH-1:0] 	 bc_rx_tokin_data;
   wire 			 bc_rx_tokin_valid;
   wire 			 bc_rx_tokin_ready;
   
   wire [2*MAIN_TOK_WIDTH-1:0] 	 bc_rx_tokout_data;
   wire 			 bc_rx_tokout_valid;
   wire 			 bc_rx_tokout_ready;
   
   wire [2*MAIN_TOK_WIDTH-1:0] 	 bc_tx_tokin_data;
   wire 			 bc_tx_tokin_valid;
   wire 			 bc_tx_tokin_ready;
   
   wire [2*MAIN_TOK_WIDTH-1:0] 	 bc_tx_tokout_data;
   wire 			 bc_tx_tokout_valid;
   wire 			 bc_tx_tokout_ready;
   
   wire [5:0] 			 hlic_tx_pdif_data;
   wire 			 hlic_tx_pdif_vld;
   wire 			 hlic_tx_pdif_rd; 
   wire 			 msio_aux_hdbt_sched_ready;
   
   
   wire 			 hdmic_ddc_slv_mon_clear;
   wire 			 hdmic_ddc_slv_gen_clear;
   wire 			 hdmic_ddc_mst_mon_clear;
   wire 			 hdmic_ddc_mst_gen_clear;
   wire 			 hdmic_ddc_slv_stop_clear;
   wire 			 hdmic_ddc_slv_used_clear;
   
   wire [13:0] 			 mictor_ddc; 
   
   
   wire 			 BC2lppf_cir;
   wire 			 lppf2BC_cir;
   wire 			 BC2lppf_uart;
   wire 			 lppf2BC_uart;
   
   wire [2*MAIN_TOK_WIDTH-1:0] 	 link_unprot_pcs_if_token_data;
   wire 			 link_unprot_pcs_if_token_valid;
   wire 			 link_unprot_pcs_if_token_ready;
   
   wire [2*MAIN_TOK_WIDTH-1:0] 	 link_prot_pcs_if_token_data;
   wire 			 link_prot_pcs_if_token_valid;
   wire 			 link_prot_pcs_if_token_ready;
   
   wire [AUX_TOK_WIDTH-1:0] 	 link_aux2main_tokin_data;
   wire 			 link_aux2main_tokin_valid;
   wire 			 link_aux2main_tokin_ready;
   
   wire [2*MAIN_TOK_WIDTH-1:0] 	 link_bc_rx_sched_token_data_p3;
   wire 			 link_bc_rx_sched_token_ready_p3;
   wire 			 link_bc_rx_sched_token_valid_p3;
   
   wire [2*MAIN_TOK_WIDTH-1:0] 	 link_bc_rx_sched_token_data_p1;
   wire 			 link_bc_rx_sched_token_ready_p1;
   wire 			 link_bc_rx_sched_token_valid_p1;
   
   wire [2*MAIN_TOK_WIDTH-1:0] 	 tx_main_buff_tokout_data;
   wire 			 tx_main_buff_tokout_valid;
   wire 			 tx_main_buff_tokout_ready;
   
   wire 			 sched_buf_hdistop_tokout_valid; 
   wire 			 sched_buf_hdistop_tokout_ready; 
   wire [2*MAIN_TOK_WIDTH-1:0] 	 sched_buf_hdistop_tokout_data ; 
   

   
   wire 			 hdbt_hlic_frame_ready;
   wire 			 hdbt_hlic_read_ready;
   
   
   wire [2*MAIN_TOK_WIDTH-1:0] 	 hdbt_hlic_tokin_data;
   wire 			 hdbt_hlic_tokin_valid;
   wire 			 hdbt_hlic_tokin_ready;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 hdbt_hlic_tokout_data;
   wire 			 hdbt_hlic_tokout_valid;
   wire 			 hdbt_hlic_tokout_ready;
   
   wire [7:0] 			 pcs_retr_pid_pre;
   wire [6:0] 			 pcs_retr_pid;
   wire 			 pcs_retr_req;
   wire 			 pcs_retr_req_pre;
   wire 			 pcs_retr_req_rdy;
   wire 			 pcs_retr_req_MinRD;
   wire 			 pcs_retr_req_rdy_MinRD;
   wire [7:0] 			 pcs_retr_pid_MinRD;
   
   wire [31:0] 			 s_snk_pcs_clr_pre_counters;
   wire [31:0] 			 s_snk_pcs_clr_2_pre_counters;
   wire [31:0] 			 s_snk_pcs_clr_pre_crc_counters;
   wire [31:0] 			 s_snk_pcs_clr2_pre_crc_counters;
   wire [31:0] 			 s_snk_pcs_clr_counters;
   wire [31:0] 			 s_snk_pcs_clr_crc_counters;
   
   wire 			 lppf_null_interrupt;
   
   wire [12: 0] 		 s_retr_buff_max_words_in_ram;
   
   
   wire                      snk_pcs_c_pam_bucket_disable;
   wire                      snk_pcs_Drift_from_cpu;
   wire                      src_pcs_c_src_pcs_aux_mode;
   wire                      src_pcs_Drift_from_cpu_Src;
   wire                      bc_msio_tadp_nibble_mode;
   wire                      auxhdbtsched_Msio_NibbleMode;
   wire                      auxhdbtsched_AUX_AYALON1_MODE;
   wire                      hdmic_cec_in_trans;
   wire                      hdmic_ddc_pds_ack;
   wire                      hdmic_ddc_slv_used_int;
   wire                      p1_reg_pcr_TMDS_MN_FRZ;
   wire                      p1_reg_pcr_FsLimitEn;
   wire                      snk_pcs_snk_1_var_mode_en;
   wire                      snk_pcs_snk_2_var_mode_en;
   wire                      bc_msio_tadp_ignore_crc;
   wire [ 1: 0]              bc_pdif_op_mode;
   wire                      auxhdbtsched_eth_sync_en;
   wire                      hdmic_ddc_slv_stop_int;
   wire                      MAIN_token_dir;
   wire                      snk_pcs_snk_1_PktCombine_token0_en;
   wire                      snk_pcs_snk_2_PktCombine_token0_en;
   wire                      bc_msio_tadp_data_Lsb_First;
   wire [ 1: 0]              bc_link_bc_hlic_pkt_prio;
   wire                      auxhdbtsched_lppf_mode;
   wire                      lppf_lppf_start_silent_en;
   wire                      hdmic_ddc_mst_gen_req;
   wire                      MAIN_pkt_all;
   wire [ 1: 0]              p1_reg_pcr_TMDS_MN_DIFF_SLCT;
   wire                      snk_pcs_snk_1_PktCombine_token1_en;
   wire                      snk_pcs_snk_2_PktCombine_token1_en;
   wire                      snk_pcs_Drift_ClkPkts_mon_enable;
   wire                      src_pcs_Drift_ClkPkts_mon_enable_Src;
   wire                      bc_MSIO_tadp_parse_En;
   wire [ 3: 0]              bc_uart_link_uart_rx_frac_val;
   wire [ 3: 0]              bc_uart_link_uart_tx_frac_val;
   wire                      bc_clock_pack_enable_tx;
   wire [ 1: 0]              bc_a1_msio_packet_pam;
   wire                      auxhdbtsched_token_dir;
   wire                      MAIN_pkt_lsb;
   wire [ 2: 0]              p1_reg_pcr_TMDS_MN_ACC_PERIOD_SLCT;
   wire                      src_pcs_Drift_ClkPkts_mon_enable_Src_minRD;
   wire                      bc_msio_tadp_ayalon1_mode;
   wire [ 4: 0]              bc_msio_tadp_rx_stm_end;
   wire [ 4: 0]              bc_msio_tadp_tx_stm_end;
   wire [ 4: 0]              bc_msio_rx_stm_end;
   wire [ 4: 0]              bc_msio_tx_stm_end;
   wire [ 1: 0]              auxhdbtsched_packet_pam;
   wire                      p1_reg_pcr_TMDS_SSC_RST;
   wire                      bc_msio_err_clr;
   wire [ 2: 0]              bc_cir_cir_rx_data_num_in;
   wire                      bc_mn_steady;
   wire                      auxhdbtsched_m2a_Data_Lsb_First;
   wire [ 5: 0]              hdmic_ddc_i2c_delay;
   wire [ 2: 0]              p1_reg_pcr_TMDS_FO_DIFF_THR;
   wire                      bc_MSIO_tadp_gen_En;
   wire                      bc_cir_cir_rx_prot;
   wire                      bc_RemoveZeroExt_en;
   wire [ 1: 0]              auxhdbtsched_dauxdisp_spare_dest;
   wire [ 2: 0]              auxhdbtsched_low_pkt_num;
   wire [ 2: 0]              high_pkt_num;
   wire [ 3: 0]              snk_pcs_Drift_ClkPkts_mon_clk_sub_type;
   wire [ 3: 0]              src_pcs_Drift_ClkPkts_mon_clk_sub_type_Src;
   wire [ 2: 0]              bc_msio_tadp_rx_last_state;
   wire [ 2: 0]              bc_msio_tadp_tx_last_state;
   wire [ 3: 0]              bc_msio_tadp_clk_scale;
   wire                      bc_cir_cir_rx_lsb_first;
   wire [ 3: 0]              bc_uart_link_uart_tx_fifo_decim;
   wire [ 3: 0]              bc_TMDS_MN_STEADY_THR;
   wire [ 2: 0]              bc_msio_rx_last_state;
   wire [ 2: 0]              bc_msio_tx_last_state;
   wire [ 3: 0]              bc_clk_scale;
   wire                      auxhdbtsched_packet_all;
   wire [ 7: 0]              auxhdbtsched_OutPakSize;
   wire [ 7: 0]              hdmic_cec_block_rise_time;
   wire [ 4: 0]              hdmic_ddc_mst_gen_used;
   wire [ 5: 0]              snk_pcs_snk_pcs_if_sd;
   wire [ 3: 0]              src_pcs_Drift_ClkPkts_mon_clk_sub_type_Src_minRD;
   wire [ 7: 0]              src_pcs_mainbuffer_1_words_in_ram_sync;
   wire [ 2: 0]              snk_pcs_c_snk_pcs_max_requests_num_MinRD;
   wire [ 5: 0]              bc_msio_tadp_tx_invert;
   wire [ 1: 0]              bc_msio_tadp_pam;
   wire [ 5: 0]              lppf_lppf_max_data_size;
   wire [ 7: 0]              hdmic_ddc_tsu_data;
   wire [ 4: 0]              hdmic_ddc_slv_used_thr;
   wire                      p1_reg_pcr_minus1_compare;
   wire [ 2: 0]              p1_reg_pcr_TMDS_FO_CHANGE_THR;
   wire                      snk_pcs_DSP_Path_1_En;
   wire                      snk_pcs_Remove_Uprotected;
   wire [ 5: 0]              bc_msio_rx_invert;
   wire [ 2: 0]              auxhdbtsched_high_pkt_num;
   wire                      hdmic_ddc_data_pre_en;
   wire                      hdmic_ddc_slv_used_mask;
   wire [ 2: 0]              low_pkt_num;
   wire                      Main_A1_mode;
   wire                      p1_reg_pcr_plus1_tokin;
   wire                      snk_pcs_DSP_Path_0_En;
   wire                      snk_pcs_MainRtrDet2_en;
   wire [ 1: 0]              bc_msio_tadp_qual;
   wire                      bc_msio_tx_enable;
   wire                      lppf_lppf_rx_descr_lock;
   wire                      hdmic_ddc_data_idle_en;
   wire                      hdmic_ddc_slv_stop_mask;
   wire [ 4: 0]              hdmic_ddc_i2c_pull_delay;
   wire                      hdmic_ddc_mst_mon_req;
   wire                      Main_aggr_en;
   wire                      p1_reg_pcr_clko_bypass;
   wire                      p1_reg_pcr_plus1_pd;
   wire [10: 0]              p1_reg_pcr_fo_est_out;
   wire [ 5: 0]              p1_reg_pcr_TMDS_SSC_MAX;
   wire                      snk_pcs_WriteGoodHeader;
   wire [ 1: 0]              bist_p1_c_tx_bist_tadp_packet_prio;
   wire [ 1: 0]              bist_p2_c_tx_bist_tadp_packet_prio;
   wire [ 1: 0]              bist_p3_c_tx_bist_tadp_packet_prio;
   wire [ 3: 0]              bc_TMDS_MN_LEAK_SLCT;
   wire                      bc_msio_rx_enable;
   wire                      lppf_lppf_rx_active;
   wire                      hdbt_hlic_Gen_Mode;
   wire                      hdmic_ddc_edid_offset_rst;
   wire                      hdmic_ddc_mst_gen_mask;
   wire                      aux2main_data_lsb_first;
   wire                      p1_reg_pcr_drop_pkts;
   wire                      snk_pcs_MainRtrDet_en;
   wire [ 1: 0]              bc_msio_tadp_prio;
   wire [11: 0]              auxhdbtsched_gap_between_bursts;
   wire [ 7: 0]              auxhdbtsched_A1_HDMIC_ID;
   wire                      auxhdbtsched_AUX_NBS1_EN_3;
   wire [ 3: 0]              lppf_lppf_start_foll_info_data;
   wire                      hdmic_cpu_fifo_cec_ing_rx_data_rdy;
   wire                      hdmic_cec_pu_enable;
   wire                      hdmic_ddc_edid_seg_sel;
   wire                      hdmic_ddc_mst_mon_mask;
   wire                      MAIN_Eth_PAM;
   wire                      p1_reg_pcr_enable;
   wire [11: 0]              p1_reg_pcr_TMDS_SD_CYCLE;
   wire [ 1: 0]              bist_p1_c_tx_bist_tadp_packet_qual;
   wire [ 1: 0]              bist_p2_c_tx_bist_tadp_packet_qual;
   wire [ 1: 0]              bist_p3_c_tx_bist_tadp_packet_qual;
   wire [ 5: 0]              bc_msio_tadp_rx_state03_data;
   wire [ 5: 0]              bc_msio_tadp_rx_state07_data;
   wire [ 5: 0]              bc_msio_tadp_tx_state03_data;
   wire [ 5: 0]              bc_msio_tadp_tx_state07_data;
   wire [ 1: 0]              bc_TMDS_MN_DIFF_SLCT;
   wire [ 5: 0]              bc_msio_rx_state03_data;
   wire [ 5: 0]              bc_msio_tx_state03_data;
   wire [ 5: 0]              bc_msio_tx_state07_data;
   wire [ 5: 0]              bc_msio_rx_state07_data;
   wire                      auxhdbtsched_packet_lsb;
   wire                      auxhdbtsched_eth_ext_pad_en;
   wire [ 7: 0]              auxhdbtsched_AUX_ETH_SID;
   wire                      auxhdbtsched_AUX_NBS2_EN_7;
   wire                      hdmic_cec_tx_gen_contention;
   wire                      hdmic_ddc_slv_gen_mask;
   wire [ 3: 0]              lnk_LastExtShift;
   wire                      MAIN_Eth_Dis_Sprs;
   wire                      p1_reg_pcr_vf_too_high_mode_pass;
   wire                      p1_reg_pcr_TMDS_MN_MODE;
   wire [ 5: 0]              bc_msio_tadp_rx_invert;
   wire [ 1: 0]              bc_msio_tadp_ext_data;
   wire [ 3: 0]              bc_link_bc_hlic_data_num;
   wire [ 7: 0]              bc_snirlnk_rx_max_data_p3;
   wire                      auxhdbtsched_packet_sid_req;
   wire                      auxhdbtsched_eth_ptp_en;
   wire                      auxhdbtsched_AUX_NBS3_EN_F;
   wire                      lppf_lppf_cir_uart_rx_hw_mode;
   wire                      hdmic_ddc_mode_mstr_slv;
   wire                      hdmic_cec_time_err_as_cont;
   wire                      hdmic_ddc_slv_mon_mask;
   wire                      lnk_EnableVariationMode;
   wire                      MAIN_Eth_prot;
   wire                      p1_reg_pcr_clko_Enable;
   wire [ 3: 0]              p1_reg_pcr_TMDS_MN_STEADY_THR;
   wire [ 2: 0]              snk_pcs_c_snk_pcs_max_requests_num;
   wire [ 7: 0]              snk_pcs_Drift_ClkPkts_mon_sid;
   wire [15: 0]              snk_pcs_packetdelay_MinRD;
   wire [ 7: 0]              src_pcs_Drift_ClkPkts_mon_sid_Src;
   wire [15: 0]              bist_p1_c_tx_bist_tadp_packet_delay_max;
   wire [15: 0]              bist_p2_c_tx_bist_tadp_packet_delay_max;
   wire [15: 0]              bist_p3_c_tx_bist_tadp_packet_delay_max;
   wire                      bc_msio_tadp_tx_enable;
   wire [ 7: 0]              bc_cir_cir_rx_sid;
   wire [15: 0]              bc_cir_cir_tx_carrier;
   wire [11: 0]              bc_uart_link_uart_rx_int_val;
   wire [11: 0]              bc_uart_link_uart_rx_idle_durtion;
   wire [11: 0]              bc_uart_link_uart_tx_int_val;
   wire [ 4: 0]              bc_uart_link_uart_s_rx_fifo_used;
   wire [ 7: 0]              bc_snirlnk_tx_max_data_p3;
   wire [15: 0]              auxhdbtsched_AUX_TOK_TYPE;
   wire [ 7: 0]              auxhdbtsched_packet_sid;
   wire                      auxhdbtsched_Hlic_Data_Lsb_First;
   wire                      auxhdbtsched_snir_auxhdbtsched_Enable;
   wire [ 5: 0]              auxhdbtsched_auxhdbt_fifo_rd_thrshold;
   wire [ 7: 0]              auxhdbtsched_max_p3_tok;
   wire                      auxhdbtsched_AUX_NBS3_EN_5;
   wire [ 3: 0]              lppf_lppf_start_tx_stm;
   wire [15: 0]              lppf_lppf_stype_packets;
   wire                      lppf_lppf_cir_uart_tx_hw_mode;
   wire [15: 0]              lppf_AUX_TOK_TYPE;
   wire [15: 0]              lppf_lppf_start_init_idle_max;
   wire [15: 0]              lppf_lppf_start_foll_idle_max;
   wire [15: 0]              lppf_lppf_stype_01_packets;
   wire [15: 0]              lppf_lppf_stype_03_packets;
   wire [15: 0]              lppf_lppf_stype_05_packets;
   wire [15: 0]              lppf_lppf_stype_07_packets;
   wire [15: 0]              lppf_lppf_stype_09_packets;
   wire [15: 0]              lppf_lppf_stype_11_packets;
   wire [15: 0]              lppf_lppf_stype_13_packets;
   wire [15: 0]              lppf_lppf_stype_15_packets;
   wire [15: 0]              lppf_lppf_short_packets;
   wire [15: 0]              lppf_lppf_idle_error;
   wire [15: 0]              lppf_lppf_type_error;
   wire [15: 0]              lppf_lppf_max_data_err;
   wire [ 3: 0]              hdbt_hlic_PTYPE;
   wire [15: 0]              hdbt_hlic_ACK_WD;
   wire                      hdmic_cpu_egr_rxs_bypass;
   wire                      hdmic_cpu_fifo_cec_egr_rx_data_rdy;
   wire [15: 0]              hdmic_cec_error_out_time;
   wire                      hdmic_cec_cont_add;
   wire [15: 0]              hdmic_cec_delay_fall;
   wire [15: 0]              hdmic_cec_sb_nom;
   wire [15: 0]              hdmic_cec_dat_h_nom;
   wire [15: 0]              hdmic_cec_dat_samp;
   wire [15: 0]              hdmic_cec_ack_release;
   wire [15: 0]              hdmic_cec_ack_samp;
   wire [15: 0]              hdmic_cec_mon_table;
   wire [15: 0]              hdmic_cec_auto_nack;
   wire [15: 0]              hdmic_cec_sb_l_max;
   wire [15: 0]              hdmic_cec_sb_falling_edges_max;
   wire [15: 0]              hdmic_cec_delay_same_initiator;
   wire [15: 0]              hdmic_cec_delay_retrans;
   wire [15: 0]              hdmic_cec_tx_start;
   wire [15: 0]              hdmic_cec_tx_ack_h_2;
   wire [15: 0]              hdmic_cec_auto_h_nack;
   wire                      hdmic_ddc_allow_ram_init;
   wire [ 4: 0]              hdmic_ddc_mst_mon_used;
   wire [15: 0]              aux2main_sid_required;
   wire [ 4: 0]              Main_aggr_type;
   wire                      p1_reg_pcr_clko_MN_LsbFirst;
   wire [15: 0]              p1_reg_pcr_vf_start;
   wire [ 5: 0]              snk_pcs_snk_pcs_if_ds;
   wire [ 3: 0]              snk_pcs_snk_1_cfg_ext_rd_type;
   wire [ 3: 0]              snk_pcs_snk_2_cfg_ext_rd_type;
   wire                      src_pcs_MainHdiRemPid_enable_minRD;
   wire [ 3: 0]              src_pcs_cfg_ext_rd_type;
   wire [ 7: 0]              src_pcs_Drift_ClkPkts_mon_sid_Src_minRD;
   wire [ 7: 0]              src_pcs_mainbuffer_0_words_in_ram_sync;
   wire [15: 0]              snk_pcs_c_snk_pcs_packetdelay;
   wire                      snk_pcs_c_snk_pcs_ret_enable_MinRD;
   wire                      bc_msio_tadp_rx_enable;
   wire [ 1: 0]              bc_link_bc_hlic_pkt_qual;
   wire [ 2: 0]              bc_TMDS_MN_CHANGE_THR;
   wire                      auxhdbtsched_Hlic_NibbleMode;
   wire [ 2: 0]              auxhdbtsched_AUX_HLIC_A1_SHIFT;
   wire                      auxhdbtsched_AUX_NBS3_EN_1;
   wire                      lppf_a1_lppf_sw_rd_ready;
   wire                      lppf_lppf_start_link_active_negate;
   wire [ 3: 0]              lppf_lppf_start_init_info_data;
   wire                      hdbt_hlic_pdif_is_enabled;
   wire                      src_pcs_pamconv_bypass_minRD;
   wire [ 2: 0]              bc_msio_tadp_ext;
   wire [ 5: 0]              bc_rx_sync_mode;
   wire                      auxhdbtsched_Hdmic_Data_Lsb_First;
   wire                      auxhdbtsched_AUX_MSIO_A1_FLIP;
   wire                      auxhdbtsched_AUX_NBS1_NIBB_ORDER_3;
   wire                      lppf_lppf_start_link_active_assert;
   wire                      lppf_lppf_start_silent_req;
   wire                      hdbt_hlic_A1_MODE;
   wire [ 1: 0]              p1_reg_pcr_clko_Mn_Ext_Info;
   wire                      src_pcs_ret_enable_minRD;
   wire [15: 0]              src_pcs_c_src_pcs_idle_delay;
   wire [ 3: 0]              bist_p1_c_tx_bist_tadp_packet_type;
   wire [ 3: 0]              bist_p2_c_tx_bist_tadp_packet_type;
   wire [ 3: 0]              bist_p3_c_tx_bist_tadp_packet_type;
   wire                      bc_uart_link_uart_IgnoreCRC;
   wire                      auxhdbtsched_Hdmic_NibbleMode;
   wire                      auxhdbtsched_Hlic_IgnoreCRC;
   wire                      auxhdbtsched_AUX_NBS2_NIBB_ORDER_7;
   wire                      lppf_lppf_start_rx_active_negate;
   wire                      lppf_lppf_start_foll_full_en;
   wire                      hdbt_hlic_A1_LPPF;
   wire                      hdmic_cpu_fifo_cec_egr_tx_data_rdy;
   wire [ 5: 0]              hdmic_cpu_fifo_cec_ing_rx_used;
   wire                      hdmic_ddc_slv_gen_req;
   wire                      p1_reg_pcr_clko_Mn_Ext;
   wire [ 3: 0]              p1_reg_pcr_TMDS_MN_LEAK_SLCT;
   wire                      src_pcs_c_src_pcs_crc_spec3_mode;
   wire [ 5: 0]              bc_msio_tadp_rx_state02_data;
   wire [ 5: 0]              bc_msio_tadp_rx_state06_data;
   wire [ 5: 0]              bc_msio_tadp_tx_state02_data;
   wire [ 5: 0]              bc_msio_tadp_tx_state06_data;
   wire [11: 0]              bc_uart_link_uart_tx_fifo_thr_high;
   wire                      bc_uart_link_uart_Pkt_Gen_En;
   wire [ 5: 0]              bc_msio_rx_state02_data;
   wire [ 5: 0]              bc_msio_tx_state02_data;
   wire [ 5: 0]              bc_msio_tx_state06_data;
   wire [ 5: 0]              bc_msio_rx_state06_data;
   wire                      bc_Drift_ClkPkts_mon_enable;
   wire                      auxhdbtsched_Msio_Data_Lsb_First;
   wire                      auxhdbtsched_Msio_IgnoreCRC;
   wire                      auxhdbtsched_AUX_NBS3_NIBB_ORDER_F;
   wire                      lppf_lppf_start_rx_active_assert;
   wire                      lppf_lppf_start_foll_full_req;
   wire                      hdbt_hlic_rx_cmd_fifo_overflow;
   wire                      hdbt_hlic_Lsb_First;
   wire [ 3: 0]              hdmic_cpu_egr_tx_rxs;
   wire [15: 0]              hdmic_ing_gen_hdmi_ctrl_delay;
   wire [15: 0]              hdmic_egr_gen_hdmi_ctrl_delay;
   wire [ 6: 0]              hdmic_ddc_edid1_addr;
   wire [ 7: 0]              Main_c_max_pld_len;
   wire                      p1_reg_pcr_clko_MN_Prot;
   wire [ 3: 0]              snk_pcs_c_snk_pcs_maxrts_pam;
   wire                      src_pcs_c_src_pcs_crc_header_crc;
   wire [ 1: 0]              bist_p1_c_tx_bist_tadp_packet_pam;
   wire [ 1: 0]              bist_p2_c_tx_bist_tadp_packet_pam;
   wire [ 1: 0]              bist_p3_c_tx_bist_tadp_packet_pam;
   wire [ 7: 0]              bc_uart_link_uart_xoff_val;
   wire                      auxhdbtsched_Hdmic_IgnoreCRC;
   wire                      auxhdbtsched_AUX_NBS3_NIBB_ORDER_5;
   wire                      lppf_lppf_start_descr_lock_negate;
   wire                      lppf_lppf_start_foll_info_req;
   wire                      hdbt_hlic_frame_done;
   wire                      hdbt_hlic_prot;
   wire [ 8: 0]              hdbt_hlic_hlen;
   wire                      hdmic_cpu_egr_v5_bypass;
   wire                      hdmic_ing_gen_prot;
   wire                      hdmic_egr_gen_prot;
   wire                      hdmic_ddc_edid1_en;
   wire                      snk_pcs_c_snk_pcs_disable_gap_req;
   wire                      src_pcs_MainHdiRemPid_enable_fixRD;
   wire [ 3: 0]              bc_msio_tadp_ptype;
   wire [ 4: 0]              bc_drift_drfwin_rx;
   wire [ 3: 0]              bc_msio_ptype;
   wire [ 5: 0]              auxhdbtsched_AUX_ETH_TOKENS_PART;
   wire                      auxhdbtsched_AUX_HlicParseEnable;
   wire                      auxhdbtsched_AUX_NBS3_NIBB_ORDER_1;
   wire                      lppf_lppf_start_descr_lock_assert;
   wire                      lppf_lppf_start_foll_idle_req;
   wire                      hdbt_hlic_last_bad_ack;
   wire                      hdmic_cpu_egr_tx_v5;
   wire                      hdmic_cpu_fifo_cec_egr_tx_clr;
   wire [ 5: 0]              hdmic_cpu_fifo_cec_egr_rx_used;
   wire                      hdmic_cec_mode_pt;
   wire [ 1: 0]              p1_reg_pcr_clko_MN_Pam;
   wire                      snk_pcs_c_snk_pcs_retr_prot;
   wire                      src_pcs_c_src_pcs_null_enable;
   wire [ 5: 0]              bc_msio_tadp_rx_sync_mode;
   wire                      bc_msio_tadp_prot;
   wire                      bc_cir_cir_sw_empty;
   wire [ 2: 0]              bc_uart_link_uart_pkt_size;
   wire [ 7: 0]              bc_snirlnk_rx_max_data_p2;
   wire                      auxhdbtsched_AUX_MsioParseEnable;
   wire                      lppf_lppf_start_foll_idle_max_err;
   wire                      lppf_lppf_start_init_full_en;
   wire                      hdbt_hlic_write_ready;
   wire                      hdmic_cec_egr_bypass;
   wire [ 7: 0]              MAIN_Eth_SID;
   wire                      p1_reg_pcr_mn_zero_clr;
   wire [13: 0]              p1_reg_pcr_TMDS_FIFO_LOOP_REF;
   wire [ 3: 0]              p1_reg_pcr_TMDS_FO_LEAK_SLCT;
   wire                      snk_pcs_c_snk_pcs_retr_lsb_first;
   wire [ 7: 0]              snk_pcs_DriftSID;
   wire                      src_pcs_c_src_pcs_crc_lsb_res;
   wire [ 7: 0]              src_pcs_DriftSID_Src;
   wire [ 7: 0]              bist_p1_c_tx_bist_tadp_packet_len_max;
   wire [ 7: 0]              bist_p2_c_tx_bist_tadp_packet_len_max;
   wire [ 7: 0]              bist_p3_c_tx_bist_tadp_packet_len_max;
   wire                      bc_msio_tadp_future;
   wire [23: 0]              bc_cir_cir_tx_time_out;
   wire                      bc_cir_cir_tx_ignore_crc;
   wire                      bc_cir_cir_sw_full;
   wire [ 7: 0]              bc_uart_link_uart_max_bits_cnt;
   wire                      bc_uart_link_uart_prot;
   wire [ 7: 0]              bc_snirlnk_tx_max_data_p2;
   wire [ 3: 0]              bc_Drift_ClkPkts_mon_clk_sub_type;
   wire                      auxhdbtsched_AUX_HdmicParseEnable;
   wire [ 7: 0]              auxhdbtsched_max_p2_tok;
   wire [ 1: 0]              auxhdbtsched_AUX_NBS1_WEIGHT_3;
   wire [ 3: 0]              lppf_a1_lppf_sw_rd_used;
   wire                      lppf_lppf_start_init_info_max_err;
   wire                      lppf_lppf_start_init_full_req;
   wire                      hdmic_cpu_ing_rxs_bypass;
   wire [ 7: 0]              hdmic_ddc_hdcp_reg_addr;
   wire                      EthTokenDir;
   wire [ 7: 0]              Main_A1_hdmic_id;
   wire                      p1_reg_pcr_mn_change_clr;
   wire [12: 0]              p1_reg_pcr_bw_limit_out_cnt;
   wire [ 3: 0]              p1_reg_pcr_FSDownLimit;
   wire                      p1_reg_pcr_TMDS_FIFO_LOOP_EN;
   wire [ 5: 0]              snk_pcs_snk_pcs_if_ls;
   wire                      src_pcs_cfg_sel_default_ch;
   wire                      snk_pcs_c_snk_pcs_retr_pkt_gen_en;
   wire                      snk_pcs_DriftA1Mode;
   wire                      src_pcs_c_src_pcs_crc_inv_res;
   wire                      src_pcs_DriftA1Mode_Src;
   wire                      bc_cir_cir_tx_time_out_en;
   wire                      bc_cir_cir_tx_lsb_first;
   wire                      bc_cir_cir_sw_wr_rdy;
   wire                      bc_uart_link_uart_rx_oversampled;
   wire                      bc_uart_link_uart_tx_oversampled;
   wire [ 7: 0]              bc_link_bc_hlic_pkt_sid;
   wire                      bc_snir_link_bc_RemoveZeroExt;
   wire                      bc_cir_from_io_select;
   wire                      lppf_lppf_start_init_idle_max_err;
   wire                      lppf_lppf_start_init_done_req;
   wire [ 7: 0]              hdbt_hlic_SID;
   wire [ 5: 0]              hdmic_cpu_fifo_cec_egr_tx_used;
   wire                      hdmic_cec_nack_all;
   wire [ 4: 0]              hdmic_ddc_slv_gen_used;
   wire                      MAIN_eth_ext_pad_en;
   wire                      p1_reg_pcr_clki_MN_IgnoreCRC;
   wire                      src_pcs_src_pcs_if_rtr_sd_fixRD;
   wire                      snk_pcs_c_snk_pcs_header_crc;
   wire                      snk_pcs_DriftAddEn;
   wire                      src_pcs_c_src_pcs_crc_lsb_first;
   wire                      src_pcs_DriftAddEn_Src;
   wire [ 5: 0]              bc_msio_tadp_rx_state01_data;
   wire [ 5: 0]              bc_msio_tadp_rx_state05_data;
   wire [ 5: 0]              bc_msio_tadp_tx_state01_data;
   wire [ 5: 0]              bc_msio_tadp_tx_state05_data;
   wire                      bc_cir_cir_tx_carrier_last;
   wire [ 5: 0]              bc_msio_rx_state01_data;
   wire [ 5: 0]              bc_msio_tx_state01_data;
   wire [ 5: 0]              bc_msio_tx_state05_data;
   wire [ 5: 0]              bc_msio_rx_state05_data;
   wire                      bc_uart_from_io_select;
   wire [ 5: 0]              auxhdbtsched_AUX_TX_DIVR;
   wire                      auxhdbtsched_local_sid_array_en;
   wire [ 1: 0]              auxhdbtsched_Main2Aux_pkt_stm;
   wire [ 1: 0]              auxhdbtsched_AUX_NBS2_WEIGHT_7;
   wire                      lppf_lppf_start_init_info_req;
   wire                      hdbt_hlic_rx_cmd_fifo_ovr_cnt_clr;
   wire [ 4: 0]              hdbt_hlic_rx_stm;
   wire [ 3: 0]              hdmic_cpu_egr_rx_rxs;
   wire                      hdmic_cpu_fifo_cec_ing_tx_data_rdy;
   wire                      hdmic_cec_nack_brdcst;
   wire                      Eth_Enable_Brg;
   wire                      p1_reg_pcr_clki_MN_Lsb_First;
   wire [ 7: 0]              p1_reg_pcr_TMDS_MN_INIT_DEV;
   wire                      src_pcs_src_pcs_if_rtr_ds_fixRD;
   wire                      src_pcs_DriftAddEn_Src_minRD;
   wire                      snk_pcs_c_snk_pcs_spec3_mode;
   wire                      snk_pcs_Drift_LsbFirst;
   wire                      src_pcs_Drift_LsbFirst_Src;
   wire                      bc_cir_cir_tx_carrier_en;
   wire [ 1: 0]              bc_uart_link_uart_tx_stop_bits;
   wire [ 1: 0]              bc_link_bc_hlic_pkt_ext_info;
   wire [ 1: 0]              bc_link_bc_hlic_pkt_data_num;
   wire [ 8: 0]              bc_link_uart_tx_fifo_used;
   wire                      lppf_lppf_start_init_idle_req;
   wire                      hdbt_hlic_rx_cmd_fifo_overflow_clr;
   wire                      hdmic_cpu_egr_rx_v5;
   wire                      hdmic_ddc_slv_mon_req;
   wire                      p1_reg_pcr_sw_flush;
   wire [15: 0]              p1_reg_pcr_fifo_loop_acc;
   wire                      src_pcs_src_pcs_if_rtr_ls_fixRD;
   wire                      snk_pcs_c_snk_pcs_pamconv_bypass;
   wire [ 3: 0]              snk_pcs_snk_LastExtShift;
   wire                      snk_pcs_Gen_Mode;
   wire                      src_pcs_c_src_pcs_send_idle_protected;
   wire [ 3: 0]              src_pcs_LastExtShift;
   wire [ 7: 0]              bist_p1_c_rx_bist_tadp_packet_sid;
   wire [ 7: 0]              bist_p2_c_rx_bist_tadp_packet_sid;
   wire [ 7: 0]              bist_p3_c_rx_bist_tadp_packet_sid;
   wire                      bc_link_bc_hlic_pkt_ext;
   wire                      bc_snir_link_bc_lppf_mode;
   wire [ 5: 0]              auxhdbtsched_AUX_ETH_TOKENS_FULL;
   wire [ 1: 0]              auxhdbtsched_P3_QUAL;
   wire [ 1: 0]              auxhdbtsched_AUX_NBS3_WEIGHT_F;
   wire                      lppf_lppf_crc_lsb_first;
   wire                      lppf_a1_lppf_sw_wr_ready;
   wire                      hdbt_hlic_rx_clr_crc_cnt;
   wire [ 3: 0]              hdmic_cpu_ing_tx_rxs;
   wire [ 6: 0]              hdmic_ddc_edid0_addr;
   wire [12: 0]              c_retr_buff_threshold;
   wire                      p1_reg_pcr_mode_pixel;
   wire [ 3: 0]              p1_reg_pcr_FSUpLimit;
   wire                      p1_reg_pcr_mn_steady;
   wire [ 4: 0]              p1_reg_pcr_TMDS_FIFO_LOOP_B_SLCT;
   wire                      src_pcs_src_pcs_if_rtr_sd_minRD;
   wire                      snk_pcs_c_snk_pcs_enable_pam16crc;
   wire [ 7: 0]              bist_p1_c_tx_bist_tadp_packet_sid;
   wire [ 7: 0]              bist_p2_c_tx_bist_tadp_packet_sid;
   wire [ 7: 0]              bist_p3_c_tx_bist_tadp_packet_sid;
   wire [ 1: 0]              bc_uart_link_uart_rx_data_size;
   wire [ 1: 0]              bc_uart_link_uart_tx_data_size;
   wire [ 7: 0]              bc_uart_link_uart_xon_val;
   wire                      bc_link_bc_hlic_prot;
   wire                      bc_pdif_ayalon_sink_mode;
   wire [ 7: 0]              lppf_A1_HDMI_CTRL_SID_VAL;
   wire                      lppf_lppf_rep_start_en;
   wire [ 7: 0]              hdbt_hlic_PKT_LEN;
   wire                      hdbt_hlic_Enable;
   wire                      hdmic_cpu_ing_v5_bypass;
   wire [ 7: 0]              hdmic_ing_gen_sid;
   wire [ 7: 0]              hdmic_egr_gen_sid;
   wire                      hdmic_ddc_edid0_en;
   wire [ 2: 0]              AUX_ETH_PART_BLOCKS;
   wire                      p1_reg_pcr_mode_sid_cpu;
   wire                      p1_reg_pcr_mn_zero_latch;
   wire [ 2: 0]              p1_reg_pcr_TMDS_MN_CHANGE_THR;
   wire                      src_pcs_src_pcs_if_rtr_ds_minRD;
   wire                      src_pcs_if_mainbuffer_0_sd;
   wire                      snk_pcs_c_snk_pcs_enable_pam8crc;
   wire                      snk_pcs_snk_EnableVariationMode;
   wire                      src_pcs_pamconv_bypass_fixRD;
   wire                      src_pcs_EnableVariationMode;
   wire                      bist_p1_c_tx_bist_tadp_packet_prot;
   wire [ 1: 0]              bist_p1_c_tx_bist_tadp_prbs_pol_type;
   wire [ 1: 0]              bist_p1_c_rx_bist_tadp_prbs_pol_type;
   wire                      bist_p2_c_tx_bist_tadp_packet_prot;
   wire [ 1: 0]              bist_p2_c_tx_bist_tadp_prbs_pol_type;
   wire [ 1: 0]              bist_p2_c_rx_bist_tadp_prbs_pol_type;
   wire                      bist_p3_c_tx_bist_tadp_packet_prot;
   wire [ 1: 0]              bist_p3_c_tx_bist_tadp_prbs_pol_type;
   wire [ 1: 0]              bist_p3_c_rx_bist_tadp_prbs_pol_type;
   wire [ 1: 0]              bc_cir_rx_buffer_out_delay_size;
   wire [23: 0]              bc_cir_cir_rx_idle_size;
   wire                      bc_uart_link_uart_rx_odd_parity;
   wire                      bc_uart_link_uart_tx_odd_parity;
   wire                      bc_uart_link_uart_cts_tx_en;
   wire [ 1: 0]              bc_uart_rx_buffer_out_delay_size;
   wire                      bc_link_bc_hlic_lsb_first;
   wire [ 7: 0]              bc_drift_mn_add_sid_rx;
   wire [23: 0]              bc_mn_data_out;
   wire                      bc_remove_extended;
   wire [ 1: 0]              auxhdbtsched_P2_QUAL;
   wire [ 1: 0]              auxhdbtsched_AUX_NBS3_WEIGHT_5;
   wire                      lppf_nulldet_enable;
   wire [ 4: 0]              lppf_lppf_tx_type;
   wire                      hdbt_hlic_A1_WD_EN;
   wire                      hdbt_hlic_IgnoreCRC;
   wire                      hdbt_hlic_if_sd;
   wire                      hdmic_cpu_ing_tx_v5;
   wire                      hdmic_ing_gen_en;
   wire                      hdmic_egr_gen_en;
   wire [ 1: 0]              c_retr_buff_delay_size;
   wire                      p1_reg_pcr_mode_dan;
   wire                      p1_reg_pcr_mn_zero;
   wire [16: 0]              p1_reg_pcr_fifo_correction;
   wire                      src_pcs_src_pcs_if_rtr_ls_minRD;
   wire                      src_pcs_if_mainbuffer_0_ds;
   wire                      snk_pcs_c_snk_pcs_enable_pam4crc;
   wire                      snk_pcs_s_snk_pcs_MainNullDet_upro_enable;
   wire                      snk_pcs_snk_RemoveZeroExt;
   wire                      src_pcs_c_src_pcs_ret_always_pam_4;
   wire                      bist_p1_c_tx_bist_tadp_packet_fut;
   wire                      bist_p1_c_tx_bist_tadp_prbs_zero;
   wire                      bist_p1_c_rx_bist_tadp_resync_en;
   wire [ 2: 0]              bist_p1_s_rx_bist_tadp_state_stm;
   wire                      bist_p2_c_tx_bist_tadp_packet_fut;
   wire                      bist_p2_c_tx_bist_tadp_prbs_zero;
   wire                      bist_p2_c_rx_bist_tadp_resync_en;
   wire [ 2: 0]              bist_p2_s_rx_bist_tadp_state_stm;
   wire                      bist_p3_c_tx_bist_tadp_packet_fut;
   wire                      bist_p3_c_tx_bist_tadp_prbs_zero;
   wire                      bist_p3_c_rx_bist_tadp_resync_en;
   wire [ 2: 0]              bist_p3_s_rx_bist_tadp_state_stm;
   wire [ 3: 0]              bc_cir_rx_buffer_out_words_in_ram;
   wire                      bc_cir_rx_buffer_out_crc_bit_en;
   wire                      bc_cir_cir_rx_enable;
   wire                      bc_cir_cir_tx_enable;
   wire                      bc_uart_link_uart_rx_parity_en;
   wire                      bc_uart_link_uart_tx_parity_en;
   wire                      bc_uart_link_uart_cts_inv;
   wire [ 3: 0]              bc_uart_rx_buffer_out_words_in_ram;
   wire                      bc_uart_rx_buffer_out_crc_bit_en;
   wire                      bc_link_bc_hlic_ignore_crc;
   wire                      bc_clock_pack_enable_rx;
   wire                      bc_mn_change;
   wire                      bc_RemoveVideoPad_enable;
   wire [ 7: 0]              bc_snirlnk_rx_max_data_p1;
   wire [ 8: 0]              bc_pdif_clk_div;
   wire                      bc_cir_tx_io_enable;
   wire [ 2: 0]              auxhdbtsched_AUX_DQSC;
   wire                      lppf_snir_link_lppf_a1_mode;
   wire                      lppf_lppf_link_active;
   wire [ 3: 0]              lppf_lppf_stype_val;
   wire [ 3: 0]              lppf_lppf_info_data;
   wire                      hdbt_hlic_crc_swap_result;
   wire                      hdbt_hlic_crc_inv_result;
   wire                      hdbt_hlic_if_ds;
   wire                      hdmic_cec_ing_bypass;
   wire                      hdmic_ing_parse_ignoreCrc;
   wire                      hdmic_egr_parse_ignoreCrc;
   wire [ 3: 0]              hdmic_cpu_ing_rx_rxs;
   wire [ 1: 0]              hdmic_ddc_global_hw_ack;
   wire [ 6: 0]              hdmic_ddc_hdcp_addr;
   wire [19: 0]              hdmic_ddc_wd_max_cnt;
   wire                      c_tx_lb_disp_type_route;
   wire                      c_retr_buff_crc_bit_en;
   wire [12: 0]              s_retr_buff_words_in_ram;
   wire                      c_tx_retr_disp_type_route;
   wire                      p1_reg_pcr_mn_change_latch;
   wire                      p1_reg_pcr_in_middle_of_pkt;
   wire                      src_pcs_if_mainbuffer_0_ls;
   wire [ 6: 0]              snir_modules_other_reset_n;
   wire [ 6: 0]              snir_modules_other_reset_done;
   wire                      snk_pcs_c_snk_pcs_ret_enable;
   wire [31: 0]              snk_pcs_c_snk_pcs_ptype_pams;
   wire [31: 0]              snk_pcs_c_snk_pcs_qual_01_pams;
   wire [31: 0]              snk_pcs_c_snk_pcs_qual_10_pams;
   wire [31: 0]              snk_pcs_c_snk_pcs_qual_11_pams;
   wire [15: 0]              snk_pcs_c_snk_pcs_cycles_for_next_request;
   wire [31: 0]              snk_pcs_snk_pcs_stat_clear_bus;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_goodret;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_badret_crc;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_badret_nonreq;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_protected;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_unprotected;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_bad_unprotected;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_rtsreq_crc;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_rtsreq_gap;
   wire [29: 0]              snk_pcs_s_snk_pcs_stat_mem_protected;
   wire [29: 0]              snk_pcs_s_snk_pcs_stat_mem_unprotected;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_too_late;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_buck_blk;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_too_long;
   wire [31: 0]              snk_pcs_s_snk_pcs_header_crc_err_cnt;
   wire [31: 0]              snk_pcs_s_snk_pcs_header_crc_err_cnt_2;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_00_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_01_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_02_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_03_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_04_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_05_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_06_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_07_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_08_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_09_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_10_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_11_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_12_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_13_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_14_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_15_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_16_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_17_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_18_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_19_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_20_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_21_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_22_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_23_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_24_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_25_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_26_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_27_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_28_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_29_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_30_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_31_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_00_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_01_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_02_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_03_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_04_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_05_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_06_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_07_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_08_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_09_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_10_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_11_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_12_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_13_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_14_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_15_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_16_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_17_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_18_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_19_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_20_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_21_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_22_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_23_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_24_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_25_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_26_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_27_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_28_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_29_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_30_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_31_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_00_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_01_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_02_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_03_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_04_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_05_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_06_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_07_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_08_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_09_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_10_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_11_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_12_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_13_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_14_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_15_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_16_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_17_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_18_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_19_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_20_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_21_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_22_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_23_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_24_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_25_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_26_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_27_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_28_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_29_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_30_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_31_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_00_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_01_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_02_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_03_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_04_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_05_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_06_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_07_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_08_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_09_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_10_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_11_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_12_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_13_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_14_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_15_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_16_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_17_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_18_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_19_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_20_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_21_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_22_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_23_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_24_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_25_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_26_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_27_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_28_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_29_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_30_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_31_packets;
   wire [ 7: 0]              snk_pcs_c_snk_pcs_gap_pak_size;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_rtsreq_non_first;
   wire [28: 0]              snk_pcs_c_snk_pcs_pam_bak_max_size;
   wire [15: 0]              snk_pcs_c_snk_pcs_idle_delay;
   wire [ 7: 0]              snk_pcs_s_snk_pcs_MainNullDet_prot_null_frame_num;
   wire [ 7: 0]              snk_pcs_s_snk_pcs_MainNullDet_upro_null_frame_num;
   wire                      snk_pcs_s_snk_pcs_MainNullDet_prot_enable;
   wire [15: 0]              snk_pcs_Cpu_Drift;
   wire                      snk_pcs_snk_RemoveLastExt;
   wire [ 3: 0]              snk_pcs_HLIC_PTYPE;
   wire [31: 0]              snk_pcs_Drift_prot_ClkPkts_mon_trapped_data;
   wire [31: 0]              snk_pcs_Drift_upro_ClkPkts_mon_trapped_data;
   wire                      src_pcs_ret_enable_fixRD;
   wire [31: 0]              src_pcs_src_pcs_stat_clear_bus;
   wire [31: 0]              src_pcs_s_src_pcs_num_retreq;
   wire [31: 0]              src_pcs_s_src_pcs_num_goodret;
   wire [31: 0]              src_pcs_s_src_pcs_num_protected;
   wire [31: 0]              src_pcs_s_src_pcs_num_unprotected;
   wire [28: 0]              src_pcs_s_src_pcs_stat_mem;
   wire [15: 0]              src_pcs_c_src_pcs_repeat_req_distance;
   wire [31: 0]              src_pcs_ptype_pams;
   wire [31: 0]              src_pcs_qual_01_pams;
   wire [31: 0]              src_pcs_qual_10_pams;
   wire [31: 0]              src_pcs_qual_11_pams;
   wire [15: 0]              src_pcs_Cpu_Drift_Src;
   wire [31: 0]              src_pcs_Drift_ClkPkts_mon_trapped_data_Src;
   wire                      bist_p1_c_tx_bist_tadp_packet_enable;
   wire [15: 0]              bist_p1_c_tx_bist_tadp_packet_delay_min;
   wire [ 7: 0]              bist_p1_c_tx_bist_tadp_packet_len_min;
   wire                      bist_p1_c_tx_bist_tadp_single_mode;
   wire [31: 0]              bist_p1_s_tx_bist_tadp_packet_count;
   wire [31: 0]              bist_p1_c_tx_bist_tadp_single_go;
   wire                      bist_p1_c_rx_bist_tadp_packet_enable;
   wire                      bist_p1_s_rx_bist_tadp_state_lost;
   wire [31: 0]              bist_p1_s_rx_bist_tadp_prbs_err_cnt;
   wire [31: 0]              bist_p1_s_rx_bist_tadp_packet_count;
   wire [31: 0]              bist_p1_s_rx_bist_tadp_sid_err_count;
   wire [31: 0]              bist_p1_s_rx_bist_tadp_missing_count;
   wire                      bist_p2_c_tx_bist_tadp_packet_enable;
   wire [15: 0]              bist_p2_c_tx_bist_tadp_packet_delay_min;
   wire [ 7: 0]              bist_p2_c_tx_bist_tadp_packet_len_min;
   wire                      bist_p2_c_tx_bist_tadp_single_mode;
   wire [31: 0]              bist_p2_s_tx_bist_tadp_packet_count;
   wire [31: 0]              bist_p2_c_tx_bist_tadp_single_go;
   wire                      bist_p2_c_rx_bist_tadp_packet_enable;
   wire                      bist_p2_s_rx_bist_tadp_state_lost;
   wire [31: 0]              bist_p2_s_rx_bist_tadp_prbs_err_cnt;
   wire [31: 0]              bist_p2_s_rx_bist_tadp_packet_count;
   wire [31: 0]              bist_p2_s_rx_bist_tadp_sid_err_count;
   wire [31: 0]              bist_p2_s_rx_bist_tadp_missing_count;
   wire                      bist_p3_c_tx_bist_tadp_packet_enable;
   wire [15: 0]              bist_p3_c_tx_bist_tadp_packet_delay_min;
   wire [ 7: 0]              bist_p3_c_tx_bist_tadp_packet_len_min;
   wire                      bist_p3_c_tx_bist_tadp_single_mode;
   wire [31: 0]              bist_p3_s_tx_bist_tadp_packet_count;
   wire [31: 0]              bist_p3_c_tx_bist_tadp_single_go;
   wire                      bist_p3_c_rx_bist_tadp_packet_enable;
   wire                      bist_p3_s_rx_bist_tadp_state_lost;
   wire [31: 0]              bist_p3_s_rx_bist_tadp_prbs_err_cnt;
   wire [31: 0]              bist_p3_s_rx_bist_tadp_packet_count;
   wire [31: 0]              bist_p3_s_rx_bist_tadp_sid_err_count;
   wire [31: 0]              bist_p3_s_rx_bist_tadp_missing_count;
   wire [ 8: 0]              bc_msio_tadp_master_div_ratio;
   wire [ 7: 0]              bc_MSIO_tadp_SID;
   wire [ 5: 0]              bc_msio_tadp_rx_state00_data;
   wire [ 5: 0]              bc_msio_tadp_rx_state04_data;
   wire [ 5: 0]              bc_msio_tadp_tx_state00_data;
   wire [ 5: 0]              bc_msio_tadp_tx_state04_data;
   wire [ 3: 0]              bc_msio_tadp_fifo_error;
   wire                      bc_cir_rx_buffer_out_pkt_write;
   wire [31: 0]              bc_cir_rx_buffer_out_packet_num;
   wire                      bc_cir_rx_buffer_out_enable;
   wire                      bc_cir_cir_rx_in_invert;
   wire [23: 0]              bc_cir_cir_rx_period_size;
   wire [15: 0]              bc_cir_cir_rx_sample_rate;
   wire                      bc_cir_cir_tx_out_invert;
   wire [15: 0]              bc_cir_cir_tx_sample_rate;
   wire [ 4: 0]              bc_cir_cir_tx_threshold;
   wire [ 6: 0]              bc_cir_cir_sw_used;
   wire [ 5: 0]              bc_cir_cir_tx_fifo_used;
   wire                      bc_uart_link_uart_rx_enable;
   wire                      bc_uart_link_uart_tx_enable;
   wire [11: 0]              bc_uart_link_uart_tx_fifo_thr_low;
   wire [11: 0]              bc_uart_link_uart_tx_read_th;
   wire [10: 0]              bc_uart_link_uart_s_tx_fifo_used;
   wire [ 7: 0]              bc_uart_link_uart_SID;
   wire                      bc_uart_link_uart_cts_en;
   wire                      bc_uart_rx_buffer_out_pkt_write;
   wire [31: 0]              bc_uart_rx_buffer_out_packet_num;
   wire                      bc_uart_rx_buffer_out_enable;
   wire                      bc_link_bc_hlic_en;
   wire                      bc_clock_pack_lsb_first;
   wire                      bc_mn_change_latch;
   wire                      bc_AddVideoPad_enable;
   wire                      bc_snirlnk_local_sid_en;
   wire [ 7: 0]              bc_snirlnk_tx_max_data_p1;
   wire [31: 0]              bc_snirlnk_type_route_tx_lsb;
   wire [31: 0]              bc_snirlnk_type_route_tx_mid;
   wire [31: 0]              bc_snirlnk_type_route_tx_msb;
   wire [31: 0]              bc_snirlnk_type_route_rx_lsb;
   wire [31: 0]              bc_snirlnk_type_route_rx_mid;
   wire [31: 0]              bc_snirlnk_type_route_rx_msb;
   wire [31: 0]              bc_snirlnk_rx_main_hdi_priority_field;
   wire [31: 0]              bc_snirlnk_tx_main_hdi_priority_field;
   wire                      bc_MSIOPktGen_En;
   wire [ 5: 0]              bc_msio_rx_state00_data;
   wire [ 5: 0]              bc_msio_tx_state00_data;
   wire [ 5: 0]              bc_msio_tx_state04_data;
   wire [ 5: 0]              bc_msio_rx_state04_data;
   wire [ 4: 0]              bc_link_uart_rx_fifo_used;
   wire [ 5: 0]              bc_msio_tx_invert;
   wire [ 3: 0]              bc_msio_fifo_error;
   wire [ 7: 0]              bc_Drift_ClkPkts_mon_sid;
   wire [31: 0]              bc_Drift_ClkPkts_mon_trapped_data;
   wire [ 5: 0]              bc_msio_from_io_select;
   wire                      bc_uart_tx_io_enable;
   wire [31: 0]              auxhdbtsched_AUX_TOKEN_COUNTER;
   wire [31: 0]              auxhdbtsched_AUX_IDLE_COUNTER;
   wire [15: 0]              auxhdbtsched_AUX_SID_REQUIRED;
   wire [15: 0]              auxhdbtsched_AUX_ISNBS;
   wire [ 5: 0]              auxhdbtsched_AUX_PACKET_LEN;
   wire                      auxhdbtsched_AUX_ETH_ENABLE;
   wire [ 7: 0]              auxhdbtsched_AUX_HDMIC_SID;
   wire [15: 0]              auxhdbtsched_AUX_DQSC_CNT;
   wire [ 7: 0]              auxhdbtsched_max_p1_tok;
   wire [31: 0]              auxhdbtsched_disp_type_route_lsb;
   wire [31: 0]              auxhdbtsched_disp_type_route_msb;
   wire [31: 0]              auxhdbtsched_lppf_type_route;
   wire [31: 0]              auxhdbtsched_AUX_HDI_PRIORITY;
   wire [ 1: 0]              auxhdbtsched_P1_QUAL;
   wire [31: 0]              auxhdbtsched_AUX_HDI_QUALITY;
   wire [31: 0]              auxhdbtsched_MAIN_HDI_PRIORITY;
   wire [ 5: 0]              auxhdbtsched_Main2Aux_fifo_used;
   wire [ 1: 0]              auxhdbtsched_AUX_NBS3_WEIGHT_1;
   wire [31: 0]              auxhdbtsched_ptype_00_packets;
   wire [31: 0]              auxhdbtsched_ptype_01_packets;
   wire [31: 0]              auxhdbtsched_ptype_02_packets;
   wire [31: 0]              auxhdbtsched_ptype_03_packets;
   wire [31: 0]              auxhdbtsched_ptype_04_packets;
   wire [31: 0]              auxhdbtsched_ptype_05_packets;
   wire [31: 0]              auxhdbtsched_ptype_06_packets;
   wire [31: 0]              auxhdbtsched_ptype_07_packets;
   wire [31: 0]              auxhdbtsched_ptype_08_packets;
   wire [31: 0]              auxhdbtsched_ptype_09_packets;
   wire [31: 0]              auxhdbtsched_ptype_10_packets;
   wire [31: 0]              auxhdbtsched_ptype_11_packets;
   wire [31: 0]              auxhdbtsched_ptype_12_packets;
   wire [31: 0]              auxhdbtsched_ptype_13_packets;
   wire [31: 0]              auxhdbtsched_ptype_14_packets;
   wire [31: 0]              auxhdbtsched_ptype_15_packets;
   wire                      lppf_null_enable;
   wire [15: 0]              lppf_lppf_crc_error;
   wire [ 7: 0]              lppf_null_frame_num;
   wire [ 7: 0]              lppf_a1_lppf_sw_rd_data;
   wire [ 7: 0]              lppf_a1_lppf_sw_wr_data;
   wire                      lppf_lppf_tx_req;
   wire [ 2: 0]              lppf_LPPF_MIN_IPG;
   wire [15: 0]              lppf_lppf_aya1_type_err;
   wire [15: 0]              lppf_lppf_cir_uart_oversample_size;
   wire [31: 0]              lppf_TYPE_ROUTE;
   wire [15: 0]              lppf_AUX_SID_REQUIRED;
   wire                      lppf_lppf_stype_all;
   wire [15: 0]              lppf_lppf_start_idle_cnt_max;
   wire [15: 0]              lppf_lppf_start_init_info_max;
   wire [ 7: 0]              lppf_HLIC_SID;
   wire [15: 0]              lppf_lppf_stype_00_packets;
   wire [15: 0]              lppf_lppf_stype_02_packets;
   wire [15: 0]              lppf_lppf_stype_04_packets;
   wire [15: 0]              lppf_lppf_stype_06_packets;
   wire [15: 0]              lppf_lppf_stype_08_packets;
   wire [15: 0]              lppf_lppf_stype_10_packets;
   wire [15: 0]              lppf_lppf_stype_12_packets;
   wire [15: 0]              lppf_lppf_stype_14_packets;
   wire [15: 0]              lppf_lppf_long_packets;
   wire [15: 0]              lppf_lppf_silent_error;
   wire [15: 0]              lppf_lppf_del_error;
   wire [15: 0]              lppf_lppf_data_error;
   wire [ 3: 0]              lppf_a1_lppf_sw_used;
   wire                      lppf_lppf_info_rx;
   wire [31: 0]              hdbt_hlic_data_write_status;
   wire [ 8: 0]              hdbt_hlic_write_used;
   wire                      hdbt_hlic_EN_BLIND_REP;
   wire                      hdbt_hlic_crc_swap_data;
   wire [15: 0]              hdbt_hlic_PKT_DEL;
   wire [31: 0]              hdbt_hlic_read_data_ctrl;
   wire [15: 0]              hdbt_hlic_rx_crcerr_cnt;
   wire [ 5: 0]              hdbt_hlic_tx_stm;
   wire [31: 0]              hdbt_hlic_rx_cmd_fifo_ovr_cnt;
   wire [31: 0]              hdbt_hlic_brif_port_rx_len;
   wire [31: 0]              hdbt_hlic_brif_port_rx_data;
   wire [31: 0]              hdbt_hlic_brif_port_tx_len;
   wire [31: 0]              hdbt_hlic_brif_port_tx_data;
   wire                      hdbt_hlic_brif_bridge_clr;
   wire                      hdbt_hlic_if_ls;
   wire                      hdmic_mode_A1;
   wire                      hdmic_ing_parse_en;
   wire                      hdmic_egr_parse_en;
   wire                      hdmic_cpu_ing_rx_v5;
   wire [ 9: 0]              hdmic_cpu_fifo_cec_ing_tx_data;
   wire [ 5: 0]              hdmic_cpu_fifo_cec_ing_tx_used;
   wire [12: 0]              hdmic_cpu_fifo_cec_ing_rx_data;
   wire [ 9: 0]              hdmic_cpu_fifo_cec_egr_tx_data;
   wire [ 9: 0]              hdmic_cpu_fifo_cec_egr_rx_data;
   wire [15: 0]              hdmic_cec_error_in_time;
   wire [15: 0]              hdmic_cec_micro;
   wire [15: 0]              hdmic_cec_delay_rise;
   wire [15: 0]              hdmic_cec_sb_l_min;
   wire [15: 0]              hdmic_cec_dat_l_nom;
   wire [15: 0]              hdmic_cec_ack_end;
   wire [15: 0]              hdmic_cec_ack_force;
   wire [ 5: 0]              hdmic_cec_hys_delay;
   wire [15: 0]              hdmic_cec_ack_table;
   wire [15: 0]              hdmic_cec_auto_ack;
   wire [15: 0]              hdmic_cec_sb_falling_edges_min;
   wire [15: 0]              hdmic_cec_data_falling_edges_min;
   wire [15: 0]              hdmic_cec_delay_new_initiator;
   wire [15: 0]              hdmic_cec_ack_auto;
   wire [15: 0]              hdmic_cec_tx_ack_h_1;
   wire [15: 0]              hdmic_cec_bit_time;
   wire [15: 0]              hdmic_cec_auto_h_ack;
   wire                      hdmic_ddc_global_pt_disable;
   wire                      hdmic_ddc_hdcp_en;
   wire [31: 0]              hdmic_ddc_hdcp_max_cnt;
   wire [31: 0]              hdmic_ddc_hdcp_start_val;
   wire                      hdmic_ddc_wd_en;
   wire [31: 0]              hdmic_ddc_hdcp_val;
   wire [15: 0]              hdmic_ddc_hdcp_val_cnt;
   wire [ 4: 0]              hdmic_ddc_slv_mon_used;
   wire [ 9: 0]              hdmic_ddc_slv_mon_data;
   wire [ 8: 0]              hdmic_ddc_mst_mon_data;
   wire [ 8: 0]              hdmic_ddc_slv_gen_data;
   wire [ 8: 0]              hdmic_ddc_mst_gen_data;
   wire [15: 0]              hdmic_ddc_active_pullup_bypass;
   wire [31: 0]              hdmic_intrpt_5v_rxs_clear_dummy;
   wire [15: 0]              hdmic_packet_space;
   wire [31: 0]              c_rx_main_disp_force_local_type;
   wire                      c_tx_lb_disp_local_sid;
   wire                      c_retr_buff_enable;
   wire                      s_retr_buff_pkt_write;
   wire [31: 0]              s_retr_buff_packet_num;
   wire                      c_tx_retr_disp_local_sid;
   wire [31: 0]              c_main2aux_disp_type_route;
   wire [31: 0]              c_unprot_disp_type_route;
   wire [15: 0]              aux2main_AUX_TOK_TYPE;
   wire [ 2: 0]              AUX_ETH_FULL_BLOCKS;
   wire [ 7: 0]              Main_aggr_id;
   wire [11: 0]              Main_c_timeout_val;
   wire [15: 0]              AuxSched_AUX_SID_REQUIRED;
   wire [31: 0]              c_prio_div_main_hdi_priority;
   wire [ 4: 0]              src_pcs_if_chain_sel;
   wire                      sched_buf_hdistop_en;
   wire [31: 0]              p2_dispatcher_type_route;
   wire [31: 0]              p2_dispatcher_local_sid_7;
   wire [31: 0]              p2_dispatcher_local_sid_6;
   wire [31: 0]              p2_dispatcher_local_sid_5;
   wire [31: 0]              p2_dispatcher_local_sid_4;
   wire [31: 0]              p2_dispatcher_local_sid_3;
   wire [31: 0]              p2_dispatcher_local_sid_2;
   wire [31: 0]              p2_dispatcher_local_sid_1;
   wire [31: 0]              p2_dispatcher_local_sid_0;
   wire [22: 0]              link_int_stat;
   wire [22: 0]              link_int_mask;
   wire [ 4: 0]              lppf_clk_div_ratio;
   wire [ 4: 0]              rgf_tb_chain_select;
   wire                      retransmission_mode_select;
   wire                      aux_packet_enable;
   wire [ 3: 0]              main2aux_min_use_num;
   wire [ 1: 0]              p1_reg_pcr_clk_freq;
   wire [ 7: 0]              p1_reg_pcr_sid_cpu;
   wire [22: 0]              p1_reg_pcr_bw_limit_in_data;
   wire [31: 0]              p1_reg_pcr_egc_limit_low;
   wire [ 3: 0]              p1_reg_pcr_egc_limit_high;
   wire                      p1_reg_pcr_mn_change;
   wire [31: 0]              p1_reg_pcr_tmds_mn_filt_testbus;
   wire [26: 0]              p1_reg_pcr_tmds_fifo_loop_testbus;
   wire [31: 0]              p1_reg_pcr_tmds_fo_filt_testbus;
   wire [23: 0]              p1_reg_pcr_tmds_in_clock_est;
   wire                      p1_reg_pcr_fifo_wr_en;
   wire                      p1_reg_pcr_ShiftMn13;
   wire [17: 0]              p1_reg_pcr_TMDS_SSC_STEP;
   wire [15: 0]              p1_reg_pcr_vf_max;
   wire [ 3: 0]              p1_reg_pcr_TMDS_FIFO_LOOP_A_SLCT;
   wire [23: 0]              p1_reg_pcr_FSCtrl;
   wire [23: 0]              p1_reg_pcr_BWLimit_out;
   wire [20: 0]              p1_reg_pcr_mul_round;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_00_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_01_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_02_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_03_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_04_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_05_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_06_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_07_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_08_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_09_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_10_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_11_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_12_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_13_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_14_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_15_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_16_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_17_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_18_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_19_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_20_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_21_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_22_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_23_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_24_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_25_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_26_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_27_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_28_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_29_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_30_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_pre_2_31_crc_num;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_MinRD_goodret;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_MinRD_badret_crc;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_MinRD_badret_nonreq;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_MinRD_protected;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_MinRD_rtsreq_crc;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_MinRD_rtsreq_gap;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_MinRD_rtsreq_non_first;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_MinRD_too_late;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_MinRD_buck_blk;
   wire [31: 0]              snk_pcs_s_snk_pcs_num_MinRD_too_long;
   wire [29: 0]              snk_pcs_s_snk_pcs_stat_mem_protected_MinRD;
   wire [31: 0]              snk_pcs_drfWin;
   wire [ 4: 0]              snk_pcs_snk_pcs_if_chain_sel;
   wire [15: 0]              snk_pcs_snk_pcs_if_driftest;
   wire [15: 0]              snk_pcs_snk_1_cfg_main_rd_type;
   wire [15: 0]              snk_pcs_snk_2_cfg_main_rd_type;
   wire [15: 0]              snk_pcs_snk_1_tokin_max_wait;
   wire [15: 0]              snk_pcs_snk_2_tokin_max_wait;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_00_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_01_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_02_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_03_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_04_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_05_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_06_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_07_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_08_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_09_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_10_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_11_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_12_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_13_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_14_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_15_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_16_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_17_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_18_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_19_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_20_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_21_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_22_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_23_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_24_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_25_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_26_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_27_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_28_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_29_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_30_packets;
   wire [31: 0]              snk_pcs_s_snk_pcs_ptype_2_pre_31_packets;
   wire [31: 0]              snk_pcs_ptype_all_crc_num;
   wire                      src_pcs_cfg_pkt_split_en;
   wire                      src_pcs_delay_calc_int_stat;
   wire [15: 0]              src_pcs_cfg_main_rd_type;
   wire [31: 0]              src_pcs_s_src_pcs_num_retreq_minRD;
   wire [31: 0]              src_pcs_s_src_pcs_num_goodret_minRD;
   wire [31: 0]              src_pcs_s_src_pcs_num_protected_minRD;
   wire [31: 0]              src_pcs_s_src_pcs_num_unprotected_minRD;
   wire [28: 0]              src_pcs_s_src_pcs_stat_mem_minRD;
   wire [31: 0]              src_pcs_Drift_ClkPkts_mon_trapped_data_Src_minRD;
   wire [31: 0]              src_pcs_drfWin_Src;
   wire [15: 0]              src_pcs_drftEst;
   wire [31: 0]              s_src_pcs_ptype_00_packets;
   wire [31: 0]              s_src_pcs_ptype_01_packets;
   wire [31: 0]              s_src_pcs_ptype_02_packets;
   wire [31: 0]              s_src_pcs_ptype_03_packets;
   wire [31: 0]              s_src_pcs_ptype_04_packets;
   wire [31: 0]              s_src_pcs_ptype_05_packets;
   wire [31: 0]              s_src_pcs_ptype_06_packets;
   wire [31: 0]              s_src_pcs_ptype_07_packets;
   wire [31: 0]              s_src_pcs_ptype_08_packets;
   wire [31: 0]              s_src_pcs_ptype_09_packets;
   wire [31: 0]              s_src_pcs_ptype_10_packets;
   wire [31: 0]              s_src_pcs_ptype_11_packets;
   wire [31: 0]              s_src_pcs_ptype_12_packets;
   wire [31: 0]              s_src_pcs_ptype_13_packets;
   wire [31: 0]              s_src_pcs_ptype_14_packets;
   wire [31: 0]              s_src_pcs_ptype_15_packets;
   wire [31: 0]              s_src_pcs_ptype_16_packets;
   wire [31: 0]              s_src_pcs_ptype_17_packets;
   wire [31: 0]              s_src_pcs_ptype_18_packets;
   wire [31: 0]              s_src_pcs_ptype_19_packets;
   wire [31: 0]              s_src_pcs_ptype_20_packets;
   wire [31: 0]              s_src_pcs_ptype_21_packets;
   wire [31: 0]              s_src_pcs_ptype_22_packets;
   wire [31: 0]              s_src_pcs_ptype_23_packets;
   wire [31: 0]              s_src_pcs_ptype_24_packets;
   wire [31: 0]              s_src_pcs_ptype_25_packets;
   wire [31: 0]              s_src_pcs_ptype_26_packets;
   wire [31: 0]              s_src_pcs_ptype_27_packets;
   wire [31: 0]              s_src_pcs_ptype_28_packets;
   wire [31: 0]              s_src_pcs_ptype_29_packets;
   wire [31: 0]              s_src_pcs_ptype_30_packets;
   wire [31: 0]              s_src_pcs_ptype_31_packets;
   wire                      mainbuffer_src_pcs0_if_en;
   wire [63: 0]              snir_modules_sys_reset_n;
   wire [63: 0]              snir_modules_sys_reset_done;
   wire [255: 0]             lppf_LOCAL_SID_ARRAY;
   wire [255: 0]             c_rx_main_disp_local_sid;
   wire [255: 0]             c_rx_main_disp_spare_sid;
   wire [255: 0]             c_rx_main_disp_trash_sid;
   wire [95: 0]              c_rx_main_disp_type_route;
   wire [95: 0]              c_rx_main_disp_spare_route;
   wire [255: 0]             c_main2aux_disp_local_sid;
   wire [255: 0]             c_unprot_disp_local_sid;
   wire                      lppf_a1_lppf_sw_wr_data_reg_w;
   wire                      hdmic_ctrl_cec_ing_tx_data_reg_w;
   wire                      hdmic_ctrl_cec_egr_tx_data_reg_w;
   wire                      hdmic_ddc_fifo_gen_slv_w;
   wire                      hdmic_ddc_fifo_gen_mst_w;
   wire                      p1_reg_pcr_bw_limit_in_data_reg_w;
   wire                      TX_ptype_00_packets_reg_w;
   wire                      TX_ptype_01_packets_reg_w;
   wire                      TX_ptype_02_packets_reg_w;
   wire                      TX_ptype_03_packets_reg_w;
   wire                      TX_ptype_04_packets_reg_w;
   wire                      TX_ptype_05_packets_reg_w;
   wire                      snk_pcs_RX_snk_pcs_if_stat_clear_reg_w;
   wire                      TX_ptype_06_packets_reg_w;
   wire                      TX_ptype_07_packets_reg_w;
   wire                      TX_ptype_08_packets_reg_w;
   wire                      TX_ptype_09_packets_reg_w;
   wire                      TX_ptype_10_packets_reg_w;
   wire                      TX_ptype_11_packets_reg_w;
   wire                      TX_ptype_12_packets_reg_w;
   wire                      TX_ptype_13_packets_reg_w;
   wire                      TX_ptype_14_packets_reg_w;
   wire                      TX_ptype_15_packets_reg_w;
   wire                      TX_ptype_16_packets_reg_w;
   wire                      TX_ptype_17_packets_reg_w;
   wire                      TX_ptype_18_packets_reg_w;
   wire                      TX_ptype_19_packets_reg_w;
   wire                      snk_pcs_RX_crc_err_cnt_reg_w;
   wire                      TX_ptype_20_packets_reg_w;
   wire                      snk_pcs_RX_ptype_00_crc_num_reg_w;
   wire                      TX_ptype_21_packets_reg_w;
   wire                      snk_pcs_RX_ptype_01_crc_num_reg_w;
   wire                      TX_ptype_22_packets_reg_w;
   wire                      snk_pcs_RX_ptype_02_crc_num_reg_w;
   wire                      TX_ptype_23_packets_reg_w;
   wire                      snk_pcs_RX_ptype_03_crc_num_reg_w;
   wire                      TX_ptype_24_packets_reg_w;
   wire                      snk_pcs_RX_ptype_04_crc_num_reg_w;
   wire                      TX_ptype_25_packets_reg_w;
   wire                      snk_pcs_RX_ptype_05_crc_num_reg_w;
   wire                      TX_ptype_26_packets_reg_w;
   wire                      snk_pcs_RX_ptype_06_crc_num_reg_w;
   wire                      TX_ptype_27_packets_reg_w;
   wire                      snk_pcs_RX_ptype_07_crc_num_reg_w;
   wire                      TX_ptype_28_packets_reg_w;
   wire                      snk_pcs_RX_ptype_08_crc_num_reg_w;
   wire                      TX_ptype_29_packets_reg_w;
   wire                      snk_pcs_RX_ptype_09_crc_num_reg_w;
   wire                      TX_ptype_30_packets_reg_w;
   wire                      snk_pcs_RX_ptype_10_crc_num_reg_w;
   wire                      TX_ptype_31_packets_reg_w;
   wire                      snk_pcs_RX_ptype_11_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_12_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_13_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_14_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_15_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_16_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_17_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_18_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_19_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_20_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_21_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_22_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_23_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_24_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_25_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_26_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_27_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_28_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_29_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_30_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_31_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_00_packets_reg_w;
   wire                      snk_pcs_RX_ptype_01_packets_reg_w;
   wire                      snk_pcs_RX_ptype_02_packets_reg_w;
   wire                      snk_pcs_RX_ptype_03_packets_reg_w;
   wire                      snk_pcs_RX_ptype_04_packets_reg_w;
   wire                      snk_pcs_RX_ptype_05_packets_reg_w;
   wire                      snk_pcs_RX_ptype_06_packets_reg_w;
   wire                      snk_pcs_RX_ptype_07_packets_reg_w;
   wire                      snk_pcs_RX_ptype_08_packets_reg_w;
   wire                      snk_pcs_RX_ptype_09_packets_reg_w;
   wire                      snk_pcs_RX_ptype_10_packets_reg_w;
   wire                      snk_pcs_RX_ptype_11_packets_reg_w;
   wire                      snk_pcs_RX_ptype_12_packets_reg_w;
   wire                      snk_pcs_RX_ptype_13_packets_reg_w;
   wire                      snk_pcs_RX_ptype_14_packets_reg_w;
   wire                      snk_pcs_RX_ptype_15_packets_reg_w;
   wire                      snk_pcs_RX_ptype_16_packets_reg_w;
   wire                      snk_pcs_RX_ptype_17_packets_reg_w;
   wire                      snk_pcs_RX_ptype_18_packets_reg_w;
   wire                      snk_pcs_RX_ptype_19_packets_reg_w;
   wire                      snk_pcs_RX_ptype_20_packets_reg_w;
   wire                      snk_pcs_RX_ptype_21_packets_reg_w;
   wire                      snk_pcs_RX_ptype_22_packets_reg_w;
   wire                      snk_pcs_RX_ptype_23_packets_reg_w;
   wire                      snk_pcs_RX_ptype_24_packets_reg_w;
   wire                      snk_pcs_RX_ptype_25_packets_reg_w;
   wire                      snk_pcs_RX_ptype_26_packets_reg_w;
   wire                      snk_pcs_RX_ptype_27_packets_reg_w;
   wire                      snk_pcs_RX_ptype_28_packets_reg_w;
   wire                      snk_pcs_RX_ptype_29_packets_reg_w;
   wire                      snk_pcs_RX_ptype_30_packets_reg_w;
   wire                      snk_pcs_RX_ptype_31_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_00_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_01_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_02_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_03_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_04_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_05_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_06_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_07_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_08_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_09_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_10_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_11_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_12_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_13_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_14_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_15_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_16_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_17_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_18_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_19_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_20_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_21_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_22_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_23_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_24_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_25_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_26_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_27_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_28_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_29_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_30_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_31_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_00_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_01_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_02_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_03_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_04_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_05_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_06_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_07_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_08_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_09_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_10_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_11_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_12_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_13_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_14_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_15_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_16_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_17_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_18_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_19_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_20_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_21_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_22_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_23_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_24_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_25_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_26_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_27_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_28_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_29_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_30_packets_reg_w;
   wire                      snk_pcs_RX_ptype_pre_31_packets_reg_w;
   wire                      snk_pcs_RX_null_prot_status_reg_w;
   wire                      snk_pcs_RX_null_upro_status_reg_w;
   wire                      snk_pcs_RX_crc_err_cnt_reg_2_w;
   wire                      src_pcs_TX_src_pcs_if_stat_clear_reg_w;
   wire                      bist_p1_Tx_packet_status_reg_w;
   wire                      bist_p1_Tx_go_command_reg_w;
   wire                      bist_p1_Rx_prbs_err_status_reg_w;
   wire                      bist_p2_Tx_packet_status_reg_w;
   wire                      bist_p2_Tx_go_command_reg_w;
   wire                      bist_p2_Rx_prbs_err_status_reg_w;
   wire                      bist_p3_Tx_packet_status_reg_w;
   wire                      bist_p3_Tx_go_command_reg_w;
   wire                      bist_p3_Rx_prbs_err_status_reg_w;
   wire                      bc_msio_tadp_status_reg_w;
   wire                      bc_cir_rx_buffer_out_packet_status_w;
   wire                      bc_cir_Cir_Wr_Data_Cmd_w;
   wire                      bc_uart_rx_buffer_out_packet_status_w;
   wire                      bc_snirlnk_clkpkt_mn_change_reg_w;
   wire                      bc_msio_status_reg_w;
   wire                      auxhdbtsched_Snir_aux_tkn_cnt_reg_w;
   wire                      auxhdbtsched_Snir_auxhdbtsched_idle_cntr_reg_w;
   wire                      auxhdbtsched_ptype_00_packets_reg_w;
   wire                      lppf_lppf_crc_error_reg_w;
   wire                      lppf_null_frame_num_reg_w;
   wire                      lppf_a1_lppf_sw_rd_status_w;
   wire                      lppf_lppf_status_register_0_w;
   wire                      lppf_lppf_aya1_type_err_reg_w;
   wire                      lppf_a1_lppf_sw_status_w;
   wire                      lppf_lppf_info_rx_reg_w;
   wire                      hdbt_hlic_read_data_ctrl_reg_w;
   wire                      hdbt_hlic_brif_port_rx_len_reg_r;
   wire                      hdbt_hlic_brif_port_rx_data_reg_r;
   wire                      hdbt_hlic_brif_port_tx_len_reg_w;
   wire                      hdbt_hlic_brif_port_tx_data_reg_w;
   wire                      hdmic_ctrl_cec_ing_rx_data_reg_r;
   wire                      hdmic_ctrl_cec_egr_rx_data_reg_r;
   wire                      hdmic_ddc_fifo_status_w;
   wire                      hdmic_ddc_fifo_read_slv_r;
   wire                      hdmic_ddc_fifo_read_mst_r;
   wire                      hdmic_intrpt_5v_rxs_clear_w;
   wire                      Tx_Retr_buffer_pkt_num_reg_w;
   wire                      link_int_stat_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_00_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_01_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_02_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_03_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_04_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_05_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_06_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_07_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_08_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_09_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_10_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_11_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_12_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_13_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_14_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_15_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_16_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_17_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_18_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_19_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_20_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_21_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_22_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_23_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_24_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_25_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_26_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_27_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_28_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_29_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_30_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_pre_2_31_crc_num_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_00_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_01_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_02_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_03_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_04_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_05_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_06_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_07_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_08_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_09_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_10_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_11_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_12_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_13_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_14_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_15_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_16_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_17_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_18_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_19_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_20_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_21_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_22_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_23_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_24_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_25_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_26_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_27_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_28_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_29_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_30_packets_reg_w;
   wire                      snk_pcs_RX_ptype_2_pre_31_packets_reg_w;
   wire                      snk_pcs_ptype_all_crc_num_reg_w;
   wire                      src_pcs_delay_calc_int_stat_reg_w;
   wire                      bist_p1_Tx_bist_tadp_insert_error_w;
   wire                      bist_p2_Tx_bist_tadp_insert_error_w;
   wire                      bist_p3_Tx_bist_tadp_insert_error_w;
   wire                      hdbt_hlic_brif_port_rx_len_reg_ack;
   wire                      hdbt_hlic_brif_port_rx_data_reg_ack;
   wire                      hdbt_hlic_brif_port_tx_len_reg_ack;
   wire                      hdbt_hlic_brif_port_tx_data_reg_ack;
   
   wire [16-1:0]             Snir_link_regs_bus_add;
   wire                      Snir_link_regs_bus_wr;
   wire                      Snir_link_regs_bus_rd;
   wire                      Snir_link_regs_bus_ack;
   wire [w_data_bus-1:0]     Snir_link_regs_bus_data_rd;
   
   wire [16-1:0]             hdmic_ddc_ram_bus_add;
   wire                      hdmic_ddc_ram_bus_wr;
   wire                      hdmic_ddc_ram_bus_rd;
   wire                      hdmic_ddc_ram_bus_ack;
   wire [w_data_bus-1:0]     hdmic_ddc_ram_bus_data_rd;
   
   wire [16-1:0]             Snir_link_trn_regs_bus_add;
   wire                      Snir_link_trn_regs_bus_wr;
   wire                      Snir_link_trn_regs_bus_rd;
   wire                      Snir_link_trn_regs_bus_ack;
   wire [w_data_bus-1:0]     Snir_link_trn_regs_bus_data_rd;

   



   wire [15:0] 		     Snir_link_trn_regs_bus_add_sync;
   wire [15:0] 		     Snir_link_trn_regs_bus_add_sync_nc;
			     
   wire 		     Snir_link_trn_regs_rif_rd;
   wire 		     Snir_link_trn_regs_rif_wr;
   wire 		     Snir_link_trn_regs_rif_ack;
   wire [w_data_bus-1:0]     Snir_link_trn_regs_rif_data_rd;
   wire [31:0]		     Snir_link_trn_regs_rif_add_bus;
   wire [w_data_bus-1:0]     Snir_link_trn_regs_rif_data_wr;
   wire [3:0]		     Snir_link_trn_regs_rif_byte_en;


   

   
   wire [31:0] 			 Snir_link_regs_bus_add_int;
   

   wire [2*MAIN_TOK_WIDTH-1:0] 	 src_pcs_aux_tokout;
   wire 			 src_pcs_aux_tokoutvld;
   wire 			 src_pcs_aux_tokoutrdy;
   
   
   
   
   
   wire 			 hdbt_hlic_if_sys_clk;
   wire 			 tx_main_sched_sys_clk;
   wire 			 egress_sys_clk;
   wire 			 tx_retr_main_buff_sys_clk;
   wire 			 src_pcs_retr_buff_sys_clk;
   wire 			 src_pcs_retr_buff_minRD_sys_clk;
   wire 			 src_pcs_pam_conv_minRD_sys_clk;
   wire 			 src_pcs_pam_conv_sys_clk;
   wire 			 src_pcs_crc_minRD_sys_clk;
   wire 			 src_pcs_crc_fixRD_sys_clk;
   wire 			 clk_src_pcs_pktsplit;
   wire 			 src_pcs_if_sys_clk;
   wire 			 tx_aux_sched_sys_clk;
   wire 			 tx_link_lppf_sys_clk;
   wire 			 rx_link_lppf_sys_clk;
   wire 			 rx_aux2main_sys_clk;
   wire 			 snk_pcs_crc2_sys_clk;
   wire 			 snk_pcs_crc_sys_clk;
   wire 			 snk_pcs_pam_conv2_sys_clk;
   wire 			 snk_pcs_pam_conv_sys_clk;
   wire 			 snk_pcs_retr_buff_sys_clk;
   wire 			 snk_pcs_upro_buff_sys_clk;
   wire 			 snk_pcs_if_sys_clk;
   wire 			 ingress_sys_clk;
   wire 			 tx_backward_comp_sys_clk;
   wire 			 rx_backward_comp_sys_clk;
   wire 			 backward_comp_sys_clk;
   wire 			 rx_main_disp_sys_clk;
   wire 			 link_regs_sys_clk;
   wire 			 prio1_fsctrl_sys_clk;
   wire 			 tx_aux_common_sys_clk;
   wire 			 MainBistTadpTx_sys_clk;
   wire 			 MainBistTadpRx_sys_clk;
   
   wire 			 bist_clk;
   wire 			 bist_reset_n;
   wire 			 trn_clk;
   wire 			 snk_pcs_if_rcv_clk;
   wire 			 src_pcs_if_rcv_clk;
   wire 			 link_lppf_clk;
   wire 			 dsp_pcs_trn_clk;
   
   
   
   
   
   wire 			 hdbt_hlic_if_sys_reset_n;
   wire 			 tx_main_sched_sys_reset_n;
   wire 			 egress_sys_reset_n;
   wire 			 tx_retr_main_buff_sys_reset_n;
   wire 			 src_pcs_retr_buff_sys_reset_n;
   wire 			 src_pcs_retr_buff_minRD_sys_reset_n;
   wire 			 src_pcs_pam_conv_minRD_sys_reset_n;
   wire 			 src_pcs_pam_conv_sys_reset_n;
   wire 			 src_pcs_pktsplit_reset_n;
   wire 			 src_pcs_crc_minRD_sys_reset_n;
   wire 			 src_pcs_crc_sys_reset_n;
   wire 			 src_pcs_if_sys_reset_n;
   wire 			 tx_aux_sched_sys_reset_n;
   wire 			 tx_link_lppf_sys_reset_n;
   wire 			 rx_link_lppf_sys_reset_n;
   wire 			 rx_aux2main_sys_reset_n;
   wire 			 snk_pcs_crc_sys_reset_n;
   wire 			 snk_pcs_crc2_sys_reset_n;
   wire 			 snk_pcs_pam_conv_sys_reset_n;
   wire 			 snk_pcs_pam_conv2_sys_reset_n;
   wire 			 snk_pcs_retr_buff_sys_reset_n;
   wire 			 snk_pcs_upro_buff_sys_reset_n;
   wire 			 snk_pcs_if_sys_reset_n;
   wire 			 ingress_sys_reset_n;
   wire 			 tx_backward_comp_sys_reset_n;
   wire 			 rx_backward_comp_sys_reset_n;
   wire 			 backward_comp_sys_reset_n;
   wire 			 rx_main_disp_sys_reset_n;
   wire 			 link_regs_sys_reset_n;
   wire 			 prio1_fsctrl_sys_reset_n;
   wire 			 tx_aux_common_sys_reset_n;
   wire 			 MainBistTadpTx_sys_reset_n;
   wire 			 MainBistTadpRx_sys_reset_n;
   
   
   wire 			 trn_reset_n;
   wire 			 snk_pcs_if_rcv_reset_n;
   wire 			 link_lppf_reset_n;
   wire 			 dsp_pcs_trn_reset_n;
   

   
   wire [PKT_LEN_W-1:0] 	 p1_pcr_tokin_length;
   wire [PXL_NUM_W-1:0] 	 p1_pcr_tokin_pixels; 
   wire 			 p1_pcr_tokin_valid;
   wire 			 p1_pcr_tokin_ready;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 p1_pcr_tokin_data;

   wire 			 p1_pcr_tokin_valid_pre_len;
   wire 			 p1_pcr_tokin_ready_pre_len;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 p1_pcr_tokin_data_pre_len; 
   
   wire 			 p1_pcr_tokout_valid;
   wire 			 p1_pcr_tokout_ready; 
   wire [2*MAIN_TOK_WIDTH-1:0] 	 p1_pcr_tokout_data; 
   
   wire 			 p1_pcr_clk_tokout_valid;
   wire 			 p1_pcr_clk_tokout_ready;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 p1_pcr_clk_tokout_data;
   
   wire 			 p2_clk_tokout_valid;
   wire 			 p2_clk_tokout_ready;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 p2_clk_tokout_data; 
   
   wire 			 p2_data_tokout_valid;
   wire 			 p2_data_tokout_ready;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 p2_data_tokout_data; 
   
   wire 			 p2_pcr_clk_tokout_valid;
   wire 			 p2_pcr_clk_tokout_ready;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 p2_pcr_clk_tokout_data; 
   
   wire [255:0] 		 p2_local_sid_array;

   wire [31:0] 			 snk_pcs_if_mic;
   wire [3:0]                    snk_pcs_if_ls;
   wire [3:0]                    snk_pcs_if_ds;
   wire [3:0]                    snk_pcs_if_sd;

   
   
   
   

   wire 			 tx_rd_strb_stg;
   wire 			 tx_wr_strb_stg;
   wire 			 rtrs_buff_tokin_ready_del;
   wire 			 rtrs_buff_tokin_valid_anded;
   wire [2*MAIN_TOK_WIDTH-1:0] 	 rtrs_buff_data_out;
   
   
   wire [LINK_INT_NUM-1:0] 	 link_int_stat_out;
   
   wire 			 egr_pacer_p1_mn_steady;
   reg 				 egr_pacer_p1_mn_steady_d;
   wire 			 egr_pacer_p1_mn_steady_pulse;


   wire [26:0] 			 src_pcs_s_src_pcs_stat_mem_minRD_int;
   wire [26:0] 			 src_pcs_s_src_pcs_stat_mem_int;
   wire [27:0] 			 snk_pcs_s_snk_pcs_stat_mem_protected_MinRD_int;
   wire [27:0] 			 snk_pcs_s_snk_pcs_stat_mem_unprotected_int;
   wire [27:0] 			 snk_pcs_s_snk_pcs_stat_mem_protected_int;
     
   reg 				 hdmic_cpu_ing_rx_v5_d;
   reg [3:0] 			 hdmic_cpu_ing_rx_rxs_d;
   reg 				 hdmic_cpu_egr_rx_v5_d;
   reg [3:0] 			 hdmic_cpu_egr_rx_rxs_d;
   reg 				 hdmi_ctrl_change;
  
   
   wire [LINK_INT_NUM-1:0] 	 link_interrupts;

   
   
   wire [31:0] 			 snir_auxhdbtsched_tokin_tb; 
   wire [31:0] 			 snir_auxhdbtsched_token_tb; 
   wire [31:0] 			 snir_auxhdbtsched_aux_out_tb; 
   
   
   wire [31:0] 			 aggr_in_ctl_tb; 
   wire [31:0] 			 aggr_out_ctl_tb; 
   
   wire [31:0] 			 a2m_gen_brg_tokin_tb; 
   wire [31:0] 			 a2m_gen_brg_token_tb; 
   
   wire [31:0] 			 snk_pcs_pak_buf_tb0; 
   wire [31:0] 			 src_pcs_if_tb; 
   
   wire [31:0] 			 hdbt_hlic_tb; 

   wire [31:0] 			 test_bus_cec; 
   wire [31:0] 			 test_bus_ddc; 
   
   wire [31:0] 			 test_bus_pacer_p1_1; 
   wire [31:0] 			 test_bus_pacer_p1_2; 

   
   wire [TEST_BUS_CHAIN_LEN-1:0] tb_data_en;
   wire [31:0] 			 tb_chain [TEST_BUS_CHAIN_LEN:0];
   wire [31:0] 			 tb_data  [TEST_BUS_CHAIN_LEN-1:0];


   
   
   
   
   genvar 			tb_genvar;
   
   
   
   
   assign snk_pcs_s_snk_pcs_header2_crc_err_cnt = 32'h0;

   
   
   
   MainBistTadpTx bist_tadp_tx_p1_i
     (
      
      .token_valid	  (bist_tadp_tx_p1_token_valid),
      .token_ready	  (bist_tadp_tx_p1_token_ready),
      .token_out	  (bist_tadp_tx_p1_token_out),
      
      .packet_type	  (bist_p1_c_tx_bist_tadp_packet_type),
      .packet_fut	  (bist_p1_c_tx_bist_tadp_packet_fut),
      .packet_pam	  (bist_p1_c_tx_bist_tadp_packet_pam),
      .packet_sid	  (bist_p1_c_tx_bist_tadp_packet_sid),
      .packet_prot	  (bist_p1_c_tx_bist_tadp_packet_prot),
      .packet_qual	  (bist_p1_c_tx_bist_tadp_packet_qual),
      .packet_prio	  (bist_p1_c_tx_bist_tadp_packet_prio),
      .packet_len_min	  (bist_p1_c_tx_bist_tadp_packet_len_min),
      .packet_len_max	  (bist_p1_c_tx_bist_tadp_packet_len_max),
      .packet_enable	  (bist_p1_c_tx_bist_tadp_packet_enable),
      .packet_delay_min   (bist_p1_c_tx_bist_tadp_packet_delay_min),
      .packet_delay_max   (bist_p1_c_tx_bist_tadp_packet_delay_max),
      .prbs_pol_type	  (bist_p1_c_tx_bist_tadp_prbs_pol_type),
      .insert_error	  (bist_p1_Tx_bist_tadp_insert_error_w),
      .prbs_zero	  (bist_p1_c_tx_bist_tadp_prbs_zero ),
      .single_mode	  (bist_p1_c_tx_bist_tadp_single_mode),
      .prbs_clear	  (bist_p1_Tx_packet_status_reg_w	  ),
      .packet_count	  (bist_p1_s_tx_bist_tadp_packet_count),
      .single_go	  (bist_p1_Tx_go_command_reg_w 	  ),
      
      .scan_enable	  (scan_enable),
      .clk		  (MainBistTadpTx_sys_clk),
      .reset_n	          (MainBistTadpTx_sys_reset_n)
      );


   
   
   
   MainBistTadpTx bist_tadp_tx_p2_i 
     (
      
      .token_valid	  (bist_tadp_tx_p2_token_valid),
      .token_ready	  (bist_tadp_tx_p2_token_ready),
      .token_out	  (bist_tadp_tx_p2_token_out),
      
      .packet_type	  (bist_p2_c_tx_bist_tadp_packet_type),
      .packet_fut	  (bist_p2_c_tx_bist_tadp_packet_fut ),
      .packet_pam	  (bist_p2_c_tx_bist_tadp_packet_pam ),
      .packet_sid	  (bist_p2_c_tx_bist_tadp_packet_sid ),
      .packet_prot	  (bist_p2_c_tx_bist_tadp_packet_prot),
      .packet_qual	  (bist_p2_c_tx_bist_tadp_packet_qual),
      .packet_prio	  (bist_p2_c_tx_bist_tadp_packet_prio),
      .packet_len_min	  (bist_p2_c_tx_bist_tadp_packet_len_min),
      .packet_len_max	  (bist_p2_c_tx_bist_tadp_packet_len_max),
      .packet_enable	  (bist_p2_c_tx_bist_tadp_packet_enable),
      .packet_delay_min   (bist_p2_c_tx_bist_tadp_packet_delay_min),
      .packet_delay_max   (bist_p2_c_tx_bist_tadp_packet_delay_max),
      .prbs_pol_type	  (bist_p2_c_tx_bist_tadp_prbs_pol_type),
      .insert_error	  (bist_p2_Tx_bist_tadp_insert_error_w),
      .prbs_zero	  (bist_p2_c_tx_bist_tadp_prbs_zero),
      .single_mode	  (bist_p2_c_tx_bist_tadp_single_mode),
      .prbs_clear	  (bist_p2_Tx_packet_status_reg_w),
      .packet_count	  (bist_p2_s_tx_bist_tadp_packet_count),
      .single_go	  (bist_p2_Tx_go_command_reg_w),
      
      .scan_enable	  (scan_enable),
      .clk		  (MainBistTadpTx_sys_clk),
      .reset_n	          (MainBistTadpTx_sys_reset_n)
      );


   
   
   
   MainBistTadpTx bist_tadp_tx_p3_i
     (
      
      .token_valid	  (bist_tadp_tx_p3_token_valid),
      .token_ready	  (bist_tadp_tx_p3_token_ready),
      .token_out	  (bist_tadp_tx_p3_token_out  ),
      
      .packet_type	  (bist_p3_c_tx_bist_tadp_packet_type),
      .packet_fut	  (bist_p3_c_tx_bist_tadp_packet_fut),
      .packet_pam	  (bist_p3_c_tx_bist_tadp_packet_pam),
      .packet_sid	  (bist_p3_c_tx_bist_tadp_packet_sid),
      .packet_prot	  (bist_p3_c_tx_bist_tadp_packet_prot),
      .packet_qual	  (bist_p3_c_tx_bist_tadp_packet_qual),
      .packet_prio	  (bist_p3_c_tx_bist_tadp_packet_prio),
      .packet_len_min	  (bist_p3_c_tx_bist_tadp_packet_len_min),
      .packet_len_max	  (bist_p3_c_tx_bist_tadp_packet_len_max),
      .packet_enable	  (bist_p3_c_tx_bist_tadp_packet_enable),
      .packet_delay_min   (bist_p3_c_tx_bist_tadp_packet_delay_min),
      .packet_delay_max   (bist_p3_c_tx_bist_tadp_packet_delay_max),
      .prbs_pol_type	  (bist_p3_c_tx_bist_tadp_prbs_pol_type),
      .insert_error	  (bist_p3_Tx_bist_tadp_insert_error_w),
      .prbs_zero	  (bist_p3_c_tx_bist_tadp_prbs_zero ),
      .single_mode	  (bist_p3_c_tx_bist_tadp_single_mode),
      .prbs_clear	  (bist_p3_Tx_packet_status_reg_w   ),
      .packet_count	  (bist_p3_s_tx_bist_tadp_packet_count),
      .single_go	  (bist_p3_Tx_go_command_reg_w	  ),

      
      .scan_enable	  (scan_enable                      ),
      .clk		  (MainBistTadpTx_sys_clk),
      .reset_n	          (MainBistTadpTx_sys_reset_n)
      );

   
   
   
   MainPrioDiv tx_prio_div_i (
        
        .tokin             (phy_tx_tokin_data),
        .tokinvld          (phy_tx_tokin_valid),
        .tokinrdy          (phy_tx_tokin_ready),
        
        .token_valid_p1    (prio_div_p1_tokout_valid),
        .token_ready_p1    (prio_div_p1_tokout_ready),
        .token_data_p1     (prio_div_p1_tokout_data),
        
        .token_valid_p2    (prio_div_p2_tokout_valid),
        .token_ready_p2    (prio_div_p2_tokout_ready),
        .token_data_p2     (prio_div_p2_tokout_data),
        
        .token_valid_p3    (prio_div_p3_tokout_valid),
        .token_ready_p3    (prio_div_p3_tokout_ready),
        .token_data_p3     (prio_div_p3_tokout_data),
        
        .MAIN_HDI_PRIORITY (c_prio_div_main_hdi_priority),
        .MAX_DATA_P1       (PRIO_DIV_MAX_DATA),
        .MAX_DATA_P2       (PRIO_DIV_MAX_DATA),
        .MAX_DATA_P3       (PRIO_DIV_MAX_DATA),
        
        .scan_enable       (scan_enable),
        .clk               (tx_main_sched_sys_clk),
        .reset_n           (tx_main_sched_sys_reset_n)
      );


  vl_sync_fifo_clear #(.AWIDTH(7), .WIDTH(2*MAIN_TOK_WIDTH), .HALF_SET_EN(0)) p1_fifo
     (
      .clk           (tx_main_sched_sys_clk),
      .reset_n       (tx_main_sched_sys_reset_n),
      .write_data    (prio_div_p1_tokout_data),
      .write_command (prio_div_p1_tokout_valid),
      .write_ready   (prio_div_p1_tokout_ready),
      .read_data     (p1_pcr_tokin_data_pre_len),
      .read_command  (p1_pcr_tokin_ready_pre_len),
      .read_ready    (p1_pcr_tokin_valid_pre_len),
      .fifo_clear    (1'b0),
      .fifo_full     (),
      .fifo_empty    (),
      .fifo_used     (),
      .scan_enable   (scan_enable)
      );
      

   
   
   MainHdiGetLen  P1_MainHdiGetLen_i
     (
      
      .tokin_valid  	  (p1_pcr_tokin_valid_pre_len),
      .tokin_ready  	  (p1_pcr_tokin_ready_pre_len),
      .tokin_data   	  (p1_pcr_tokin_data_pre_len),
      
      .packet_length	  (p1_pcr_tokin_length),
      .packet_pixels	  (p1_pcr_tokin_pixels),
      .tokout_valid 	  (p1_pcr_tokin_valid),
      .tokout_ready 	  (p1_pcr_tokin_ready),
      .tokout_data  	  (p1_pcr_tokin_data),
      
      .guard_band_pixels  (2'b0),
      
      .scan_enable	  (scan_enable),
      .clk        	  (tx_main_sched_sys_clk),
      .reset_n    	  (tx_main_sched_sys_reset_n)
      );


   
   

   
   always @(posedge tx_main_sched_sys_clk or negedge tx_main_sched_sys_reset_n)
     if (!tx_main_sched_sys_reset_n)
       begin
	  pd_pulse_d1 <= 1'b0;
	  pd_pulse_d2 <= 1'b0;
	  pd_tokens_d1 <= {PKT_LEN_W+1{1'b0}};
	  pd_tokens_d2 <= {PKT_LEN_W+1{1'b0}};
	  pd_pixels_d1 <= {PXL_NUM_W{1'b0}};
	  pd_pixels_d2 <= {PXL_NUM_W{1'b0}};
       end
     else
       begin
	  pd_pulse_d1  <= pd_pulse;
	  pd_pulse_d2  <= pd_pulse_d1;
	  pd_tokens_d1 <= pd_tokens;
	  pd_tokens_d2 <= pd_tokens_d1;
	  pd_pixels_d1 <= pd_pixels;
	  pd_pixels_d2 <= pd_pixels_d1;
       end

  
   
   hport_pacer # ( 
      .TOK_WIDTH(MAIN_TOK_WIDTH),
      .PXL_NUM_W(PXL_NUM_W),
      .PKT_LEN_W(PKT_LEN_W))  P1_hport_pacer_i
     (
      
      .tokin_valid 		    	  (p1_pcr_tokin_valid),
      .tokin_data  		    	  (p1_pcr_tokin_data),
      .tokin_ready 		    	  (p1_pcr_tokin_ready),
      .tokin_tokens		    	  (p1_pcr_tokin_length),
      .tokin_pixels		    	  (p1_pcr_tokin_pixels),
      
      .tokout_valid		    	  (p1_pcr_tokout_valid),
      .tokout_data 		    	  (p1_pcr_tokout_data),
      .tokout_ready		    	  (p1_pcr_tokout_ready),
      
      .clk_tokin_valid	    	    	  (p2_clk_tokout_valid),
      .clk_tokin_data 	    	    	  (p2_clk_tokout_data ),
      .clk_tokin_ready	    	    	  (p2_clk_tokout_ready),
      
      .clk_tokout_valid	    	    	  (p2_pcr_clk_tokout_valid),
      .clk_tokout_data 	    	    	  (p2_pcr_clk_tokout_data),
      .clk_tokout_ready	    	    	  (p2_pcr_clk_tokout_ready),
      
      .pd_pulse 		    	  (pd_pulse_d2),
      .pd_tokens		    	  (pd_tokens_d2),
      .pd_pixels		    	  (pd_pixels_d2),
      
      .reg_pcr_enable			  (p1_reg_pcr_enable),
      .reg_pcr_drop_pkts  	          (p1_reg_pcr_drop_pkts),
      .reg_pcr_sw_flush         	  (p1_reg_pcr_sw_flush),
      .reg_pcr_mode_pixel       	  (p1_reg_pcr_mode_pixel),
      .reg_pcr_mode_dan           	  (p1_reg_pcr_mode_dan),
      .reg_pcr_mode_sid_cpu     	  (p1_reg_pcr_mode_sid_cpu),
      .reg_pcr_sid_cpu          	  (p1_reg_pcr_sid_cpu),
      .reg_pcr_bw_limit_out_cnt 	  (p1_reg_pcr_bw_limit_out_cnt),
      .reg_pcr_bw_limit_in_data 	  (p1_reg_pcr_bw_limit_in_data),
      .reg_pcr_bw_limit_in_data_reg_w     (p1_reg_pcr_bw_limit_in_data_reg_w),
      .reg_pcr_egc_limit        	  ({p1_reg_pcr_egc_limit_high,p1_reg_pcr_egc_limit_low}),
      .reg_pcr_clki_MN_Lsb_First          (p1_reg_pcr_clki_MN_Lsb_First),
      .reg_pcr_clki_MN_IgnoreCRC          (p1_reg_pcr_clki_MN_IgnoreCRC),
      
      .reg_pcr_clk_freq         	  (p1_reg_pcr_clk_freq),
      .reg_pcr_mn_change_clr    	  (p1_reg_pcr_mn_change_clr),
      .reg_pcr_mn_zero_clr      	  (p1_reg_pcr_mn_zero_clr),
      .reg_pcr_mn_change        	  (p1_reg_pcr_mn_change),
      .reg_pcr_mn_change_latch  	  (p1_reg_pcr_mn_change_latch),
      .reg_pcr_mn_zero          	  (p1_reg_pcr_mn_zero),
      .reg_pcr_mn_zero_latch    	  (p1_reg_pcr_mn_zero_latch),
      .reg_pcr_mn_steady        	  (p1_reg_pcr_mn_steady),
      .reg_pcr_fifo_loop_acc    	  (p1_reg_pcr_fifo_loop_acc),
      .reg_pcr_clko_MN_Pam      	  (p1_reg_pcr_clko_MN_Pam),
      .reg_pcr_clko_MN_Prot     	  (p1_reg_pcr_clko_MN_Prot),
      .reg_pcr_clko_Mn_Ext      	  (p1_reg_pcr_clko_Mn_Ext),
      .reg_pcr_clko_Mn_Ext_Info 	  (p1_reg_pcr_clko_Mn_Ext_Info),
      .reg_pcr_clko_MN_LsbFirst 	  (p1_reg_pcr_clko_MN_LsbFirst),
      .reg_pcr_clko_Enable      	  (p1_reg_pcr_clko_Enable),
      .reg_pcr_clko_bypass      	  (p1_reg_pcr_clko_bypass),
      .reg_pcr_tmds_mn_filt_testbus       (p1_reg_pcr_tmds_mn_filt_testbus),
      .reg_pcr_tmds_fifo_loop_testbus     (p1_reg_pcr_tmds_fifo_loop_testbus),
      .reg_pcr_tmds_fo_filt_testbus       (p1_reg_pcr_tmds_fo_filt_testbus),
      .reg_pcr_tmds_in_clock_est          (p1_reg_pcr_tmds_in_clock_est),
      .reg_pcr_fo_est_out                 (p1_reg_pcr_fo_est_out),
      .reg_pcr_ShiftMn13                  (p1_reg_pcr_ShiftMn13),
      .reg_pcr_TMDS_FIFO_LOOP_A_SLCT      (p1_reg_pcr_TMDS_FIFO_LOOP_A_SLCT),
      .reg_pcr_TMDS_FIFO_LOOP_B_SLCT      (p1_reg_pcr_TMDS_FIFO_LOOP_B_SLCT),
      .reg_pcr_TMDS_FIFO_LOOP_EN          (p1_reg_pcr_TMDS_FIFO_LOOP_EN),
      .reg_pcr_TMDS_FIFO_LOOP_REF         (p1_reg_pcr_TMDS_FIFO_LOOP_REF),
      .reg_pcr_TMDS_FO_CHANGE_THR         (p1_reg_pcr_TMDS_FO_CHANGE_THR),
      .reg_pcr_TMDS_FO_DIFF_THR           (p1_reg_pcr_TMDS_FO_DIFF_THR),
      .reg_pcr_TMDS_FO_LEAK_SLCT          (p1_reg_pcr_TMDS_FO_LEAK_SLCT),
      .reg_pcr_TMDS_MN_CHANGE_THR         (p1_reg_pcr_TMDS_MN_CHANGE_THR),
      .reg_pcr_TMDS_MN_DIFF_SLCT          (p1_reg_pcr_TMDS_MN_DIFF_SLCT),
      .reg_pcr_TMDS_MN_INIT_DEV           (p1_reg_pcr_TMDS_MN_INIT_DEV),
      .reg_pcr_TMDS_MN_LEAK_SLCT          (p1_reg_pcr_TMDS_MN_LEAK_SLCT),
      .reg_pcr_TMDS_MN_STEADY_THR         (p1_reg_pcr_TMDS_MN_STEADY_THR),
      .reg_pcr_TMDS_SSC_MAX 	    	  (p1_reg_pcr_TMDS_SSC_MAX),
      .reg_pcr_TMDS_SSC_RST 	    	  (p1_reg_pcr_TMDS_SSC_RST),
      .reg_pcr_TMDS_SSC_STEP	    	  (p1_reg_pcr_TMDS_SSC_STEP),
      .reg_pcr_TMDS_MN_ACC_PERIOD_SLCT    (p1_reg_pcr_TMDS_MN_ACC_PERIOD_SLCT),
      .reg_pcr_TMDS_MN_FRZ  	    	  (p1_reg_pcr_TMDS_MN_FRZ),
      .reg_pcr_TMDS_MN_MODE 	    	  (p1_reg_pcr_TMDS_MN_MODE),
      .reg_pcr_TMDS_SD_CYCLE	    	  (p1_reg_pcr_TMDS_SD_CYCLE),
      .reg_pcr_FSUpLimit                  (p1_reg_pcr_FSUpLimit  ),
      .reg_pcr_FSDownLimit                (p1_reg_pcr_FSDownLimit),
      .reg_pcr_FsLimitEn                  (p1_reg_pcr_FsLimitEn  ),
      .reg_pcr_fifo_wr_en                 (p1_reg_pcr_fifo_wr_en ),
      .reg_pcr_vf_max                     (p1_reg_pcr_vf_max     ),
      .reg_pcr_plus1_pd                   (p1_reg_pcr_plus1_pd   ),
      .reg_pcr_plus1_tokin                (p1_reg_pcr_plus1_tokin),   
      .reg_pcr_minus1_compare             (p1_reg_pcr_minus1_compare),   
      .reg_pcr_vf_too_high_mode_pass      (p1_reg_pcr_vf_too_high_mode_pass),
      .reg_pcr_in_middle_of_pkt	          (p1_reg_pcr_in_middle_of_pkt),         
      .reg_pcr_vf_start  		  (p1_reg_pcr_vf_start),   
      .reg_pcr_fifo_correction            (p1_reg_pcr_fifo_correction),
      .reg_pcr_FSCtrl                     (p1_reg_pcr_FSCtrl),
      .reg_pcr_mul_round                  (p1_reg_pcr_mul_round),
      .reg_pcr_BWLimit_out                (p1_reg_pcr_BWLimit_out),
      
      .reg_pcr_vf_too_high                (p1_reg_pcr_vf_too_high),
      
      .pacer_test_bus_1                   (test_bus_pacer_p1_1), 
      .pacer_test_bus_2                   (test_bus_pacer_p1_2), 
      
      .scan_enable		    	  (scan_enable),
      .clk        		    	  (tx_main_sched_sys_clk),
      .fsctrl_clk                         (prio1_fsctrl_sys_clk),
      .fsctrl_reset_n  		    	  (prio1_fsctrl_sys_reset_n),
      .reset_n    		    	  (tx_main_sched_sys_reset_n)
      );
   


   
   
   

   assign p2_local_sid_array = {p2_dispatcher_local_sid_7,p2_dispatcher_local_sid_6,p2_dispatcher_local_sid_5,p2_dispatcher_local_sid_4,
				p2_dispatcher_local_sid_3,p2_dispatcher_local_sid_2,p2_dispatcher_local_sid_1,p2_dispatcher_local_sid_0};    



   MainDispatcher # (
		     .NUM_INP(1), 
		     .LOG_INP(1),
		     .NUM_OUT(2), 
		     .LOG_OUT(1))  p2_dispatcher_i
     (
      
      .tokin_valid			(prio_div_p2_tokout_valid	  ),
      .tokin_ready			(prio_div_p2_tokout_ready	  ),
      .tokin_data			(prio_div_p2_tokout_data  	  ), 
      
      .tokout_valid			({p2_clk_tokout_valid , p2_data_tokout_valid}),
      .tokout_ready			({p2_clk_tokout_ready , p2_data_tokout_ready}),
      .tokout_data			({p2_clk_tokout_data  , p2_data_tokout_data }),
      
      .local_sid_array  		(p2_local_sid_array               ),
      .spare_sid_array  		({256{1'b0}}	  		  ),
      .trash_sid_array  		({256{1'b0}}			  ),
      .hdi_dest	        		(1'b0				  ),
      
      .type_route			(p2_dispatcher_type_route         ),
      .spare_route			({32{1'b0}}  			  ),
      .force_local_type 		({32{1'b0}}   			  ),
      .clk_route			({16{1'b0}}			  ),
      .clk_sp_route			({16{1'b0}}			  ),
      
      .scan_enable			(scan_enable			  ),
      .clk				(src_pcs_if_sys_clk	  	  ),
      .reset_n	        		(src_pcs_if_sys_reset_n	  	  )
      );



   

   
   
   
   MainSched # (.PRIO1_NUM(2),
		.PRIO2_NUM(3),
		.PRIO3_NUM(3),
		.PRIO1_LOG(1),
		.PRIO2_LOG(2),
		.PRIO3_LOG(2))  tx_main_scheduler_i
     (
      
      .prio1_valid 		({bist_tadp_tx_p1_token_valid, p1_pcr_tokout_valid}),
      .prio1_ready 		({bist_tadp_tx_p1_token_ready, p1_pcr_tokout_ready}),
      .prio1_data  		({bist_tadp_tx_p1_token_out,   p1_pcr_tokout_data}),
      
      .prio2_valid 		({bist_tadp_tx_p2_token_valid, p2_pcr_clk_tokout_valid, p2_data_tokout_valid}),
      .prio2_ready 		({bist_tadp_tx_p2_token_ready, p2_pcr_clk_tokout_ready,  p2_data_tokout_ready}),
      .prio2_data  		({bist_tadp_tx_p2_token_out,   p2_pcr_clk_tokout_data, p2_data_tokout_data }),
      
      .prio3_valid 		({bist_tadp_tx_p3_token_valid, hdbt_hlic_tokout_valid, prio_div_p3_tokout_valid}),
      .prio3_ready 		({bist_tadp_tx_p3_token_ready, hdbt_hlic_tokout_ready, prio_div_p3_tokout_ready}), 
      .prio3_data  		({bist_tadp_tx_p3_token_out,   hdbt_hlic_tokout_data,  prio_div_p3_tokout_data}), 
      
      .token_valid 		(bc_tx_tokin_valid),
      .token_ready 		(bc_tx_tokin_ready),
      .token_out   		(bc_tx_tokin_data ),
      
      .scan_enable 		(scan_enable),
      .clk         		(tx_main_sched_sys_clk),	
      .reset_n     		(tx_main_sched_sys_reset_n)
      );

   
   
   
   MainDispatcher # (.NUM_INP(1), 
		     .LOG_INP(1),
		     .NUM_OUT(2), 
		     .LOG_OUT(1))  tx_loopback_dispatcher_i
     (
      
      .tokin_valid	(bc_tx_tokout_valid),
      .tokin_ready	(bc_tx_tokout_ready),
      .tokin_data	(bc_tx_tokout_data), 
      
      .tokout_valid	({link_lb_disp_tokout_valid, rtrs_buff_tokin_valid}),
      .tokout_ready	({link_lb_disp_tokout_ready, rtrs_buff_tokin_ready}),
      .tokout_data	({link_lb_disp_tokout_data,  rtrs_buff_tokin_data}),
      
      .local_sid_array  ({256{c_tx_lb_disp_local_sid}}),
      .spare_sid_array  ({256{1'b0}}), 
      .trash_sid_array  ({256{1'b0}}),
      .hdi_dest	        (1'b0),
      
      .type_route	({32{c_tx_lb_disp_type_route}}),
      .spare_route	({32{1'b0}}),
      .force_local_type ({32{1'b0}}),
      .clk_route	({16{1'b0}}),
      .clk_sp_route({16{1'b0}}),
      
      .scan_enable	(scan_enable),
      .clk		(egress_sys_clk),
      .reset_n	        (egress_sys_reset_n)
      );



   
   
   


   assign tx_rd_strb_stg = tx_wr_strb_stg && rtrs_buff_tokin_ready_del;
   
   vl_sync_fifo #(.AWIDTH(1), .WIDTH(2*MAIN_TOK_WIDTH), .HALF_SET_EN(0)) u_tx_stage_1_fifo
     (
      .clk                              (egress_sys_clk),
      .reset_n                          (egress_sys_reset_n),
      .write_data                       (rtrs_buff_tokin_data),
      .write_command                    (rtrs_buff_tokin_valid),
      .write_ready                      (rtrs_buff_tokin_ready),
      .read_data                        (rtrs_buff_data_out),
      .read_command                     (tx_rd_strb_stg),
      .read_ready                       (tx_rd_rdy_4_stg),
      .fifo_full                        (),
      .fifo_empty                       (),
      .fifo_used                        (),
      .scan_enable                      (scan_enable)
      );

   assign rtrs_buff_tokin_valid_anded = tx_rd_rdy_4_stg && tx_rd_strb_stg;


   
   
   
   assign retr_buff_thr_cross          = s_retr_buff_words_in_ram >= c_retr_buff_threshold;
   assign retr_buff_thr_cross_not      = !retr_buff_thr_cross;
   assign s_retr_buff_max_words_in_ram = s_retr_buff_words_in_ram;

   MainBuffer # (.ADDR_WIDTH(RETR_BUFF_AW), 
		 .CNT_WIDTH(24)) retr_main_buff_i
     (
      
      .tokinvld	 		(rtrs_buff_tokin_valid_anded  ),
      .tokinrdy	 		(tx_wr_strb_stg	      ),
      .tokin		 	(rtrs_buff_data_out	      ),
      
      .tokoutvld	 	(tx_main_buff_tokout_valid    ),
      .tokoutrdy	 	(tx_main_buff_tokout_ready    ),
      .tokout	 		(tx_main_buff_tokout_data     ),
      
      .pkt_write	 	(s_retr_buff_pkt_write	      ),
      
      .words_in_ram	 	(s_retr_buff_words_in_ram     ),
      
      .packet_num	 	(s_retr_buff_packet_num	      ),
      .packet_num_clr 		(Tx_Retr_buffer_pkt_num_reg_w ),
      
      .Enable	 		(c_retr_buff_enable	      ),
      .DelaySize	 	(c_retr_buff_delay_size	      ),
      .CrcBitEn	 		(c_retr_buff_crc_bit_en	      ),
      
      .ram_A		        (retr_buff_ram_addr	      ),
      .ram_D		 	(retr_buff_ram_wdata	      ),
      .ram_CE	 		(retr_buff_ram_ce	      ),
      .ram_WE	 		(retr_buff_ram_we	      ),
      .ram_Q		 	(retr_buff_ram_rdata	      ),
      
      .scan_enable	 	(scan_enable		      ),
      .clk		 	(tx_retr_main_buff_sys_clk    ),
      .reset_n	 		(tx_retr_main_buff_sys_reset_n)
      );

   
   Snir_link_mem_bist_env Snir_link_mem_bist_env 
     (
      .retr_buff_ram_rdata        (retr_buff_ram_rdata       ),      
      .retr_buff_ram_ce           (retr_buff_ram_ce          ),         
      .retr_buff_ram_we           (retr_buff_ram_we          ),         
      .retr_buff_ram_addr         (retr_buff_ram_addr        ),       
      .retr_buff_ram_wdata        (retr_buff_ram_wdata       ),      
      .tx_retr_main_buff_sys_clk  (tx_retr_main_buff_sys_clk ),
      
      .bist_clk                   (bist_clk                  ),
      .bist_reset_n               (bist_reset_n              ),
      .scan_mode                  (scan_mode                 ),
      .vl_sms_WRCK                (WRCK               ),
      .vl_sms_Snir_link_SMS_sms_1_WSI        (retr_main_buff_WSI),
      .vl_sms_WRSTN                          (WRSTN),  
      .vl_sms_Snir_link_SMS_sms_1_UpdateWR   (retr_main_buff_UpdateWR),
      .vl_sms_SelectWIR                      (SelectWIR),
      .vl_sms_Snir_link_SMS_sms_1_ShiftWR    (retr_main_buff_ShiftWR), 
      .vl_sms_Snir_link_SMS_sms_1_CaptureWR  (retr_main_buff_CaptureWR),
      .vl_sms_Snir_link_SMS_sms_1_WSO        (retr_main_buff_WSO)       
      );
   


   vl_intr #(.INTR_NUM(LINK_INT_NUM)) u_vl_intr
     (
      .clk            (sys_clk),
      .rst_n          (sys_reset_n),
      
      .int_source     (link_interrupts),
      
      .int_clr        (link_top_regs_rif_data_wr[LINK_INT_NUM-1:0]),
      .int_clr_reg_w  (link_int_stat_reg_w), 
      
      .int_mask       (link_int_mask),
      
      .int_stat       (link_int_stat),
      
      .int_out        (link_int_stat_out)
      );

   
   assign link_vl_int = |link_int_stat_out;

   
   
   
   assign link_interrupts[0]  = hdbt_hlic_last_bad_ack;
   assign link_interrupts[1]  = hdbt_hlic_read_ready;
   assign link_interrupts[2]  = hdbt_hlic_frame_ready;
   assign link_interrupts[3]  = hdbt_hlic_frame_done;
   assign link_interrupts[4]  = hdbt_hlic_rx_cmd_fifo_overflow;
   
   assign link_interrupts[5]  = lppf_null_interrupt;
   
   assign link_interrupts[6]  = retr_buff_thr_cross;
   
   assign link_interrupts[7]  = src_pcs_delay_calc_int_stat;
   
   assign link_interrupts[8]  = hdmic_ddc_slv_mon_req;
   assign link_interrupts[9]  = hdmic_ddc_slv_gen_req;
   assign link_interrupts[10] = hdmic_ddc_mst_mon_req;
   assign link_interrupts[11] = hdmic_ddc_mst_gen_req;
   assign link_interrupts[12] = hdmic_ddc_slv_stop_int;
   assign link_interrupts[13] = hdmic_ddc_slv_used_int;
   
   
   assign link_interrupts[14] = egr_pacer_p1_mn_steady_pulse;

   assign link_interrupts[15] = p1_reg_pcr_mn_change;
   assign link_interrupts[16] = p1_reg_pcr_mn_zero;
   assign link_interrupts[17] = p1_reg_pcr_vf_too_high;
      
   
   assign link_interrupts[18] = hdmi_ctrl_change;

   
   assign link_interrupts[19] = (|hdmic_cpu_fifo_cec_ing_tx_used);
   assign link_interrupts[20] = (|hdmic_cpu_fifo_cec_ing_rx_used);
   assign link_interrupts[21] = (|hdmic_cpu_fifo_cec_egr_tx_used);
   assign link_interrupts[22] = (|hdmic_cpu_fifo_cec_egr_rx_used);
   

   
   
   assign egr_pacer_p1_mn_steady = p1_reg_pcr_mn_steady;
      
   always @(posedge sys_clk or negedge sys_reset_n)
     if (!sys_reset_n) 
       egr_pacer_p1_mn_steady_d <= 1'b0;
     else          
       egr_pacer_p1_mn_steady_d <= egr_pacer_p1_mn_steady;
   
   assign egr_pacer_p1_mn_steady_pulse = egr_pacer_p1_mn_steady && !egr_pacer_p1_mn_steady_d;
   

   
   
   
   always @(posedge sys_clk or negedge sys_reset_n)
     if (!sys_reset_n)
       begin
	  hdmic_cpu_ing_rx_v5_d  <= 1'b0;
	  hdmic_cpu_ing_rx_rxs_d <= {4{1'b0}};	
	  hdmic_cpu_egr_rx_v5_d  <= 1'b0;
	  hdmic_cpu_egr_rx_rxs_d <= {4{1'b0}};	
       end
     else
       begin
	  hdmic_cpu_ing_rx_v5_d  <= hdmic_cpu_ing_rx_v5;
	  hdmic_cpu_ing_rx_rxs_d <= hdmic_cpu_ing_rx_rxs;
	  hdmic_cpu_egr_rx_v5_d  <= hdmic_cpu_egr_rx_v5;
	  hdmic_cpu_egr_rx_rxs_d <= hdmic_cpu_egr_rx_rxs;	
       end
   
   always @(posedge sys_clk or negedge sys_reset_n)
     if (!sys_reset_n)
       hdmi_ctrl_change <= 1'b0;
     else if (hdmic_intrpt_5v_rxs_clear_w)
       hdmi_ctrl_change <= 1'b0;
     else
       hdmi_ctrl_change <= hdmi_ctrl_change ||
			  (hdmic_cpu_ing_rx_v5_d  != hdmic_cpu_ing_rx_v5 ) ||
			  (hdmic_cpu_ing_rx_rxs_d != hdmic_cpu_ing_rx_rxs) ||
			  (hdmic_cpu_egr_rx_v5_d  != hdmic_cpu_egr_rx_v5 ) ||
			  (hdmic_cpu_egr_rx_rxs_d != hdmic_cpu_egr_rx_rxs);

   

   
   
   


   MainHdiStop Sched_Buf_HdiStop_i
     (
      
      .tokin_valid  			(tx_main_buff_tokout_valid	  ),
      .tokin_ready  			(tx_main_buff_tokout_ready	  ),
      .tokin_data   			(tx_main_buff_tokout_data  	  ),
      
      .tokout_valid 			(sched_buf_hdistop_tokout_valid	  ),
      .tokout_ready 			(sched_buf_hdistop_tokout_ready	  ),
      .tokout_data  			(sched_buf_hdistop_tokout_data	  ),
      
      .Enable	    			(sched_buf_hdistop_en		  ),
      .scan_enable  			(scan_enable			  ),
      .clk	    			(tx_retr_main_buff_sys_clk	  ),
      .reset_n	    			(tx_retr_main_buff_sys_reset_n	  )
      );



   
   
   
   

   
   assign pcs_retr_req         = retransmission_mode_select ? Dan_pcs_retr_req : pcs_retr_req_pre;
   assign pcs_retr_pid         = retransmission_mode_select ? Dan_retreq_data  : pcs_retr_pid_pre[6:0];
   assign Dan_pcs_retr_req_rdy = retransmission_mode_select ? pcs_retr_req_rdy : 1'b0;
   
     
   src_pcs_if #(.SINGLE_DSP_MODE(1), .ADDR_WIDTH(12)) src_pcs_if_i
     (
      
      .src_pcs_if_rtr_ls_minRD(src_pcs_src_pcs_if_rtr_ls_minRD),
      .src_pcs_if_rtr_ds_minRD(src_pcs_src_pcs_if_rtr_ds_minRD),
      .src_pcs_if_rtr_sd_minRD(src_pcs_src_pcs_if_rtr_sd_minRD),
      .src_pcs_if_rtr_ls_fixRD(src_pcs_src_pcs_if_rtr_ls_fixRD),
      .src_pcs_if_rtr_ds_fixRD(src_pcs_src_pcs_if_rtr_ds_fixRD),
      .src_pcs_if_rtr_sd_fixRD(src_pcs_src_pcs_if_rtr_sd_fixRD),
      .src_pcs_if_mainbuffer_0_ls(src_pcs_if_mainbuffer_0_ls),
      .src_pcs_if_mainbuffer_0_ds(src_pcs_if_mainbuffer_0_ds),
      .src_pcs_if_mainbuffer_0_sd(src_pcs_if_mainbuffer_0_sd),
      .src_pcs_if_mainbuffer_1_ls(1'b0),
      .src_pcs_if_mainbuffer_1_ds(1'b0),
      .src_pcs_if_mainbuffer_1_sd(1'b0),
      
      .tokinvld(sched_buf_hdistop_tokout_valid),
      .tokinrdy(sched_buf_hdistop_tokout_ready),
      .tokin0(sched_buf_hdistop_tokout_data[MAIN_TOK_WIDTH-1:0]),
      .tokin1(sched_buf_hdistop_tokout_data[2*MAIN_TOK_WIDTH-1:MAIN_TOK_WIDTH]),
      
      .retreq_fixRD(pcs_retr_req),  
      .retreq_rdy_fixRD(pcs_retr_req_rdy),  
      .retpid_fixRD(pcs_retr_pid[6:0]),  
      .retreq_minRD(pcs_retr_req_MinRD),  
      .retpid_minRD(pcs_retr_pid_MinRD[6:0]),  
      .retreq_rdy_minRD(pcs_retr_req_rdy_MinRD),  
      .ret_req_clk(snk_pcs_crc_sys_clk),
      .ret_req_reset_n(snk_pcs_crc_sys_reset_n),
      
      .tokoutvld_pcs0(link_main_tokout_valid),
      .tokoutrdy_pcs0(link_main_tokout_ready),
      .tokout0_pcs0(link_main_tokout_data[MAIN_TOK_WIDTH-1:0]),
      .tokout1_pcs0(link_main_tokout_data[2*MAIN_TOK_WIDTH-1:MAIN_TOK_WIDTH]),
      .tokoutvld_pcs1(),
      .tokoutrdy_pcs1(1'b1),
      .tokout0_pcs1(),
      .tokout1_pcs1(),
      
      .SCIN_tokout0(rtrs_buff_data_out[1*MAIN_TOK_WIDTH-1:0]),
      .SCIN_tokout1(rtrs_buff_data_out[2*MAIN_TOK_WIDTH-1:MAIN_TOK_WIDTH]),
      .SCIN_tokvld(rtrs_buff_tokin_valid_anded),
      .SCIN_tokrdy(rtrs_buff_tokin_ready_del),      
      
      .req2sched_token_valid(snk_pcs_retr_tokout_valid),
      .req2sched_token_ready(snk_pcs_retr_tokout_ready),
      .req2sched_token_data(snk_pcs_retr_tokout_data),
      .retr_buff_thr_cross(retr_buff_thr_cross_not),
      
      .ret_enable_minRD(src_pcs_ret_enable_minRD),
      .ret_enable_fixRD(src_pcs_ret_enable_fixRD),
      .transform(1'b1),
      .pamconv_bypass_minRD(src_pcs_pamconv_bypass_minRD),
      .pamconv_bypass_fixRD(src_pcs_pamconv_bypass_fixRD),
      .NullEnable(src_pcs_c_src_pcs_null_enable),
      .send_protected(src_pcs_c_src_pcs_send_idle_protected),
      .ret_always_pam_4(src_pcs_c_src_pcs_ret_always_pam_4),
      .MainHdiRemPid_enable_minRD(src_pcs_MainHdiRemPid_enable_minRD), 
      .MainHdiRemPid_enable_fixRD(src_pcs_MainHdiRemPid_enable_fixRD), 
      .CRC_HeaderCrc(src_pcs_c_src_pcs_crc_header_crc), 	        
      .CRC_Spec3Mode(src_pcs_c_src_pcs_crc_spec3_mode),
      .repeat_req_distance(src_pcs_c_src_pcs_repeat_req_distance),
      .idle_delay(src_pcs_c_src_pcs_idle_delay),
      .qual_11_pams(src_pcs_qual_11_pams),
      .qual_10_pams(src_pcs_qual_10_pams),
      .qual_01_pams(src_pcs_qual_01_pams),
      .ptype_pams(src_pcs_ptype_pams),
      .EnableVariationMode(src_pcs_EnableVariationMode),
      .LastExtShift(src_pcs_LastExtShift),
      .lnk_LastExtShift(lnk_LastExtShift),
      .lnk_EnableVariationMode(lnk_EnableVariationMode),
      .delay_calc_int_stat(src_pcs_delay_calc_int_stat),
      .delay_calc_int_clr(src_pcs_delay_calc_int_stat_reg_w),
      .mainbuffer_src_pcs0_if_en(mainbuffer_src_pcs0_if_en),
      .mainbuffer_src_pcs1_if_en(1'b0),
      .cfg_main_rd_type(src_pcs_cfg_main_rd_type),  
      .cfg_ext_rd_type(src_pcs_cfg_ext_rd_type),
      .cfg_pkt_splt_en(src_pcs_cfg_pkt_split_en),
      .cfg_pkt_splt_sel_def_ch(src_pcs_cfg_sel_default_ch),
      
      .aux_mode(src_pcs_c_src_pcs_aux_mode),
      .aux_tokout(src_pcs_aux_tokout),
      .aux_tokoutvld(src_pcs_aux_tokoutvld),
      .aux_tokoutrdy(src_pcs_aux_tokoutrdy),       
      
      .stat_mem_minRD(src_pcs_s_src_pcs_stat_mem_minRD_int),
      .num_retreq_minRD(src_pcs_s_src_pcs_num_retreq_minRD),
      .num_goodret_minRD(src_pcs_s_src_pcs_num_goodret_minRD),
      .num_protected_minRD(src_pcs_s_src_pcs_num_protected_minRD),
      .num_unprotected_minRD(src_pcs_s_src_pcs_num_unprotected_minRD),
      .stat_mem_fixRD(src_pcs_s_src_pcs_stat_mem_int),
      .num_retreq_fixRD(src_pcs_s_src_pcs_num_retreq),
      .num_goodret_fixRD(src_pcs_s_src_pcs_num_goodret),
      .num_protected_fixRD(src_pcs_s_src_pcs_num_protected),
      .num_unprotected_fixRD(src_pcs_s_src_pcs_num_unprotected),
      .stat_clear(src_pcs_TX_src_pcs_if_stat_clear_reg_w),
      .mainbuffer_0_words_in_ram_sync(src_pcs_mainbuffer_0_words_in_ram_sync),
      .mainbuffer_1_words_in_ram_sync(src_pcs_mainbuffer_1_words_in_ram_sync),
      
      .src_pcs0_if_clr_counters(s_src_pcs_clr_counters),      
      .src_pcs0_if_ptype_00_packets(s_src_pcs_ptype_00_packets),
      .src_pcs0_if_ptype_01_packets(s_src_pcs_ptype_01_packets),
      .src_pcs0_if_ptype_02_packets(s_src_pcs_ptype_02_packets),
      .src_pcs0_if_ptype_03_packets(s_src_pcs_ptype_03_packets),
      .src_pcs0_if_ptype_04_packets(s_src_pcs_ptype_04_packets),
      .src_pcs0_if_ptype_05_packets(s_src_pcs_ptype_05_packets),
      .src_pcs0_if_ptype_06_packets(s_src_pcs_ptype_06_packets),
      .src_pcs0_if_ptype_07_packets(s_src_pcs_ptype_07_packets),
      .src_pcs0_if_ptype_08_packets(s_src_pcs_ptype_08_packets),
      .src_pcs0_if_ptype_09_packets(s_src_pcs_ptype_09_packets),
      .src_pcs0_if_ptype_10_packets(s_src_pcs_ptype_10_packets),
      .src_pcs0_if_ptype_11_packets(s_src_pcs_ptype_11_packets),
      .src_pcs0_if_ptype_12_packets(s_src_pcs_ptype_12_packets),
      .src_pcs0_if_ptype_13_packets(s_src_pcs_ptype_13_packets),
      .src_pcs0_if_ptype_14_packets(s_src_pcs_ptype_14_packets),
      .src_pcs0_if_ptype_15_packets(s_src_pcs_ptype_15_packets),
      .src_pcs0_if_ptype_16_packets(s_src_pcs_ptype_16_packets),
      .src_pcs0_if_ptype_17_packets(s_src_pcs_ptype_17_packets),
      .src_pcs0_if_ptype_18_packets(s_src_pcs_ptype_18_packets),
      .src_pcs0_if_ptype_19_packets(s_src_pcs_ptype_19_packets),
      .src_pcs0_if_ptype_20_packets(s_src_pcs_ptype_20_packets),
      .src_pcs0_if_ptype_21_packets(s_src_pcs_ptype_21_packets),
      .src_pcs0_if_ptype_22_packets(s_src_pcs_ptype_22_packets),
      .src_pcs0_if_ptype_23_packets(s_src_pcs_ptype_23_packets),
      .src_pcs0_if_ptype_24_packets(s_src_pcs_ptype_24_packets),
      .src_pcs0_if_ptype_25_packets(s_src_pcs_ptype_25_packets),
      .src_pcs0_if_ptype_26_packets(s_src_pcs_ptype_26_packets),
      .src_pcs0_if_ptype_27_packets(s_src_pcs_ptype_27_packets),
      .src_pcs0_if_ptype_28_packets(s_src_pcs_ptype_28_packets),
      .src_pcs0_if_ptype_29_packets(s_src_pcs_ptype_29_packets),
      .src_pcs0_if_ptype_30_packets(s_src_pcs_ptype_30_packets),
      .src_pcs0_if_ptype_31_packets(s_src_pcs_ptype_31_packets),
      
      .src_pcs1_if_clr_counters(32'h0),      
      .src_pcs1_if_ptype_00_packets(),
      .src_pcs1_if_ptype_01_packets(),
      .src_pcs1_if_ptype_02_packets(),
      .src_pcs1_if_ptype_03_packets(),
      .src_pcs1_if_ptype_04_packets(),
      .src_pcs1_if_ptype_05_packets(),
      .src_pcs1_if_ptype_06_packets(),
      .src_pcs1_if_ptype_07_packets(),
      .src_pcs1_if_ptype_08_packets(),
      .src_pcs1_if_ptype_09_packets(),
      .src_pcs1_if_ptype_10_packets(),
      .src_pcs1_if_ptype_11_packets(),
      .src_pcs1_if_ptype_12_packets(),
      .src_pcs1_if_ptype_13_packets(),
      .src_pcs1_if_ptype_14_packets(),
      .src_pcs1_if_ptype_15_packets(),
      .src_pcs1_if_ptype_16_packets(),
      .src_pcs1_if_ptype_17_packets(),
      .src_pcs1_if_ptype_18_packets(),
      .src_pcs1_if_ptype_19_packets(),
      .src_pcs1_if_ptype_20_packets(),
      .src_pcs1_if_ptype_21_packets(),
      .src_pcs1_if_ptype_22_packets(),
      .src_pcs1_if_ptype_23_packets(),
      .src_pcs1_if_ptype_24_packets(),
      .src_pcs1_if_ptype_25_packets(),
      .src_pcs1_if_ptype_26_packets(),
      .src_pcs1_if_ptype_27_packets(),
      .src_pcs1_if_ptype_28_packets(),
      .src_pcs1_if_ptype_29_packets(),
      .src_pcs1_if_ptype_30_packets(),
      .src_pcs1_if_ptype_31_packets(),
      
      .Drift_from_cpu(src_pcs_Drift_from_cpu_Src),
      .Cpu_Drift(src_pcs_Cpu_Drift_Src),
      .drfWin(src_pcs_drfWin_Src),
      .Drift_LsbFirst(src_pcs_Drift_LsbFirst_Src),
      .DriftAddEn_minRD(src_pcs_DriftAddEn_Src_minRD),
      .DriftAddEn_fixRD(src_pcs_DriftAddEn_Src),
      .DriftA1Mode(src_pcs_DriftA1Mode_Src),
      .DriftSID(src_pcs_DriftSID_Src),
      .Drift_ClkPkts_mon_enable_minRD(src_pcs_Drift_ClkPkts_mon_enable_Src_minRD),
      .Drift_ClkPkts_mon_sid_minRD(src_pcs_Drift_ClkPkts_mon_sid_Src_minRD),
      .Drift_ClkPkts_mon_clk_sub_type_minRD(src_pcs_Drift_ClkPkts_mon_clk_sub_type_Src_minRD),
      .Drift_ClkPkts_mon_trapped_data_minRD(src_pcs_Drift_ClkPkts_mon_trapped_data_Src_minRD),
      .Drift_ClkPkts_mon_enable_fixRD(src_pcs_Drift_ClkPkts_mon_enable_Src),
      .Drift_ClkPkts_mon_sid_fixRD(src_pcs_Drift_ClkPkts_mon_sid_Src),
      .Drift_ClkPkts_mon_clk_sub_type_fixRD(src_pcs_Drift_ClkPkts_mon_clk_sub_type_Src),
      .Drift_ClkPkts_mon_trapped_data_fixRD(src_pcs_Drift_ClkPkts_mon_trapped_data_Src),
      .drftEst(src_pcs_drftEst),
      
      .src_pcs_if_retr_buff_ram_LS(1'b0),
      .src_pcs_if_retr_buff_ram_DS(1'b0),
      .src_pcs_if_retr_buff_ram_SD(1'b0),
      .src_pcs_if_retr_buff_ramQ(),
      .src_pcs_if_retr_buff_ramA({RETR_BUFF_AW{1'b0}}),
      .src_pcs_if_retr_buff_ramD({MAIN_TOK_WIDTH*4{1'b0}}),
      .src_pcs_if_retr_buff_ramWE(1'b0),
      .src_pcs_if_retr_buff_ramCE(1'b0),
      .src_pcs_if_retr_buff_ram_clk(1'b0),
      
      .src_pcs_if_mic(src_pcs_if_tb),
      .src_pcs_if_chain_sel(src_pcs_if_chain_sel),
      .scan_mode(scan_mode),
      .scan_enable(scan_enable),
      .rcv_clk(src_pcs_if_rcv_clk),
      .clk_src_ret_buffer_minRD(src_pcs_retr_buff_minRD_sys_clk),  	
      .clk_src_ret_buffer_fixRD(src_pcs_retr_buff_sys_clk),  	
      .src_ret_buffer_reset_n_minRD(src_pcs_retr_buff_minRD_sys_reset_n),	
      .src_ret_buffer_reset_n_fixRD(src_pcs_retr_buff_sys_reset_n),	
      .clk_pam_convertor_down_minRD(src_pcs_pam_conv_minRD_sys_clk),	    
      .clk_pam_convertor_down_fixRD(src_pcs_pam_conv_sys_clk),	    
      .pam_convertor_down_reset_n_minRD(src_pcs_pam_conv_minRD_sys_reset_n),   
      .pam_convertor_down_reset_n_fixRD(src_pcs_pam_conv_sys_reset_n),   
      .clk_src_pcs_crc_minRD(src_pcs_crc_minRD_sys_clk),	    
      .clk_src_pcs_crc_fixRD(src_pcs_crc_fixRD_sys_clk),	    
      .src_pcs_crc_reset_n_minRD(src_pcs_crc_minRD_sys_reset_n),	    
      .src_pcs_crc_reset_n_fixRD(src_pcs_crc_sys_reset_n),	    
      .clk_src_pcs_pktsplit(clk_src_pcs_pktsplit),
      .src_pcs_pktsplit_reset_n(src_pcs_pktsplit_reset_n),
      .dsp_pcs0_trn_clk(dsp_pcs_trn_clk),
      .dsp_pcs0_trn_reset_n(dsp_pcs_trn_reset_n),
      .dsp_pcs1_trn_clk(1'b0),
      .dsp_pcs1_trn_reset_n(1'b0),
      .clk(src_pcs_if_sys_clk),
      .reset_n(src_pcs_if_sys_reset_n),      
      .bist_clk(bist_clk),
      .bist_reset_n(bist_reset_n),
      
      .WRCK(WRCK),
      .CaptureWR(srcpcs_CaptureWR),
      .SelectWIR(SelectWIR),
      .ShiftWR(srcpcs_ShiftWR),
      .UpdateWR(srcpcs_UpdateWR),
      .WRSTN(WRSTN),
      .WSI(srcpcs_WSI),
      .WSO(srcpcs_WSO)
      );

   assign src_pcs_s_src_pcs_stat_mem_minRD = {2'h0, src_pcs_s_src_pcs_stat_mem_minRD_int};
   assign src_pcs_s_src_pcs_stat_mem       = {2'h0, src_pcs_s_src_pcs_stat_mem_int};

   
   
   
   Snir_AuxHdbtSched Snir_aux_hdbt_sched_i
     (
      
      .tokout_data			(link_aux_tokout_data	  	  ),
      .tokout_valid			(link_aux_tokout_valid	  	  ),
      .tokout_ready			(link_aux_tokout_ready	  	  ),
      
      .tokout_lppf_data			(lppf_tx_aux_token_data	  	  ),
      .tokout_lppf_valid		(lppf_tx_aux_token_valid	  ),
      .tokout_lppf_ready		(lppf_tx_aux_token_ready	  ),
      
      .tokin_ready			(src_pcs_aux_tokoutrdy	  ),
      .tokin_data			(src_pcs_aux_tokout 	  ),
      .tokin_valid			(src_pcs_aux_tokoutvld	  ),
      
      .msio_pdif_link_data_out          (hlic_tx_pdif_data),
      .msio_pdif_link_data_rd           (msio_aux_hdbt_sched_ready),
      .msio_pdif_rx_link_ready          (hlic_tx_pdif_vld),
      
      .tokin_tb				(snir_auxhdbtsched_tokin_tb	  ),
      .token_tb				(snir_auxhdbtsched_token_tb	  ),
      .Snir_Aux_out_tb			(snir_auxhdbtsched_aux_out_tb	  ),
      
      .Main2Aux_fifo_used		(auxhdbtsched_Main2Aux_fifo_used  ),
      .Main2Aux_pkt_stm			(auxhdbtsched_Main2Aux_pkt_stm	  ),
      .ptype_00_packets			(auxhdbtsched_ptype_00_packets	  ),
      .ptype_01_packets			(auxhdbtsched_ptype_01_packets	  ),
      .ptype_02_packets			(auxhdbtsched_ptype_02_packets	  ),
      .ptype_03_packets			(auxhdbtsched_ptype_03_packets	  ),
      .ptype_04_packets			(auxhdbtsched_ptype_04_packets	  ),
      .ptype_05_packets			(auxhdbtsched_ptype_05_packets	  ),
      .ptype_06_packets			(auxhdbtsched_ptype_06_packets	  ),
      .ptype_07_packets			(auxhdbtsched_ptype_07_packets	  ),
      .ptype_08_packets			(auxhdbtsched_ptype_08_packets	  ),
      .ptype_09_packets			(auxhdbtsched_ptype_09_packets	  ),
      .ptype_10_packets			(auxhdbtsched_ptype_10_packets	  ),
      .ptype_11_packets			(auxhdbtsched_ptype_11_packets	  ),
      .ptype_12_packets			(auxhdbtsched_ptype_12_packets	  ),
      .ptype_13_packets			(auxhdbtsched_ptype_13_packets	  ),
      .ptype_14_packets			(auxhdbtsched_ptype_14_packets	  ),
      .ptype_15_packets			(auxhdbtsched_ptype_15_packets	  ),
      
      .snir_auxhdbtsched_Enable		(auxhdbtsched_snir_auxhdbtsched_Enable),
      .AUX_HdmicParseEnable		(auxhdbtsched_AUX_HdmicParseEnable),
      .AUX_MsioParseEnable		(auxhdbtsched_AUX_MsioParseEnable ),
      .AUX_HlicParseEnable		(auxhdbtsched_AUX_HlicParseEnable ),
      .m2a_Data_Lsb_First		(auxhdbtsched_m2a_Data_Lsb_First  ),
      .high_pkt_num			(auxhdbtsched_high_pkt_num	  ),
      .token_dir                        (auxhdbtsched_token_dir           ),
      .low_pkt_num                      (auxhdbtsched_low_pkt_num         ),
      .auxhdbt_fifo_rd_thrshld		(auxhdbtsched_auxhdbt_fifo_rd_thrshold),
      .eth_ptp_en			(auxhdbtsched_eth_ptp_en	  ),
      .eth_ext_pad_en			(auxhdbtsched_eth_ext_pad_en	  ),
      .eth_sync_en                      (auxhdbtsched_eth_sync_en),
      .auxhdbtsched_disp_type_route_lsb	(auxhdbtsched_disp_type_route_lsb ),
      .auxhdbtsched_disp_type_route_msb	(auxhdbtsched_disp_type_route_msb ),
      .auxhdbtsched_lppf_type_route	(auxhdbtsched_lppf_type_route     ),
      .MAIN_HDI_PRIORITY		(auxhdbtsched_MAIN_HDI_PRIORITY	  ),
      .AUX_HDI_QUALITY			(auxhdbtsched_AUX_HDI_QUALITY	  ),
      .AUX_HDI_PRIORITY			(auxhdbtsched_AUX_HDI_PRIORITY	  ),
      .AUX_SID_REQUIRED			(auxhdbtsched_AUX_SID_REQUIRED	  ),
      .dauxdisp_spare_dest		(auxhdbtsched_dauxdisp_spare_dest ),
      .AUX_TOK_TYPE			(auxhdbtsched_AUX_TOK_TYPE	  ),
      .AUX_TOKEN_COUNTER		(auxhdbtsched_AUX_TOKEN_COUNTER	  ),
      .AUX_RSTRT_IDLE_CNT		(auxhdbtsched_Snir_auxhdbtsched_idle_cntr_reg_w),
      .AUX_IDLE_COUNTER			(auxhdbtsched_AUX_IDLE_COUNTER	  ),
      .AUX_ISNBS			(auxhdbtsched_AUX_ISNBS		  ),
      .AUX_PACKET_LEN			(auxhdbtsched_AUX_PACKET_LEN	  ),
      .AUX_TX_DIVR			(auxhdbtsched_AUX_TX_DIVR	  ),
      .lppf_mode			(auxhdbtsched_lppf_mode		  ),
      .msio_nibblemode			(auxhdbtsched_Msio_NibbleMode	  ),
      .msio_data_lsb_first		(auxhdbtsched_Msio_Data_Lsb_First ),
      .hdmic_nibblemode			(auxhdbtsched_Hdmic_NibbleMode	  ),
      .hdmic_data_lsb_first		(auxhdbtsched_Hdmic_Data_Lsb_First),
      .hlic_nibblemode			(auxhdbtsched_Hlic_NibbleMode	  ),
      .hlic_data_lsb_first		(auxhdbtsched_Hlic_Data_Lsb_First ),
      .A1_hdmic_id			(auxhdbtsched_A1_HDMIC_ID	  ),
      .OutPakSize			(auxhdbtsched_OutPakSize	  ),
      .packet_pam			(auxhdbtsched_packet_pam	  ),
      .packet_sid			(auxhdbtsched_packet_sid	  ),
      .packet_sid_req			(auxhdbtsched_packet_sid_req	  ),
      .packet_lsb			(auxhdbtsched_packet_lsb	  ),
      .packet_all			(auxhdbtsched_packet_all	  ),
      .gap_between_bursts		(auxhdbtsched_gap_between_bursts  ),
      .min_use_num                      (main2aux_min_use_num             ),
      .AUX_ETH_ENABLE			(auxhdbtsched_AUX_ETH_ENABLE	  ),
      .AUX_ETH_TOKENS_FULL		(auxhdbtsched_AUX_ETH_TOKENS_FULL ),
      .AUX_AYALON1_MODE			(auxhdbtsched_AUX_AYALON1_MODE	  ),
      .AUX_ETH_TOKENS_PART		(auxhdbtsched_AUX_ETH_TOKENS_PART ),
      .AUX_DQSC				(auxhdbtsched_AUX_DQSC		  ),
      .AUX_HDMIC_SID			(auxhdbtsched_AUX_HDMIC_SID	  ),
      .AUX_ETH_SID			(auxhdbtsched_AUX_ETH_SID	  ),
      .AUX_MSIO_A1_FLIP			(auxhdbtsched_AUX_MSIO_A1_FLIP	  ),
      .AUX_HLIC_A1_SHIFT		(auxhdbtsched_AUX_HLIC_A1_SHIFT	  ),
      .Hdmic_IgnoreCRC			(auxhdbtsched_Hdmic_IgnoreCRC	  ),
      .Msio_IgnoreCRC			(auxhdbtsched_Msio_IgnoreCRC	  ),
      .Hlic_IgnoreCRC			(auxhdbtsched_Hlic_IgnoreCRC	  ),
      .AUX_DQSC_CNT			(auxhdbtsched_AUX_DQSC_CNT	  ),
      .auxhdbtsched_max_p1_tok		(auxhdbtsched_max_p1_tok	  ),
      .auxhdbtsched_max_p2_tok		(auxhdbtsched_max_p2_tok	  ),
      .auxhdbtsched_max_p3_tok		(auxhdbtsched_max_p3_tok	  ),
      .P1_QUAL				(auxhdbtsched_P1_QUAL		  ),
      .P2_QUAL				(auxhdbtsched_P2_QUAL		  ),
      .P3_QUAL				(auxhdbtsched_P3_QUAL		  ),
      .AUX_NBS3_WEIGHT_1		(auxhdbtsched_AUX_NBS3_WEIGHT_1	  ),
      .AUX_NBS3_WEIGHT_5		(auxhdbtsched_AUX_NBS3_WEIGHT_5	  ),
      .AUX_NBS3_WEIGHT_F		(auxhdbtsched_AUX_NBS3_WEIGHT_F	  ),
      .AUX_NBS2_WEIGHT_7		(auxhdbtsched_AUX_NBS2_WEIGHT_7	  ),
      .AUX_NBS1_WEIGHT_3		(auxhdbtsched_AUX_NBS1_WEIGHT_3	  ),
      .AUX_NBS3_NIBB_ORDER_1		(auxhdbtsched_AUX_NBS3_NIBB_ORDER_1),
      .AUX_NBS3_NIBB_ORDER_5		(auxhdbtsched_AUX_NBS3_NIBB_ORDER_5),
      .AUX_NBS3_NIBB_ORDER_F		(auxhdbtsched_AUX_NBS3_NIBB_ORDER_F),
      .AUX_NBS2_NIBB_ORDER_7		(auxhdbtsched_AUX_NBS2_NIBB_ORDER_7),
      .AUX_NBS1_NIBB_ORDER_3		(auxhdbtsched_AUX_NBS1_NIBB_ORDER_3),
      .AUX_NBS3_EN_1			(auxhdbtsched_AUX_NBS3_EN_1	  ),
      .AUX_NBS3_EN_5			(auxhdbtsched_AUX_NBS3_EN_5	  ),
      .AUX_NBS3_EN_F			(auxhdbtsched_AUX_NBS3_EN_F	  ),
      .AUX_NBS2_EN_7			(auxhdbtsched_AUX_NBS2_EN_7	  ),
      .AUX_NBS1_EN_3			(auxhdbtsched_AUX_NBS1_EN_3	  ),
      .local_sid_array_en		(auxhdbtsched_local_sid_array_en  ),
      .packet_cnt_clear			(auxhdbtsched_ptype_00_packets_reg_w),
      .snir_auxhdbtsched_m2a_WRCK     	(WRCK       		),
      .snir_auxhdbtsched_m2a_WRSTN    	(WRSTN      		),
      .snir_auxhdbtsched_m2a_SelectWIR	(SelectWIR  		),
      .snir_auxhdbtsched_m2a_WSO        (Main2Aux_WSO        	),
      .snir_auxhdbtsched_m2a_WSI      	(Main2Aux_WSI        	),
      .snir_auxhdbtsched_m2a_UpdateWR 	(Main2Aux_UpdateWR   	),
      .snir_auxhdbtsched_m2a_ShiftWR  	(Main2Aux_ShiftWR    	),
      .snir_auxhdbtsched_m2a_CaptureWR  (Main2Aux_CaptureWR  	),  
       
      .scan_enable			(scan_enable			  ),
      .scan_mode			(scan_mode			  ),
      .clk				(tx_aux_sched_sys_clk             ),
      .reset_n				(tx_aux_sched_sys_reset_n         ),
      .clk_tx				(trn_clk		  	  ),
      .reset_tx_n			(trn_reset_n	  		  ),
      .common_clk(tx_aux_common_sys_clk),
      .common_reset_n(tx_aux_common_sys_reset_n),
      .bist_clk(bist_clk),
      .bist_reset_n(bist_reset_n)
      );

   
   
   
   


   Snir_link_lppf Snir_link_lppf_i
     (
      
      .link_lppf_tx_tokin_ready		(lppf_tx_aux_token_ready	  ),
      .link_lppf_tx_tokin_valid		(lppf_tx_aux_token_valid	  ),
      .link_lppf_tx_tokin_data		(lppf_tx_aux_token_data     ),
      
      .link_lppf_rx_tokout_ready	(lppf_rx_aux_token_ready	  ),
      .link_lppf_rx_tokout_valid	(lppf_rx_aux_token_valid	  ),
      .link_lppf_rx_tokout_data		(lppf_rx_aux_token_data		  ),
      
      .lppf_cir_in			(BC2lppf_cir			  ),
      .lppf_cir_out			(lppf2BC_cir			  ),
      .lppf_uart_in			(BC2lppf_uart			  ),
      .lppf_uart_out			(lppf2BC_uart			  ),
       
      .lppf_tx_mode			(lppf_tx_mode                     ),
      .lppf_tx_del			(lppf_tx_del                      ),
      .lppf_tx_bit			(lppf_tx_bit                      ),
      .symbol_done			(lppf_symbol_done                 ),
      .lppf_tx_active			(lppf_tx_active                   ),
      
      .lppf_rx_active			(lppf_rx_active                   ),
      .lppf_del_on			(lppf_del_on                      ),
      .lppf_bit_out			(lppf_bit_out                     ),
      .lppf_bit_sync			(lppf_bit_sync                    ),
      
      .a1_lppf_sw_rd_data		(lppf_a1_lppf_sw_rd_data	  ),
      .a1_lppf_sw_rd_status_w		(lppf_a1_lppf_sw_rd_status_w	  ),
      .a1_lppf_sw_rd_ready		(lppf_a1_lppf_sw_rd_ready	  ),
      .a1_lppf_sw_rd_used		(lppf_a1_lppf_sw_rd_used	  ),
      
      .a1_lppf_sw_wr_data		(lppf_a1_lppf_sw_wr_data	  ),
      .a1_lppf_sw_wr_data_reg_w		(lppf_a1_lppf_sw_wr_data_reg_w	  ),
      .a1_lppf_sw_wr_ready		(lppf_a1_lppf_sw_wr_ready	  ),
      .a1_lppf_sw_used			(lppf_a1_lppf_sw_used		  ),
      .a1_lppf_sw_status_w		(lppf_a1_lppf_sw_status_w	  ),
      
      .lppf_tx_req			(lppf_lppf_tx_req		  ),
      .lppf_tx_type			(lppf_lppf_tx_type		  ),
      
      .lppf_start_init_idle_req		(lppf_lppf_start_init_idle_req	  ),
      .lppf_start_init_info_req		(lppf_lppf_start_init_info_req	  ),
      .lppf_start_init_done_req		(lppf_lppf_start_init_done_req 	  ),
      .lppf_start_init_full_req		(lppf_lppf_start_init_full_req 	  ),
      .lppf_start_init_full_en		(lppf_lppf_start_init_full_en  	  ),
      .lppf_start_foll_idle_req		(lppf_lppf_start_foll_idle_req 	  ),
      .lppf_start_foll_info_req		(lppf_lppf_start_foll_info_req 	  ),
      .lppf_start_foll_full_req		(lppf_lppf_start_foll_full_req 	  ),
      .lppf_start_foll_full_en		(lppf_lppf_start_foll_full_en  	  ),
      .lppf_start_silent_req		(lppf_lppf_start_silent_req    	  ),
      .lppf_start_silent_en		(lppf_lppf_start_silent_en     	  ),
      
      .lppf_rx_descr_lock		(lppf_rx_descr_lock	  ),
      
      .lppf_link_active			(lppf_lppf_link_active		  ),
      
      .lppf_cir_uart_rx_hw_mode		(lppf_lppf_cir_uart_rx_hw_mode    ),
      .lppf_cir_uart_tx_hw_mode		(lppf_lppf_cir_uart_tx_hw_mode    ),
      .lppf_cir_uart_oversample_size	(lppf_lppf_cir_uart_oversample_size),
      .A1_mode				(lppf_snir_link_lppf_a1_mode	  ),
      .lppf_min_ipg			(lppf_LPPF_MIN_IPG                ),
      .lppf_rep_start_en		(lppf_lppf_rep_start_en           ),
      .lppf_crc_lsb_first		(lppf_lppf_crc_lsb_first          ),
      .lppf_info_rx			(lppf_lppf_info_rx                ),
      .lppf_info_data			(lppf_lppf_info_data              ),
      .lppf_silent_error		(lppf_lppf_silent_error           ),
      .lppf_idle_error			(lppf_lppf_idle_error             ),
      .lppf_del_error			(lppf_lppf_del_error              ),
      .lppf_type_error			(lppf_lppf_type_error             ),
      .lppf_data_error			(lppf_lppf_data_error             ),
      .lppf_max_data_err		(lppf_lppf_max_data_err           ),
      .lppf_crc_error			(lppf_lppf_crc_error              ),
      .lppf_clr_counters		(lppf_lppf_crc_error_reg_w        ),
      .lppf_stype_00_packets		(lppf_lppf_stype_00_packets       ),
      .lppf_stype_01_packets		(lppf_lppf_stype_01_packets       ),
      .lppf_stype_02_packets		(lppf_lppf_stype_02_packets       ),
      .lppf_stype_03_packets		(lppf_lppf_stype_03_packets       ),
      .lppf_stype_04_packets		(lppf_lppf_stype_04_packets       ),
      .lppf_stype_05_packets		(lppf_lppf_stype_05_packets       ),
      .lppf_stype_06_packets		(lppf_lppf_stype_06_packets       ),
      .lppf_stype_07_packets		(lppf_lppf_stype_07_packets       ),
      .lppf_stype_08_packets		(lppf_lppf_stype_08_packets       ),
      .lppf_stype_09_packets		(lppf_lppf_stype_09_packets       ),
      .lppf_stype_10_packets		(lppf_lppf_stype_10_packets       ),
      .lppf_stype_11_packets		(lppf_lppf_stype_11_packets       ),
      .lppf_stype_12_packets		(lppf_lppf_stype_12_packets       ),
      .lppf_stype_13_packets		(lppf_lppf_stype_13_packets       ),
      .lppf_stype_14_packets		(lppf_lppf_stype_14_packets       ),
      .lppf_stype_15_packets		(lppf_lppf_stype_15_packets       ),
      .lppf_long_packets		(lppf_lppf_long_packets           ),
      .lppf_short_packets		(lppf_lppf_short_packets          ),
      .lppf_info_rx_clr			(lppf_lppf_info_rx_reg_w          ),
      .A1_HDMI_CTRL_SID_VAL		(lppf_A1_HDMI_CTRL_SID_VAL        ),
      .lppf_max_data_size		(lppf_lppf_max_data_size          ),
      .lppf_aya1_type_err		(lppf_lppf_aya1_type_err          ),
      .lppf_aya1_type_err_clr		(lppf_lppf_aya1_type_err_reg_w    ),
      .lppf_stype_packets		(lppf_lppf_stype_packets          ),
      .lppf_stype_packets_clr		(lppf_lppf_aya1_type_err_reg_w    ),
      .lppf_stype_all			(lppf_lppf_stype_all              ),
      .lppf_stype_val			(lppf_lppf_stype_val              ),
      .lppf_start_idle_cnt_max		(lppf_lppf_start_idle_cnt_max     ),
      .lppf_start_init_idle_max		(lppf_lppf_start_init_idle_max    ),
      .lppf_start_init_info_max		(lppf_lppf_start_init_info_max    ),
      .lppf_start_init_info_data	(lppf_lppf_start_init_info_data   ),
      .lppf_start_foll_idle_max		(lppf_lppf_start_foll_idle_max    ),
      .lppf_start_foll_info_data	(lppf_lppf_start_foll_info_data   ),
      .lppf_start_init_idle_max_err	(lppf_lppf_start_init_idle_max_err),
      .lppf_start_init_info_max_err	(lppf_lppf_start_init_info_max_err),
      .lppf_start_foll_idle_max_err	(lppf_lppf_start_foll_idle_max_err),
      .lppf_start_err_clr		(lppf_lppf_status_register_0_w    ),
      .lppf_start_descr_lock_assert	(lppf_lppf_start_descr_lock_assert),
      .lppf_start_descr_lock_negate	(lppf_lppf_start_descr_lock_negate),
      .lppf_start_rx_active_assert	(lppf_lppf_start_rx_active_assert ),
      .lppf_start_rx_active_negate	(lppf_lppf_start_rx_active_negate ),
      .lppf_start_link_active_assert	(lppf_lppf_start_link_active_assert),
      .lppf_start_link_active_negate	(lppf_lppf_start_link_active_negate),
      .lppf_start_tx_stm		(lppf_lppf_start_tx_stm           ),
      .null_enable			(lppf_null_enable                 ),
      .nulldet_enable			(lppf_nulldet_enable              ),
      .hlic_sid				(lppf_HLIC_SID                    ),
      .AUX_SID_REQUIRED			(lppf_AUX_SID_REQUIRED            ),
      .LOCAL_SID_ARRAY                  (lppf_LOCAL_SID_ARRAY),
      .TYPE_ROUTE                       (lppf_TYPE_ROUTE),         
      .AUX_TOK_TYPE			(lppf_AUX_TOK_TYPE                ),
      .null_frame_num			(lppf_null_frame_num    	  ),
      .null_frame_clr			(lppf_null_frame_num_reg_w  	  ),
      .null_interrupt			(lppf_null_interrupt          	  ),
       
      .lppf_reset_n			(link_lppf_reset_n		  ),
      .tx_reset_n			(tx_aux_common_sys_reset_n	  ),
      .rx_reset_n			(rx_aux2main_sys_reset_n	  ),
      .lppf_tx_reset_n			(tx_link_lppf_sys_reset_n         ),
      .lppf_rx_reset_n			(rx_link_lppf_sys_reset_n         ),
      .lppf_clk				(link_lppf_clk   		  ),
      .lppf_tx_clk			(tx_link_lppf_sys_clk   	  ),
      .lppf_rx_clk			(rx_link_lppf_sys_clk   	  ),
      .sys_clk				(link_lppf_clk		          ), 
      .tx_sys_clk			(tx_aux_common_sys_clk		  ),
      .rx_sys_clk			(rx_aux2main_sys_clk		  ),
      .reg_sys_clk			(sys_clk          	          ), 
      .reg_sys_reset_n			(sys_reset_n     	          ),       
      .scan_mode			(scan_mode			  ),
      .scan_enable			(scan_enable			  )
      );

   
   
   

   AuxHdiStop AuxHdiStop_inst  
     ( 
      .tokin_valid                      (link_aux_tokin_valid),
      .tokin_data                       (link_aux_tokin_data),
      .tokin_ready                      (link_aux_tokin_ready),
      .tokout_valid                     (link_aux_tokin_filt_valid),
      .tokout_data                      (link_aux_tokin_filt_data),
      .tokout_ready                     (link_aux_tokin_filt_ready),
      .AUX_SID_REQUIRED                 (aux2main_sid_required),
      .scan_enable			(scan_enable),
      .Enable                           (aux_packet_enable),
      .clk                              (sys_clk),
      .reset_n                          (sys_reset_n)
      );
   
   
   
   
   DauxHdiSched #(.PRIO1_NUM(1),
		  .PRIO2_NUM(1),
		  .PRIO3_NUM(2),
		  .PRIO1_LOG(1),
		  .PRIO2_LOG(1),
		  .PRIO3_LOG(1)) DauxHdiSched_i
     (
      
      .prio1_valid			(1'b0),
      .prio1_ready			(),
      .prio1_data			({AUX_TOK_WIDTH{1'b0}}),
      
      .prio2_valid			(1'b0),
      .prio2_ready			(),
      .prio2_data			({AUX_TOK_WIDTH{1'b0}}),
      
      .prio3_valid			({link_aux_tokin_filt_valid, lppf_rx_aux_token_valid}),
      .prio3_ready			({link_aux_tokin_filt_ready, lppf_rx_aux_token_ready}),
      .prio3_data			({link_aux_tokin_filt_data,  lppf_rx_aux_token_data}),
      
      .token_valid			(link_aux2main_tokin_valid),
      .token_ready			(link_aux2main_tokin_ready),
      .token_out			(link_aux2main_tokin_data),
      
      .AUX_SID_REQUIRED		        (AuxSched_AUX_SID_REQUIRED),
      
      .scan_enable			(scan_enable),
      .clk				(rx_aux2main_sys_clk),
      .reset_n			        (rx_aux2main_sys_reset_n)
      );


   
   
   
   AuxToMainGeneralBrg AuxToMainGeneralBrg_i
     (
      
      .WRCK				(WRCK			  ),
      .WSI				(Aux2Main_WSI			  ),
      .WRSTN				(WRSTN			  ),
      .UpdateWR				(Aux2Main_UpdateWR		  ),
      .SelectWIR			(SelectWIR		  ),
      .ShiftWR				(Aux2Main_ShiftWR		  ),
      .CaptureWR			(Aux2Main_CaptureWR		  ),
      .WSO				(Aux2Main_WSO			  ),
      
      
      .tokin_valid			(link_aux2main_tokin_valid	  ),
      .tokin_ready			(link_aux2main_tokin_ready	  ),
      .tokin_data			(link_aux2main_tokin_data	  ),
      
      .token_valid			(snk_pcs_if_no_crc_tokin_valid	  	  ),
      .token_ready			(snk_pcs_if_no_crc_tokin_ready	  	  ),
      .token_out0			(snk_pcs_if_no_crc_tokin_data[MAIN_TOK_WIDTH-1:0]),
      .token_out1			(snk_pcs_if_no_crc_tokin_data[2*MAIN_TOK_WIDTH-1:MAIN_TOK_WIDTH]),
      
      .Data_Lsb_First			(aux2main_data_lsb_first	  ),
      .sid_required			(aux2main_sid_required		  ),
      .AUX_TOK_TYPE			(aux2main_AUX_TOK_TYPE		  ),
      .Eth_Enable			(Eth_Enable_Brg			  ),
      .low_pkt_num			(low_pkt_num			  ),
      .high_pkt_num			(high_pkt_num			  ),
      .aggr_id				(Main_aggr_id			  ),
      .aggr_en				(Main_aggr_en			  ),
      .aggr_type			(Main_aggr_type			  ),
      .A1_hdmic_id			(Main_A1_hdmic_id		  ),
      .A1_mode				(Main_A1_mode			  ),
      .c_timeout_val			(Main_c_timeout_val		  ),
      .c_max_pld_len			(Main_c_max_pld_len		  ),
      .aggr_in_ctl_tb			(aggr_in_ctl_tb			  ),
      .aggr_out_ctl_tb			(aggr_out_ctl_tb		  ),
      .packet_pam			(MAIN_Eth_PAM			  ),
      .packet_sid			(MAIN_Eth_SID			  ),
      .packet_prot			(MAIN_Eth_prot			  ),
      .packet_lsb			(MAIN_pkt_lsb			  ),
      .packet_all			(MAIN_pkt_all			  ),
      .eth_ext_pad_en			(MAIN_eth_ext_pad_en		  ),
      .token_dir			(MAIN_token_dir			  ),
      .tokin_tb				(a2m_gen_brg_tokin_tb		  ),
      .token_tb				(a2m_gen_brg_token_tb		  ),
      .scan_enable			(scan_enable			  ),
      .scan_mode			(scan_mode			  ),
      .clk				(rx_aux2main_sys_clk		  ),
      .reset_n				(rx_aux2main_sys_reset_n	  ),
      .bist_clk                         (bist_clk),
      .bist_reset_n                     (bist_reset_n) 
      );
   

   
   
   
   snk_pcs_if #(.SINGLE_DSP_MODE(1), .ADDR_WIDTH(12)) snk_pcs_if_i
     (
      .ptype_all_crc_num(snk_pcs_ptype_all_crc_num),
      .clr_crc_all_counter(snk_pcs_ptype_all_crc_num_reg_w),      
      
      .snk_pcs_if_ls(snk_pcs_if_ls),  
      .snk_pcs_if_ds(snk_pcs_if_ds),
      .snk_pcs_if_sd(snk_pcs_if_sd),
      
      .pcs_write_data(link_main_tokin_data),
      .pcs_write_command(link_main_tokin_valid),
      .pcs2_write_data({2*MAIN_TOK_WIDTH{1'b0}}),
      .pcs2_write_command(1'b0),
      
      .aux_tokoutrdy(snk_pcs_if_no_crc_tokin_ready),
      .aux_tokout(snk_pcs_if_no_crc_tokin_data),
      .aux_tokoutvld(snk_pcs_if_no_crc_tokin_valid),
      
      .tok_fixRD_out0(link_prot_pcs_if_token_data[MAIN_TOK_WIDTH-1:0]),
      .tok_fixRD_out1(link_prot_pcs_if_token_data[2*MAIN_TOK_WIDTH-1:MAIN_TOK_WIDTH]),
      .tok_fixRD_outvld(link_prot_pcs_if_token_valid),
      .tok_fixRD_outrdy(link_prot_pcs_if_token_ready),
      
      .tok_minRD_out0(link_unprot_pcs_if_token_data[MAIN_TOK_WIDTH-1:0]),
      .tok_minRD_out1(link_unprot_pcs_if_token_data[2*MAIN_TOK_WIDTH-1:MAIN_TOK_WIDTH]),
      .tok_minRD_outvld(link_unprot_pcs_if_token_valid),
      .tok_minRD_outrdy(link_unprot_pcs_if_token_ready),
      
      .rtrs_token_valid(snk_pcs_retr_tokout_valid),
      .rtrs_token_ready(snk_pcs_retr_tokout_ready),
      .rtrs_token_out(snk_pcs_retr_tokout_data),
      .ret_req_clk(snk_pcs_crc_sys_clk),
      .ret_req_reset_n(snk_pcs_crc_sys_reset_n),
      
      .fix_out_retr_ready(pcs_retr_req_pre),
      .fix_out_retr_cmd(pcs_retr_req_rdy), 
      .fix_out_retr_data(pcs_retr_pid_pre),
      .min_out_retr_ready(pcs_retr_req_MinRD),
      .min_out_retr_cmd(pcs_retr_req_rdy_MinRD), 
      .min_out_retr_data(pcs_retr_pid_MinRD),
      
      .eeh_rtr_valid(),
      .eeh_rtr_ready(1'b0),
      .eeh_rtr_data(),
      
      .Retransmission_Pkt_Gen_En(snk_pcs_c_snk_pcs_retr_pkt_gen_en),
      .Retransmission_Pkt_Gen_prot(snk_pcs_c_snk_pcs_retr_prot),
      .RETRANS_LSB_FIRST(snk_pcs_c_snk_pcs_retr_lsb_first),
      .RETRANS_HLIC_PTYPE(snk_pcs_HLIC_PTYPE),      
      
      .Spec3Mode(snk_pcs_c_snk_pcs_spec3_mode),
      .HeaderCrc(snk_pcs_c_snk_pcs_header_crc),
      
      .Remove_Uprotected(snk_pcs_Remove_Uprotected),
      .MainRtrDet_en(snk_pcs_MainRtrDet_en),
      .MainRtrDet2_en(snk_pcs_MainRtrDet2_en),
      .pamconv_bypass(snk_pcs_c_snk_pcs_pamconv_bypass),
      .ret_enable(snk_pcs_c_snk_pcs_ret_enable),
      .ret_enable_MinRD(snk_pcs_c_snk_pcs_ret_enable_MinRD),
      .packetdelay(snk_pcs_c_snk_pcs_packetdelay),
      .packetdelay_MinRD(snk_pcs_packetdelay_MinRD),
      .enable_pam4crc(snk_pcs_c_snk_pcs_enable_pam4crc),
      .enable_pam8crc(snk_pcs_c_snk_pcs_enable_pam8crc),
      .enable_pam16crc(snk_pcs_c_snk_pcs_enable_pam16crc),
      .disable_gap_req(snk_pcs_c_snk_pcs_disable_gap_req),
      .maxrts_pam(snk_pcs_c_snk_pcs_maxrts_pam),
      .gap_pak_size(snk_pcs_c_snk_pcs_gap_pak_size),
      .pam_bak_max_size(snk_pcs_c_snk_pcs_pam_bak_max_size),
      .cycles_for_next_request(snk_pcs_c_snk_pcs_cycles_for_next_request),
      .max_requests_num(snk_pcs_c_snk_pcs_max_requests_num),
      .max_requests_num_MinRD(snk_pcs_c_snk_pcs_max_requests_num_MinRD),
      .idle_delay(snk_pcs_c_snk_pcs_idle_delay),
      .pam_bucket_disable(snk_pcs_c_pam_bucket_disable),
      .RemoveLastExt(snk_pcs_snk_RemoveLastExt),
      .RemoveZeroExt(snk_pcs_snk_RemoveZeroExt),
      .EnableVariationMode(snk_pcs_snk_EnableVariationMode),
      .LastExtShift(snk_pcs_snk_LastExtShift),
      .WriteGoodHeader(snk_pcs_WriteGoodHeader),
      .c_FixMinRdDiv_type(snk_pcs_snk_1_cfg_main_rd_type),
      .c_FixMinRdDiv_future(snk_pcs_snk_1_cfg_ext_rd_type),
      .c_FixMinRdDiv2_type((snk_pcs_snk_2_cfg_main_rd_type)),
      .c_FixMinRdDiv2_future(snk_pcs_snk_2_cfg_ext_rd_type),
      .DSP_Path_0_En(snk_pcs_DSP_Path_0_En),
      .DSP_Path_1_En(snk_pcs_DSP_Path_1_En),
      .PacketCombiner_wait_delay_fix(snk_pcs_snk_1_tokin_max_wait),
      .PacketCombiner_wait_delay_min(snk_pcs_snk_2_tokin_max_wait),


      .PacketCombiner_fix_tok0_en(snk_pcs_snk_1_PktCombine_token0_en),
      .PacketCombiner_fix_tok1_en(snk_pcs_snk_1_PktCombine_token1_en),
      .PacketCombiner_min_tok0_en(snk_pcs_snk_2_PktCombine_token0_en),
      .PacketCombiner_min_tok1_en(snk_pcs_snk_2_PktCombine_token1_en),
      
      .ptype_pams(snk_pcs_c_snk_pcs_ptype_pams),
      .qual_11_pams(snk_pcs_c_snk_pcs_qual_11_pams),
      .qual_10_pams(snk_pcs_c_snk_pcs_qual_10_pams),
      .qual_01_pams(snk_pcs_c_snk_pcs_qual_01_pams),
      
      .stat_clear(snk_pcs_RX_snk_pcs_if_stat_clear_reg_w),
      .num_goodret(snk_pcs_s_snk_pcs_num_goodret),
      .num_badret_crc(snk_pcs_s_snk_pcs_num_badret_crc),
      .num_badret_nonreq(snk_pcs_s_snk_pcs_num_badret_nonreq),
      .num_protected(snk_pcs_s_snk_pcs_num_protected),
      .num_rtsreq_crc(snk_pcs_s_snk_pcs_num_rtsreq_crc),
      .num_rtsreq_gap(snk_pcs_s_snk_pcs_num_rtsreq_gap),
      .num_rtsreq_non_first(snk_pcs_s_snk_pcs_num_rtsreq_non_first),
      .num_buck_blk(snk_pcs_s_snk_pcs_num_buck_blk),
      .num_too_late(snk_pcs_s_snk_pcs_num_too_late),
      .num_too_long(snk_pcs_s_snk_pcs_num_too_long),
      .num_MinRD_goodret(snk_pcs_s_snk_pcs_num_MinRD_goodret),
      .num_MinRD_badret_crc(snk_pcs_s_snk_pcs_num_MinRD_badret_crc),
      .num_MinRD_badret_nonreq(snk_pcs_s_snk_pcs_num_MinRD_badret_nonreq),
      .num_MinRD_protected(snk_pcs_s_snk_pcs_num_MinRD_protected),
      .num_MinRD_rtsreq_crc(snk_pcs_s_snk_pcs_num_MinRD_rtsreq_crc),
      .num_MinRD_rtsreq_gap(snk_pcs_s_snk_pcs_num_MinRD_rtsreq_gap),
      .num_MinRD_rtsreq_non_first(snk_pcs_s_snk_pcs_num_MinRD_rtsreq_non_first),
      .num_MinRD_buck_blk(snk_pcs_s_snk_pcs_num_MinRD_buck_blk),
      .num_MinRD_too_late(snk_pcs_s_snk_pcs_num_MinRD_too_late),
      .num_MinRD_too_long(snk_pcs_s_snk_pcs_num_MinRD_too_long),
      .stat_mem_protected_MinRD(snk_pcs_s_snk_pcs_stat_mem_protected_MinRD_int),
      .num_unprotected(snk_pcs_s_snk_pcs_num_unprotected),
      .num_bad_unprotected(snk_pcs_s_snk_pcs_num_bad_unprotected),
      .stat_mem_protected(snk_pcs_s_snk_pcs_stat_mem_protected_int),
      .stat_mem_unprotected(snk_pcs_s_snk_pcs_stat_mem_unprotected_int),
      
      .MainNullDet_prot_enable(snk_pcs_s_snk_pcs_MainNullDet_prot_enable),
      .MainNullDet_upro_enable(snk_pcs_s_snk_pcs_MainNullDet_upro_enable),
      .MainNullDet_prot_null_frame_num(snk_pcs_s_snk_pcs_MainNullDet_prot_null_frame_num),
      .MainNullDet_upro_null_frame_num(snk_pcs_s_snk_pcs_MainNullDet_upro_null_frame_num),
      .MainNullDet_prot_null_frame_clr(snk_pcs_RX_null_prot_status_reg_w),
      .MainNullDet_upro_null_frame_clr(snk_pcs_RX_null_upro_status_reg_w),
      
      .header_crc_clear(snk_pcs_RX_crc_err_cnt_reg_w),
      .header_crc_err_cnt(snk_pcs_s_snk_pcs_header_crc_err_cnt),
      .header2_crc_clear(snk_pcs_RX_crc_err_cnt_reg_2_w),
      .header2_crc_err_cnt(snk_pcs_s_snk_pcs_header_crc_err_cnt_2),
      
      .Drift_from_cpu(snk_pcs_Drift_from_cpu),
      .Cpu_Drift(snk_pcs_Cpu_Drift),
      .drfWin(snk_pcs_drfWin),
      .Drift_LsbFirst(snk_pcs_Drift_LsbFirst),
      .DriftAddEn(snk_pcs_DriftAddEn),
      .DriftA1Mode(snk_pcs_DriftA1Mode),
      .DriftSID(snk_pcs_DriftSID),
      .Drift_ClkPkts_mon_enable(snk_pcs_Drift_ClkPkts_mon_enable),
      .Drift_ClkPkts_mon_sid(snk_pcs_Drift_ClkPkts_mon_sid),
      .Drift_ClkPkts_mon_clk_sub_type(snk_pcs_Drift_ClkPkts_mon_clk_sub_type),
      
      .Drift_prot_ClkPkts_mon_trapped_data(snk_pcs_Drift_prot_ClkPkts_mon_trapped_data),
      .Drift_upro_ClkPkts_mon_trapped_data(snk_pcs_Drift_upro_ClkPkts_mon_trapped_data),
      .snk_pcs_if_driftest(snk_pcs_snk_pcs_if_driftest),
      
      .clr_pre_counters(s_snk_pcs_clr_pre_counters),
      .clr2_pre_counters(s_snk_pcs_clr_2_pre_counters),
      .clr_pre_crc_counters(s_snk_pcs_clr_pre_crc_counters),
      .clr2_pre_crc_counters(s_snk_pcs_clr2_pre_crc_counters),
      .ptype_pre_00_crc_num(snk_pcs_s_snk_pcs_ptype_pre_00_crc_num),
      .ptype_pre_01_crc_num(snk_pcs_s_snk_pcs_ptype_pre_01_crc_num),
      .ptype_pre_02_crc_num(snk_pcs_s_snk_pcs_ptype_pre_02_crc_num),
      .ptype_pre_03_crc_num(snk_pcs_s_snk_pcs_ptype_pre_03_crc_num),
      .ptype_pre_04_crc_num(snk_pcs_s_snk_pcs_ptype_pre_04_crc_num),
      .ptype_pre_05_crc_num(snk_pcs_s_snk_pcs_ptype_pre_05_crc_num),
      .ptype_pre_06_crc_num(snk_pcs_s_snk_pcs_ptype_pre_06_crc_num),
      .ptype_pre_07_crc_num(snk_pcs_s_snk_pcs_ptype_pre_07_crc_num),
      .ptype_pre_08_crc_num(snk_pcs_s_snk_pcs_ptype_pre_08_crc_num),
      .ptype_pre_09_crc_num(snk_pcs_s_snk_pcs_ptype_pre_09_crc_num),
      .ptype_pre_10_crc_num(snk_pcs_s_snk_pcs_ptype_pre_10_crc_num),
      .ptype_pre_11_crc_num(snk_pcs_s_snk_pcs_ptype_pre_11_crc_num),
      .ptype_pre_12_crc_num(snk_pcs_s_snk_pcs_ptype_pre_12_crc_num),
      .ptype_pre_13_crc_num(snk_pcs_s_snk_pcs_ptype_pre_13_crc_num),
      .ptype_pre_14_crc_num(snk_pcs_s_snk_pcs_ptype_pre_14_crc_num),
      .ptype_pre_15_crc_num(snk_pcs_s_snk_pcs_ptype_pre_15_crc_num),
      .ptype_pre_16_crc_num(snk_pcs_s_snk_pcs_ptype_pre_16_crc_num),
      .ptype_pre_17_crc_num(snk_pcs_s_snk_pcs_ptype_pre_17_crc_num),
      .ptype_pre_18_crc_num(snk_pcs_s_snk_pcs_ptype_pre_18_crc_num),
      .ptype_pre_19_crc_num(snk_pcs_s_snk_pcs_ptype_pre_19_crc_num),
      .ptype_pre_20_crc_num(snk_pcs_s_snk_pcs_ptype_pre_20_crc_num),
      .ptype_pre_21_crc_num(snk_pcs_s_snk_pcs_ptype_pre_21_crc_num),
      .ptype_pre_22_crc_num(snk_pcs_s_snk_pcs_ptype_pre_22_crc_num),
      .ptype_pre_23_crc_num(snk_pcs_s_snk_pcs_ptype_pre_23_crc_num),
      .ptype_pre_24_crc_num(snk_pcs_s_snk_pcs_ptype_pre_24_crc_num),
      .ptype_pre_25_crc_num(snk_pcs_s_snk_pcs_ptype_pre_25_crc_num),
      .ptype_pre_26_crc_num(snk_pcs_s_snk_pcs_ptype_pre_26_crc_num),
      .ptype_pre_27_crc_num(snk_pcs_s_snk_pcs_ptype_pre_27_crc_num),
      .ptype_pre_28_crc_num(snk_pcs_s_snk_pcs_ptype_pre_28_crc_num),
      .ptype_pre_29_crc_num(snk_pcs_s_snk_pcs_ptype_pre_29_crc_num),
      .ptype_pre_30_crc_num(snk_pcs_s_snk_pcs_ptype_pre_30_crc_num),
      .ptype_pre_31_crc_num(snk_pcs_s_snk_pcs_ptype_pre_31_crc_num),
      .ptype2_pre_00_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_00_crc_num),
      .ptype2_pre_01_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_01_crc_num),
      .ptype2_pre_02_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_02_crc_num),
      .ptype2_pre_03_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_03_crc_num),
      .ptype2_pre_04_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_04_crc_num),
      .ptype2_pre_05_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_05_crc_num),
      .ptype2_pre_06_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_06_crc_num),
      .ptype2_pre_07_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_07_crc_num),
      .ptype2_pre_08_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_08_crc_num),
      .ptype2_pre_09_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_09_crc_num),
      .ptype2_pre_10_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_10_crc_num),
      .ptype2_pre_11_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_11_crc_num),
      .ptype2_pre_12_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_12_crc_num),
      .ptype2_pre_13_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_13_crc_num),
      .ptype2_pre_14_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_14_crc_num),
      .ptype2_pre_15_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_15_crc_num),
      .ptype2_pre_16_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_16_crc_num),
      .ptype2_pre_17_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_17_crc_num),
      .ptype2_pre_18_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_18_crc_num),
      .ptype2_pre_19_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_19_crc_num),
      .ptype2_pre_20_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_20_crc_num),
      .ptype2_pre_21_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_21_crc_num),
      .ptype2_pre_22_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_22_crc_num),
      .ptype2_pre_23_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_23_crc_num),
      .ptype2_pre_24_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_24_crc_num),
      .ptype2_pre_25_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_25_crc_num),
      .ptype2_pre_26_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_26_crc_num),
      .ptype2_pre_27_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_27_crc_num),
      .ptype2_pre_28_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_28_crc_num),
      .ptype2_pre_29_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_29_crc_num),
      .ptype2_pre_30_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_30_crc_num),
      .ptype2_pre_31_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_31_crc_num),
      .ptype_pre_00_packets(snk_pcs_s_snk_pcs_ptype_pre_00_packets),
      .ptype_pre_01_packets(snk_pcs_s_snk_pcs_ptype_pre_01_packets),
      .ptype_pre_02_packets(snk_pcs_s_snk_pcs_ptype_pre_02_packets),
      .ptype_pre_03_packets(snk_pcs_s_snk_pcs_ptype_pre_03_packets),
      .ptype_pre_04_packets(snk_pcs_s_snk_pcs_ptype_pre_04_packets),
      .ptype_pre_05_packets(snk_pcs_s_snk_pcs_ptype_pre_05_packets),
      .ptype_pre_06_packets(snk_pcs_s_snk_pcs_ptype_pre_06_packets),
      .ptype_pre_07_packets(snk_pcs_s_snk_pcs_ptype_pre_07_packets),
      .ptype_pre_08_packets(snk_pcs_s_snk_pcs_ptype_pre_08_packets),
      .ptype_pre_09_packets(snk_pcs_s_snk_pcs_ptype_pre_09_packets),
      .ptype_pre_10_packets(snk_pcs_s_snk_pcs_ptype_pre_10_packets),
      .ptype_pre_11_packets(snk_pcs_s_snk_pcs_ptype_pre_11_packets),
      .ptype_pre_12_packets(snk_pcs_s_snk_pcs_ptype_pre_12_packets),
      .ptype_pre_13_packets(snk_pcs_s_snk_pcs_ptype_pre_13_packets),
      .ptype_pre_14_packets(snk_pcs_s_snk_pcs_ptype_pre_14_packets),
      .ptype_pre_15_packets(snk_pcs_s_snk_pcs_ptype_pre_15_packets),
      .ptype_pre_16_packets(snk_pcs_s_snk_pcs_ptype_pre_16_packets),
      .ptype_pre_17_packets(snk_pcs_s_snk_pcs_ptype_pre_17_packets),
      .ptype_pre_18_packets(snk_pcs_s_snk_pcs_ptype_pre_18_packets),
      .ptype_pre_19_packets(snk_pcs_s_snk_pcs_ptype_pre_19_packets),
      .ptype_pre_20_packets(snk_pcs_s_snk_pcs_ptype_pre_20_packets),
      .ptype_pre_21_packets(snk_pcs_s_snk_pcs_ptype_pre_21_packets),
      .ptype_pre_22_packets(snk_pcs_s_snk_pcs_ptype_pre_22_packets),
      .ptype_pre_23_packets(snk_pcs_s_snk_pcs_ptype_pre_23_packets),
      .ptype_pre_24_packets(snk_pcs_s_snk_pcs_ptype_pre_24_packets),
      .ptype_pre_25_packets(snk_pcs_s_snk_pcs_ptype_pre_25_packets),
      .ptype_pre_26_packets(snk_pcs_s_snk_pcs_ptype_pre_26_packets),
      .ptype_pre_27_packets(snk_pcs_s_snk_pcs_ptype_pre_27_packets),
      .ptype_pre_28_packets(snk_pcs_s_snk_pcs_ptype_pre_28_packets),
      .ptype_pre_29_packets(snk_pcs_s_snk_pcs_ptype_pre_29_packets),
      .ptype_pre_30_packets(snk_pcs_s_snk_pcs_ptype_pre_30_packets),
      .ptype_pre_31_packets(snk_pcs_s_snk_pcs_ptype_pre_31_packets),
      .ptype_2_pre_00_packets(snk_pcs_s_snk_pcs_ptype_2_pre_00_packets),
      .ptype_2_pre_01_packets(snk_pcs_s_snk_pcs_ptype_2_pre_01_packets),
      .ptype_2_pre_02_packets(snk_pcs_s_snk_pcs_ptype_2_pre_02_packets),
      .ptype_2_pre_03_packets(snk_pcs_s_snk_pcs_ptype_2_pre_03_packets),
      .ptype_2_pre_04_packets(snk_pcs_s_snk_pcs_ptype_2_pre_04_packets),
      .ptype_2_pre_05_packets(snk_pcs_s_snk_pcs_ptype_2_pre_05_packets),
      .ptype_2_pre_06_packets(snk_pcs_s_snk_pcs_ptype_2_pre_06_packets),
      .ptype_2_pre_07_packets(snk_pcs_s_snk_pcs_ptype_2_pre_07_packets),
      .ptype_2_pre_08_packets(snk_pcs_s_snk_pcs_ptype_2_pre_08_packets),
      .ptype_2_pre_09_packets(snk_pcs_s_snk_pcs_ptype_2_pre_09_packets),
      .ptype_2_pre_10_packets(snk_pcs_s_snk_pcs_ptype_2_pre_10_packets),
      .ptype_2_pre_11_packets(snk_pcs_s_snk_pcs_ptype_2_pre_11_packets),
      .ptype_2_pre_12_packets(snk_pcs_s_snk_pcs_ptype_2_pre_12_packets),
      .ptype_2_pre_13_packets(snk_pcs_s_snk_pcs_ptype_2_pre_13_packets),
      .ptype_2_pre_14_packets(snk_pcs_s_snk_pcs_ptype_2_pre_14_packets),
      .ptype_2_pre_15_packets(snk_pcs_s_snk_pcs_ptype_2_pre_15_packets),
      .ptype_2_pre_16_packets(snk_pcs_s_snk_pcs_ptype_2_pre_16_packets),
      .ptype_2_pre_17_packets(snk_pcs_s_snk_pcs_ptype_2_pre_17_packets),
      .ptype_2_pre_18_packets(snk_pcs_s_snk_pcs_ptype_2_pre_18_packets),
      .ptype_2_pre_19_packets(snk_pcs_s_snk_pcs_ptype_2_pre_19_packets),
      .ptype_2_pre_20_packets(snk_pcs_s_snk_pcs_ptype_2_pre_20_packets),
      .ptype_2_pre_21_packets(snk_pcs_s_snk_pcs_ptype_2_pre_21_packets),
      .ptype_2_pre_22_packets(snk_pcs_s_snk_pcs_ptype_2_pre_22_packets),
      .ptype_2_pre_23_packets(snk_pcs_s_snk_pcs_ptype_2_pre_23_packets),
      .ptype_2_pre_24_packets(snk_pcs_s_snk_pcs_ptype_2_pre_24_packets),
      .ptype_2_pre_25_packets(snk_pcs_s_snk_pcs_ptype_2_pre_25_packets),
      .ptype_2_pre_26_packets(snk_pcs_s_snk_pcs_ptype_2_pre_26_packets),
      .ptype_2_pre_27_packets(snk_pcs_s_snk_pcs_ptype_2_pre_27_packets),
      .ptype_2_pre_28_packets(snk_pcs_s_snk_pcs_ptype_2_pre_28_packets),
      .ptype_2_pre_29_packets(snk_pcs_s_snk_pcs_ptype_2_pre_29_packets),
      .ptype_2_pre_30_packets(snk_pcs_s_snk_pcs_ptype_2_pre_30_packets),
      .ptype_2_pre_31_packets(snk_pcs_s_snk_pcs_ptype_2_pre_31_packets),
      
      .clr_counters(s_snk_pcs_clr_counters),
      .clr_crc_counters(s_snk_pcs_clr_crc_counters),
      .ptype_00_crc_num(snk_pcs_s_snk_pcs_ptype_00_crc_num),
      .ptype_01_crc_num(snk_pcs_s_snk_pcs_ptype_01_crc_num),
      .ptype_02_crc_num(snk_pcs_s_snk_pcs_ptype_02_crc_num),
      .ptype_03_crc_num(snk_pcs_s_snk_pcs_ptype_03_crc_num),
      .ptype_04_crc_num(snk_pcs_s_snk_pcs_ptype_04_crc_num),
      .ptype_05_crc_num(snk_pcs_s_snk_pcs_ptype_05_crc_num),
      .ptype_06_crc_num(snk_pcs_s_snk_pcs_ptype_06_crc_num),
      .ptype_07_crc_num(snk_pcs_s_snk_pcs_ptype_07_crc_num),
      .ptype_08_crc_num(snk_pcs_s_snk_pcs_ptype_08_crc_num),
      .ptype_09_crc_num(snk_pcs_s_snk_pcs_ptype_09_crc_num),
      .ptype_10_crc_num(snk_pcs_s_snk_pcs_ptype_10_crc_num),
      .ptype_11_crc_num(snk_pcs_s_snk_pcs_ptype_11_crc_num),
      .ptype_12_crc_num(snk_pcs_s_snk_pcs_ptype_12_crc_num),
      .ptype_13_crc_num(snk_pcs_s_snk_pcs_ptype_13_crc_num),
      .ptype_14_crc_num(snk_pcs_s_snk_pcs_ptype_14_crc_num),
      .ptype_15_crc_num(snk_pcs_s_snk_pcs_ptype_15_crc_num),
      .ptype_16_crc_num(snk_pcs_s_snk_pcs_ptype_16_crc_num),
      .ptype_17_crc_num(snk_pcs_s_snk_pcs_ptype_17_crc_num),
      .ptype_18_crc_num(snk_pcs_s_snk_pcs_ptype_18_crc_num),
      .ptype_19_crc_num(snk_pcs_s_snk_pcs_ptype_19_crc_num),
      .ptype_20_crc_num(snk_pcs_s_snk_pcs_ptype_20_crc_num),
      .ptype_21_crc_num(snk_pcs_s_snk_pcs_ptype_21_crc_num),
      .ptype_22_crc_num(snk_pcs_s_snk_pcs_ptype_22_crc_num),
      .ptype_23_crc_num(snk_pcs_s_snk_pcs_ptype_23_crc_num),
      .ptype_24_crc_num(snk_pcs_s_snk_pcs_ptype_24_crc_num),
      .ptype_25_crc_num(snk_pcs_s_snk_pcs_ptype_25_crc_num),
      .ptype_26_crc_num(snk_pcs_s_snk_pcs_ptype_26_crc_num),
      .ptype_27_crc_num(snk_pcs_s_snk_pcs_ptype_27_crc_num),
      .ptype_28_crc_num(snk_pcs_s_snk_pcs_ptype_28_crc_num),
      .ptype_29_crc_num(snk_pcs_s_snk_pcs_ptype_29_crc_num),
      .ptype_30_crc_num(snk_pcs_s_snk_pcs_ptype_30_crc_num),
      .ptype_31_crc_num(snk_pcs_s_snk_pcs_ptype_31_crc_num),
      .ptype_00_packets(snk_pcs_s_snk_pcs_ptype_00_packets),
      .ptype_01_packets(snk_pcs_s_snk_pcs_ptype_01_packets),
      .ptype_02_packets(snk_pcs_s_snk_pcs_ptype_02_packets),
      .ptype_03_packets(snk_pcs_s_snk_pcs_ptype_03_packets),
      .ptype_04_packets(snk_pcs_s_snk_pcs_ptype_04_packets),
      .ptype_05_packets(snk_pcs_s_snk_pcs_ptype_05_packets),
      .ptype_06_packets(snk_pcs_s_snk_pcs_ptype_06_packets),
      .ptype_07_packets(snk_pcs_s_snk_pcs_ptype_07_packets),
      .ptype_08_packets(snk_pcs_s_snk_pcs_ptype_08_packets),
      .ptype_09_packets(snk_pcs_s_snk_pcs_ptype_09_packets),
      .ptype_10_packets(snk_pcs_s_snk_pcs_ptype_10_packets),
      .ptype_11_packets(snk_pcs_s_snk_pcs_ptype_11_packets),
      .ptype_12_packets(snk_pcs_s_snk_pcs_ptype_12_packets),
      .ptype_13_packets(snk_pcs_s_snk_pcs_ptype_13_packets),
      .ptype_14_packets(snk_pcs_s_snk_pcs_ptype_14_packets),
      .ptype_15_packets(snk_pcs_s_snk_pcs_ptype_15_packets),
      .ptype_16_packets(snk_pcs_s_snk_pcs_ptype_16_packets),
      .ptype_17_packets(snk_pcs_s_snk_pcs_ptype_17_packets),
      .ptype_18_packets(snk_pcs_s_snk_pcs_ptype_18_packets),
      .ptype_19_packets(snk_pcs_s_snk_pcs_ptype_19_packets),
      .ptype_20_packets(snk_pcs_s_snk_pcs_ptype_20_packets),
      .ptype_21_packets(snk_pcs_s_snk_pcs_ptype_21_packets),
      .ptype_22_packets(snk_pcs_s_snk_pcs_ptype_22_packets),
      .ptype_23_packets(snk_pcs_s_snk_pcs_ptype_23_packets),
      .ptype_24_packets(snk_pcs_s_snk_pcs_ptype_24_packets),
      .ptype_25_packets(snk_pcs_s_snk_pcs_ptype_25_packets),
      .ptype_26_packets(snk_pcs_s_snk_pcs_ptype_26_packets),
      .ptype_27_packets(snk_pcs_s_snk_pcs_ptype_27_packets),
      .ptype_28_packets(snk_pcs_s_snk_pcs_ptype_28_packets),
      .ptype_29_packets(snk_pcs_s_snk_pcs_ptype_29_packets),
      .ptype_30_packets(snk_pcs_s_snk_pcs_ptype_30_packets),
      .ptype_31_packets(snk_pcs_s_snk_pcs_ptype_31_packets),
      
      .snk_pcs_if_mic(snk_pcs_if_mic),
      .snk_pcs_if_chain_sel(snk_pcs_snk_pcs_if_chain_sel),
      
      .WRCK(WRCK),
      .CaptureWR(snkpcs_CaptureWR),
      .SelectWIR(SelectWIR),
      .ShiftWR(snkpcs_ShiftWR),
      .UpdateWR(snkpcs_UpdateWR),
      .WRSTN(WRSTN),
      .WSI(snkpcs_WSI),
      .WSO(snkpcs_WSO),  
      .bist_clk(bist_clk),
      .bist_reset_n(bist_reset_n),
      
      .scan_mode(scan_mode),
      .scan_enable(scan_enable),
      .rcv_clk(snk_pcs_if_rcv_clk),
      .rcv_reset_n(snk_pcs_if_rcv_reset_n),
      .rcv2_clk(1'b0),
      .rcv2_reset_n(1'b0),
      .clk_snk_pcs_crc(snk_pcs_crc_sys_clk),
      .snk_pcs_crc_reset_n(snk_pcs_crc_sys_reset_n),
      .clk_snk_pcs_crc2(snk_pcs_crc2_sys_clk),
      .snk_pcs_crc2_reset_n(snk_pcs_crc2_sys_reset_n),
      .clk_pam_convertor_up(snk_pcs_pam_conv_sys_clk),
      .pam_convertor_up_reset_n(snk_pcs_pam_conv_sys_reset_n),
      .clk_pam_convertor_up2(snk_pcs_pam_conv2_sys_clk),
      .pam_convertor_up2_reset_n(snk_pcs_pam_conv2_sys_reset_n),
      .clk_snk_ret_buffer(snk_pcs_retr_buff_sys_clk),
      .snk_ret_buffer_reset_n(snk_pcs_retr_buff_sys_reset_n),
      .clk_upro_buffer(snk_pcs_upro_buff_sys_clk),
      .upro_buffer_reset_n(snk_pcs_upro_buff_sys_reset_n),
      .clk(snk_pcs_if_sys_clk),
      .reset_n(snk_pcs_if_sys_reset_n)
      );

   assign snk_pcs_pak_buf_tb0                        = snk_pcs_if_mic;
   assign snk_pcs_if_ls                              = snk_pcs_snk_pcs_if_ls[3:0];
   assign snk_pcs_if_ds                              = snk_pcs_snk_pcs_if_ds[3:0];
   assign snk_pcs_if_sd                              = snk_pcs_snk_pcs_if_sd[3:0];
   assign snk_pcs_s_snk_pcs_stat_mem_protected_MinRD = {2'h0, snk_pcs_s_snk_pcs_stat_mem_protected_MinRD_int};
   assign snk_pcs_s_snk_pcs_stat_mem_unprotected     = {2'h0, snk_pcs_s_snk_pcs_stat_mem_unprotected_int};
   assign snk_pcs_s_snk_pcs_stat_mem_protected       = {2'h0, snk_pcs_s_snk_pcs_stat_mem_protected_int};
   
   
   
   
   
   MainDispatcher # (
		     .NUM_INP(1), 
		     .LOG_INP(1),
		     .NUM_OUT(2), 
		     .LOG_OUT(1))  unprot_dispatcher_i
     (
      
      .tokin_valid	(link_unprot_pcs_if_token_valid),
      .tokin_ready	(link_unprot_pcs_if_token_ready),
      .tokin_data	(link_unprot_pcs_if_token_data), 
      
      .tokout_valid	({link_bc_rx_sched_token_valid_p3, link_bc_rx_sched_token_valid_p1}),
      .tokout_ready	({link_bc_rx_sched_token_ready_p3, link_bc_rx_sched_token_ready_p1}),
      .tokout_data	({link_bc_rx_sched_token_data_p3, link_bc_rx_sched_token_data_p1}),
      
      .local_sid_array  (c_unprot_disp_local_sid),
      .spare_sid_array  ({256{1'b0}}),
      .trash_sid_array  ({256{1'b0}}),
      .hdi_dest	        (1'b0),
      
      .type_route	(c_unprot_disp_type_route),
      .spare_route	({32{1'b0}}),
      .force_local_type ({32{1'b0}}),
      .clk_route	({16{1'b0}}),
      .clk_sp_route	({16{1'b0}}),
      
      .scan_enable	(scan_enable),
      .clk		(ingress_sys_clk),
      .reset_n	        (ingress_sys_reset_n)
      );


   
   
   
   MainSched # (
		.PRIO1_NUM(2),
		.PRIO2_NUM(1),
		.PRIO3_NUM(2),
		.PRIO1_LOG(1),
		.PRIO2_LOG(1),
		.PRIO3_LOG(1))  bc_rx_scheduler_i
     (
      
      .prio1_valid 			({link_bc_rx_sched_token_valid_p1, link_lb_disp_tokout_valid}),
      .prio1_ready 			({link_bc_rx_sched_token_ready_p1, link_lb_disp_tokout_ready}),
      .prio1_data  			({link_bc_rx_sched_token_data_p1,  link_lb_disp_tokout_data}),
      
      .prio2_valid 			(1'b0),
      .prio2_ready 			(),
      .prio2_data  			({2*MAIN_TOK_WIDTH{1'b0}}),
      
      .prio3_valid 			({link_bc_rx_sched_token_valid_p3, link_prot_pcs_if_token_valid}),
      .prio3_ready 			({link_bc_rx_sched_token_ready_p3, link_prot_pcs_if_token_ready}),
      .prio3_data  			({link_bc_rx_sched_token_data_p3, link_prot_pcs_if_token_data}),
      
      .token_valid 			(bc_rx_tokin_valid),
      .token_ready 			(bc_rx_tokin_ready),
      .token_out   			(bc_rx_tokin_data),
      
      .scan_enable 			(scan_enable),
      .clk         			(ingress_sys_clk),	
      .reset_n     			(ingress_sys_reset_n)
      );

   
   
   

   
   
   
   
   assign hdmic_ddc_slv_mon_clear  = link_top_regs_rif_data_wr[05] && hdmic_ddc_fifo_status_w;
   assign hdmic_ddc_slv_gen_clear  = link_top_regs_rif_data_wr[13] && hdmic_ddc_fifo_status_w;
   assign hdmic_ddc_mst_mon_clear  = link_top_regs_rif_data_wr[21] && hdmic_ddc_fifo_status_w;
   assign hdmic_ddc_mst_gen_clear  = link_top_regs_rif_data_wr[29] && hdmic_ddc_fifo_status_w;
   assign hdmic_ddc_slv_stop_clear = link_top_regs_rif_data_wr[30] && hdmic_ddc_fifo_status_w;
   assign hdmic_ddc_slv_used_clear = link_top_regs_rif_data_wr[31] && hdmic_ddc_fifo_status_w;

   assign test_bus_ddc             = {18'b0, mictor_ddc};
   
   Snir_link_BC Snir_link_backword_comp_i
     (
      
      .link_rx_tokin_data		(bc_rx_tokin_data                 ),
      .link_rx_tokin_valid		(bc_rx_tokin_valid                ),
      .link_rx_tokin_ready		(bc_rx_tokin_ready                ),
      
      .link_rx_tokout_data		(bc_rx_tokout_data                ),
      .link_rx_tokout_valid		(bc_rx_tokout_valid               ),
      .link_rx_tokout_ready		(bc_rx_tokout_ready               ),
      
      .link_tx_tokin_data		(bc_tx_tokin_data                 ),
      .link_tx_tokin_valid		(bc_tx_tokin_valid                ),
      .link_tx_tokin_ready		(bc_tx_tokin_ready                ),
      
      .link_tx_tokout_data		(bc_tx_tokout_data                ),
      .link_tx_tokout_valid		(bc_tx_tokout_valid               ),
      .link_tx_tokout_ready		(bc_tx_tokout_ready               ),
      
      .pdif_a1_data			(hlic_tx_pdif_data		  ),
      .pdif_a1_valid			(hlic_tx_pdif_vld		  ),
      .pdif_a1_ready			(hlic_tx_pdif_rd		  ),
      .msio_aux_hdbt_sched_ready        (msio_aux_hdbt_sched_ready        ),
      
      .lppf_uart_in			(lppf2BC_uart                     ),
      .lppf_cir_in			(lppf2BC_cir                      ),
      .lppf_uart_out			(BC2lppf_uart                     ),
      .lppf_cir_out			(BC2lppf_cir                      ),
      .snirlnk_local_sid_en		(bc_snirlnk_local_sid_en     	  ),
      .snirlnk_type_route_tx_lsb	(bc_snirlnk_type_route_tx_lsb	  ),
      .snirlnk_type_route_tx_mid	(bc_snirlnk_type_route_tx_mid	  ),
      .snirlnk_type_route_tx_msb	(bc_snirlnk_type_route_tx_msb	  ),
      .snirlnk_type_route_rx_lsb	(bc_snirlnk_type_route_rx_lsb	  ),
      .snirlnk_type_route_rx_mid	(bc_snirlnk_type_route_rx_mid	  ),
      .snirlnk_type_route_rx_msb	(bc_snirlnk_type_route_rx_msb	  ),
      
      .RX_MAIN_HDI_PRIORITY		(bc_snirlnk_rx_main_hdi_priority_field),
      .RX_MAX_DATA_P1			(bc_snirlnk_rx_max_data_p1	  ),
      .RX_MAX_DATA_P2			(bc_snirlnk_rx_max_data_p2	  ),
      .RX_MAX_DATA_P3			(bc_snirlnk_rx_max_data_p3	  ),
      .TX_MAIN_HDI_PRIORITY		(bc_snirlnk_tx_main_hdi_priority_field),
      .TX_MAX_DATA_P1			(bc_snirlnk_tx_max_data_p1	  ),
      .TX_MAX_DATA_P2			(bc_snirlnk_tx_max_data_p2	  ),
      .TX_MAX_DATA_P3			(bc_snirlnk_tx_max_data_p3	  ),
      
      .clock_pack_lsb_first		(bc_clock_pack_lsb_first	  ),
      .clock_pack_enable_rx		(bc_clock_pack_enable_rx	  ),
      .clock_pack_enable_tx		(bc_clock_pack_enable_tx	  ),
      .drift_mn_add_sid_rx		(bc_drift_mn_add_sid_rx		  ),
      .Drift_ClkPkts_mon_enable         (bc_Drift_ClkPkts_mon_enable      ),
      .Drift_ClkPkts_mon_sid            (bc_Drift_ClkPkts_mon_sid         ),
      .Drift_ClkPkts_mon_clk_sub_type   (bc_Drift_ClkPkts_mon_clk_sub_type),
      .Drift_ClkPkts_mon_trapped_data   (bc_Drift_ClkPkts_mon_trapped_data),
      .drift_est_data			(drift_est_data			  ),
      .TMDS_MN_CHANGE_THR		(bc_TMDS_MN_CHANGE_THR		  ),
      .TMDS_MN_DIFF_SLCT		(bc_TMDS_MN_DIFF_SLCT		  ),
      .TMDS_MN_LEAK_SLCT		(bc_TMDS_MN_LEAK_SLCT		  ),
      .TMDS_MN_STEADY_THR		(bc_TMDS_MN_STEADY_THR		  ),
      .mn_change			(bc_mn_change			  ),
      .mn_change_latch			(bc_mn_change_latch		  ),
      .mn_change_clr			(bc_snirlnk_clkpkt_mn_change_reg_w), 
      .mn_steady			(bc_mn_steady			  ),
      .mn_data_out			(bc_mn_data_out			  ),
      
      .AddVideoPad_en			(bc_AddVideoPad_enable		  ),
      .RemoveVideoPad_en		(bc_RemoveVideoPad_enable	  ),
      .remove_extended			(bc_remove_extended		  ),
      
      .RemoveZeroExt_en(bc_RemoveZeroExt_en),
      
      .msio_ptype			(bc_msio_ptype			  ),
      .a1_msio_packet_pam		(bc_a1_msio_packet_pam		  ),
      .pdif_ayalon_sink_mode		(bc_pdif_ayalon_sink_mode	  ),
      .MSIOPktGen_En			(bc_MSIOPktGen_En		  ),
      .pdif_clk_div			(bc_pdif_clk_div		  ),
      .pdif_op_mode			(bc_pdif_op_mode		  ),
      .msio_rx_enable			(bc_msio_rx_enable		  ),
      .msio_tx_enable			(bc_msio_tx_enable		  ),
      .msio_rx_invert			(bc_msio_rx_invert		  ),
      .msio_tx_invert			(bc_msio_tx_invert		  ),
      .rx_sync_mode			(bc_rx_sync_mode		  ),
      
      .msio_clk_scale			(bc_clk_scale		  	  ),
      .msio_err_clr			(bc_msio_status_reg_w		  ),
      .msio_fifo_error			(bc_msio_fifo_error 	  	  ),
      .msio_rx_state00_data		(bc_msio_rx_state00_data	  ),
      .msio_rx_state01_data		(bc_msio_rx_state01_data	  ),
      .msio_rx_state02_data		(bc_msio_rx_state02_data	  ),
      .msio_rx_state03_data		(bc_msio_rx_state03_data	  ),
      .msio_rx_state04_data		(bc_msio_rx_state04_data	  ),
      .msio_rx_state05_data		(bc_msio_rx_state05_data	  ),
      .msio_rx_state06_data		(bc_msio_rx_state06_data	  ),
      .msio_rx_state07_data		(bc_msio_rx_state07_data	  ),
      .msio_rx_stm_end			(bc_msio_rx_stm_end		  ),
      .msio_rx_last_state		(bc_msio_rx_last_state		  ),
      .msio_tx_state00_data		(bc_msio_tx_state00_data	  ),
      .msio_tx_state01_data		(bc_msio_tx_state01_data	  ),
      .msio_tx_state02_data		(bc_msio_tx_state02_data	  ),
      .msio_tx_state03_data		(bc_msio_tx_state03_data	  ),
      .msio_tx_state04_data		(bc_msio_tx_state04_data	  ),
      .msio_tx_state05_data		(bc_msio_tx_state05_data	  ),
      .msio_tx_state06_data		(bc_msio_tx_state06_data	  ),
      .msio_tx_state07_data		(bc_msio_tx_state07_data	  ),
      .msio_tx_stm_end			(bc_msio_tx_stm_end		  ),
      .msio_tx_last_state		(bc_msio_tx_last_state		  ),
      
      .link_bc_hlic_pkt_sid		(bc_link_bc_hlic_pkt_sid	  ),
      .link_bc_hlic_prot		(bc_link_bc_hlic_prot             ),
      .link_bc_hlic_pkt_ext		(bc_link_bc_hlic_pkt_ext          ),
      .link_bc_hlic_pkt_ext_info	(bc_link_bc_hlic_pkt_ext_info     ),
      .link_bc_hlic_pkt_qual		(bc_link_bc_hlic_pkt_qual         ),
      .link_bc_hlic_pkt_prio		(bc_link_bc_hlic_pkt_prio         ),
      .link_bc_hlic_lsb_first		(bc_link_bc_hlic_lsb_first        ),
      .link_bc_hlic_pkt_data_num	(bc_link_bc_hlic_pkt_data_num     ),
      .link_bc_hlic_en			(bc_link_bc_hlic_en               ),
      .link_bc_hlic_ignore_crc		(bc_link_bc_hlic_ignore_crc       ),
      
      .cir_rx_sid			(bc_cir_cir_rx_sid			  ),
      .cir_rx_prot			(bc_cir_cir_rx_prot			  ),
      .cir_rx_lsb_first			(bc_cir_cir_rx_lsb_first		  ),
      .cir_rx_data_num_in		(bc_cir_cir_rx_data_num_in		  ),
      .cir_rx_in_invert			(bc_cir_cir_rx_in_invert		  ),
      .cir_rx_idle_size			(bc_cir_cir_rx_idle_size		  ),
      .cir_rx_period_size		(bc_cir_cir_rx_period_size		  ),
      .cir_rx_sample_rate		(bc_cir_cir_rx_sample_rate		  ),
      .cir_tx_lsb_first			(bc_cir_cir_tx_lsb_first		  ),
      .cir_tx_ignore_crc		(bc_cir_cir_tx_ignore_crc		  ),
      .cir_tx_sample_rate		(bc_cir_cir_tx_sample_rate   	  ),
      .cir_tx_threshold			(bc_cir_cir_tx_threshold          	  ),
      .cir_tx_carrier			(bc_cir_cir_tx_carrier            	  ),
      .cir_tx_carrier_en		(bc_cir_cir_tx_carrier_en             ),
      .cir_tx_carrier_last		(bc_cir_cir_tx_carrier_last           ),
      .cir_tx_time_out			(bc_cir_cir_tx_time_out               ),
      .cir_tx_time_out_en		(bc_cir_cir_tx_time_out_en            ),
      .cir_tx_out_invert		(bc_cir_cir_tx_out_invert             ),
      .cir_sw_wr_data			(link_top_regs_rif_data_wr            ),
      .cir_sw_wr_cmnd			(bc_cir_Cir_Wr_Data_Cmd_w             ),
      .cir_sw_wr_rdy			(bc_cir_cir_sw_wr_rdy                 ),
      .cir_sw_full			(bc_cir_cir_sw_full                   ),
      .cir_sw_empty			(bc_cir_cir_sw_empty                  ),
      .cir_sw_used			(bc_cir_cir_sw_used                   ),
      .cir_tx_fifo_used                 (bc_cir_cir_tx_fifo_used),
      .cir_rx_enable			(bc_cir_cir_tx_enable                 ),
      .cir_tx_enable			(bc_cir_cir_rx_enable                 ),
      .cir_rx_buffer_out_words_in_ram   (bc_cir_rx_buffer_out_words_in_ram), 
      .cir_rx_buffer_out_packet_num     (bc_cir_rx_buffer_out_packet_num), 
      .cir_rx_buffer_out_pkt_write      (bc_cir_rx_buffer_out_pkt_write), 
      .cir_rx_buffer_out_enable         (bc_cir_rx_buffer_out_enable), 
      .cir_rx_buffer_out_crc_bit_en     (bc_cir_rx_buffer_out_crc_bit_en),
      .cir_rx_buffer_out_delay_size     (bc_cir_rx_buffer_out_delay_size), 
      .cir_rx_buffer_out_packet_status_w(bc_cir_rx_buffer_out_packet_status_w),
      
      .AYALON_CIR_IN_2logic             (AYALON_CIR_IN_2logic),
      .AYALON_CIR_OUT_out_2iomx         (AYALON_CIR_OUT_out_2iomx),
      .cir_tx_io_enable                 (bc_cir_tx_io_enable),
      .cir_from_io_select               (bc_cir_from_io_select),      
      
      .uart_rx_enable			(bc_uart_link_uart_rx_enable		  ),
      .uart_rx_parity_en		(bc_uart_link_uart_rx_parity_en	  ),
      .uart_rx_odd_parity		(bc_uart_link_uart_rx_odd_parity	  ),
      .uart_rx_data_size		(bc_uart_link_uart_rx_data_size	  ),
      .uart_rx_oversampled		(bc_uart_link_uart_rx_oversampled	  ),
      .uart_rx_int_val                  (bc_uart_link_uart_rx_int_val),
      .uart_rx_frac_val                 (bc_uart_link_uart_rx_frac_val),
      .uart_max_bits_cnt		(bc_uart_link_uart_max_bits_cnt		  ),
      .uart_tx_enable			(bc_uart_link_uart_tx_enable		  ),
      .uart_tx_parity_en		(bc_uart_link_uart_tx_parity_en	  ),
      .uart_tx_odd_parity		(bc_uart_link_uart_tx_odd_parity	  ),
      .uart_tx_data_size		(bc_uart_link_uart_tx_data_size	  ),
      .uart_tx_stop_bits		(bc_uart_link_uart_tx_stop_bits	  ),
      .uart_tx_oversampled		(bc_uart_link_uart_tx_oversampled	  ),
      .uart_tx_int_val                  (bc_uart_link_uart_tx_int_val),
      .uart_tx_frac_val                 (bc_uart_link_uart_tx_frac_val),       
      .uart_rx_idle_durtion		(bc_uart_link_uart_rx_idle_durtion		  ),
      .uart_tx_read_th			(bc_uart_link_uart_tx_read_th	  ),
      .uart_tx_fifo_thr_high		(bc_uart_link_uart_tx_fifo_thr_high	  ),
      .uart_tx_fifo_thr_low		(bc_uart_link_uart_tx_fifo_thr_low	  ),
      .uart_tx_fifo_decim		(bc_uart_link_uart_tx_fifo_decim	  ),
      .uart_rx_fifo_used		(bc_link_uart_rx_fifo_used	  ),
      .uart_tx_fifo_used		(bc_link_uart_tx_fifo_used	  ),
      .uart_rx_buffer_out_words_in_ram(bc_uart_rx_buffer_out_words_in_ram), 
      .uart_rx_buffer_out_packet_num(bc_uart_rx_buffer_out_packet_num), 
      .uart_rx_buffer_out_pkt_write(bc_uart_rx_buffer_out_pkt_write), 
      .uart_rx_buffer_out_enable(bc_uart_rx_buffer_out_enable), 
      .uart_rx_buffer_out_crc_bit_en(bc_uart_rx_buffer_out_crc_bit_en),
      .uart_rx_buffer_out_delay_size(bc_uart_rx_buffer_out_delay_size), 
      .uart_rx_buffer_out_packet_status_w(bc_uart_rx_buffer_out_packet_status_w),
      .uart_sid				(bc_uart_link_uart_SID			  ),
      .uart_prot			(bc_uart_link_uart_prot			  ),
      .uart_pkt_size			(bc_uart_link_uart_pkt_size		  ),
      .UART_Pkt_Gen_En			(bc_uart_link_uart_Pkt_Gen_En		  ),
      .UART_IgnoreCRC			(bc_uart_link_uart_IgnoreCRC		  ),
      
      .AYALON_UART_RX_T_2logic          (AYALON_UART_RX_T_2logic),
      .AYALON_UART_TX_T_out_2iomx       (AYALON_UART_TX_T_out_2iomx),
      .uart_tx_io_enable                (bc_uart_tx_io_enable),
      .uart_from_io_select              (bc_uart_from_io_select),
      
      .msio_tadp_ptype			(bc_msio_tadp_ptype		  ),
      .MSIO_tadp_SID			(bc_MSIO_tadp_SID		  ),
      .msio_tadp_prot			(bc_msio_tadp_prot		  ),
      .msio_tadp_ext			(bc_msio_tadp_ext		  ),
      .msio_tadp_ext_data		(bc_msio_tadp_ext_data		  ),
      .msio_tadp_pam			(bc_msio_tadp_pam		  ),
      .msio_tadp_future			(bc_msio_tadp_future		  ),
      .msio_tadp_qual			(bc_msio_tadp_qual		  ),
      .msio_tadp_prio			(bc_msio_tadp_prio		  ),
      .MSIONibbleMode                   (bc_msio_tadp_nibble_mode	  ),
      .MSIO_tadp_gen_En          	(bc_MSIO_tadp_gen_En	   	  ),
      .MSIO_tadp_parse_En        	(bc_MSIO_tadp_parse_En		  ),
      .msio_tadp_ignore_crc		(bc_msio_tadp_ignore_crc	  ),
      .msio_tadp_lsb_first		(bc_msio_tadp_data_Lsb_First	  ),
      .msio_tadp_master_div_ratio	(bc_msio_tadp_master_div_ratio	  ),
      .msio_tadp_rx_enable		(bc_msio_tadp_rx_enable		  ),
      .msio_tadp_tx_enable		(bc_msio_tadp_tx_enable		  ),
      .msio_tadp_rx_invert		(bc_msio_tadp_rx_invert		  ),
      .msio_tadp_tx_invert		(bc_msio_tadp_tx_invert		  ),
      .msio_tadp_rx_sync_mode		(bc_msio_tadp_rx_sync_mode	  ),
      .msio_tadp_rx_state00_data	(bc_msio_tadp_rx_state00_data	  ),
      .msio_tadp_rx_state01_data	(bc_msio_tadp_rx_state01_data	  ),
      .msio_tadp_rx_state02_data	(bc_msio_tadp_rx_state02_data	  ),
      .msio_tadp_rx_state03_data	(bc_msio_tadp_rx_state03_data	  ),
      .msio_tadp_rx_state04_data	(bc_msio_tadp_rx_state04_data	  ),
      .msio_tadp_rx_state05_data	(bc_msio_tadp_rx_state05_data	  ),
      .msio_tadp_rx_state06_data	(bc_msio_tadp_rx_state06_data	  ),
      .msio_tadp_rx_state07_data	(bc_msio_tadp_rx_state07_data	  ),
      .msio_tadp_rx_stm_end		(bc_msio_tadp_rx_stm_end	  ),
      .msio_tadp_rx_last_state		(bc_msio_tadp_rx_last_state	  ),
      .msio_tadp_tx_state00_data	(bc_msio_tadp_tx_state00_data	  ),
      .msio_tadp_tx_state01_data	(bc_msio_tadp_tx_state01_data	  ),
      .msio_tadp_tx_state02_data	(bc_msio_tadp_tx_state02_data	  ),
      .msio_tadp_tx_state03_data	(bc_msio_tadp_tx_state03_data	  ),
      .msio_tadp_tx_state04_data	(bc_msio_tadp_tx_state04_data	  ),
      .msio_tadp_tx_state05_data	(bc_msio_tadp_tx_state05_data	  ),
      .msio_tadp_tx_state06_data	(bc_msio_tadp_tx_state06_data	  ),
      .msio_tadp_tx_state07_data	(bc_msio_tadp_tx_state07_data	  ),
      .msio_tadp_tx_stm_end		(bc_msio_tadp_tx_stm_end	  ),
      .msio_tadp_tx_last_state		(bc_msio_tadp_tx_last_state	  ),
      .msio_tadp_clk_scale		(bc_msio_tadp_clk_scale		  ),
      .msio_tadp_fifo_error		(bc_msio_tadp_fifo_error	  ),
      .msio_tadp_err_clr		(bc_msio_tadp_status_reg_w	  ),
      
      .AYALON_MSIO_DATA_0_RX_2logic    (AYALON_MSIO_DATA_0_RX_2logic),
      .AYALON_MSIO_DATA_1_RX_2logic    (AYALON_MSIO_DATA_1_RX_2logic),
      .AYALON_MSIO_DATA_2_RX_2logic    (AYALON_MSIO_DATA_2_RX_2logic),
      .AYALON_MSIO_DATA_3_RX_2logic    (AYALON_MSIO_DATA_3_RX_2logic),
      .AYALON_MSIO_DATA_4_RX_2logic    (AYALON_MSIO_DATA_4_RX_2logic),
      .AYALON_MSIO_DATA_5_RX_2logic    (AYALON_MSIO_DATA_5_RX_2logic),
      .AYALON_MSIO_DATA_0_TX_out_2iomx (AYALON_MSIO_DATA_0_TX_out_2iomx),
      .AYALON_MSIO_DATA_1_TX_out_2iomx (AYALON_MSIO_DATA_1_TX_out_2iomx),
      .AYALON_MSIO_DATA_2_TX_out_2iomx (AYALON_MSIO_DATA_2_TX_out_2iomx),
      .AYALON_MSIO_DATA_3_TX_out_2iomx (AYALON_MSIO_DATA_3_TX_out_2iomx),
      .AYALON_MSIO_DATA_4_TX_out_2iomx (AYALON_MSIO_DATA_4_TX_out_2iomx),
      .AYALON_MSIO_DATA_5_TX_out_2iomx (AYALON_MSIO_DATA_5_TX_out_2iomx),
      .msio_from_io_select             (bc_msio_from_io_select),
      
      
      .reg_hdmic_mode_A1                (hdmic_mode_A1                ),
      .reg_hdmic_ing_parse_en           (hdmic_ing_parse_en           ),
      .reg_hdmic_ing_parse_ignoreCrc    (hdmic_ing_parse_ignoreCrc    ),
      
      .reg_hdmic_ing_gen_en             (hdmic_ing_gen_en             ),
      .reg_hdmic_ing_gen_sid            (hdmic_ing_gen_sid            ),
      .reg_hdmic_ing_gen_prot           (hdmic_ing_gen_prot           ),   
      .reg_hdmic_ing_gen_hdmi_ctrl_delay(hdmic_ing_gen_hdmi_ctrl_delay), 
     
      .reg_hdmic_egr_parse_en           (hdmic_egr_parse_en           ),
      .reg_hdmic_egr_parse_ignoreCrc    (hdmic_egr_parse_ignoreCrc    ),
      
      .reg_hdmic_egr_gen_en             (hdmic_egr_gen_en),
      .reg_hdmic_egr_gen_sid            (hdmic_egr_gen_sid),
      .reg_hdmic_egr_gen_prot           (hdmic_egr_gen_prot),   
      .reg_hdmic_egr_gen_hdmi_ctrl_delay(hdmic_egr_gen_hdmi_ctrl_delay), 
      .reg_hdmic_packet_space           (hdmic_packet_space),
      
      .reg_hdmic_cpu_ing_rx_v5          (hdmic_cpu_ing_rx_v5),
      .reg_hdmic_cpu_ing_tx_v5          (hdmic_cpu_ing_tx_v5),
      .reg_hdmic_cpu_ing_v5_bypass      (hdmic_cpu_ing_v5_bypass),
      
      .reg_hdmic_cpu_ing_rx_rxs         (hdmic_cpu_ing_rx_rxs),
      .reg_hdmic_cpu_ing_tx_rxs         (hdmic_cpu_ing_tx_rxs),
      .reg_hdmic_cpu_ing_rxs_bypass     (hdmic_cpu_ing_rxs_bypass),   
      
      .reg_hdmic_cpu_egr_rx_v5          (hdmic_cpu_egr_rx_v5),
      .reg_hdmic_cpu_egr_tx_v5          (hdmic_cpu_egr_tx_v5),
      .reg_hdmic_cpu_egr_v5_bypass      (hdmic_cpu_egr_v5_bypass),
      
      .reg_hdmic_cpu_egr_rx_rxs         (hdmic_cpu_egr_rx_rxs),
      .reg_hdmic_cpu_egr_tx_rxs         (hdmic_cpu_egr_tx_rxs),
      .reg_hdmic_cpu_egr_rxs_bypass     (hdmic_cpu_egr_rxs_bypass),   
      
      .reg_hdmic_cec_ing_bypass         (hdmic_cec_ing_bypass),   
      
      .reg_hdmic_cpu_fifo_cec_ing_tx_data    (hdmic_cpu_fifo_cec_ing_tx_data),
      .reg_hdmic_cpu_fifo_cec_ing_tx_data_cmd(hdmic_ctrl_cec_ing_tx_data_reg_w),
      .reg_hdmic_cpu_fifo_cec_ing_tx_data_rdy(hdmic_cpu_fifo_cec_ing_tx_data_rdy),   
      .reg_hdmic_cpu_fifo_cec_ing_tx_used    (hdmic_cpu_fifo_cec_ing_tx_used),
      .reg_hdmic_cpu_fifo_cec_ing_tx_clr     (1'b0),
      
      .reg_hdmic_cpu_fifo_cec_ing_rx_data    (hdmic_cpu_fifo_cec_ing_rx_data),
      .reg_hdmic_cpu_fifo_cec_ing_rx_data_cmd(hdmic_ctrl_cec_ing_rx_data_reg_r),
      .reg_hdmic_cpu_fifo_cec_ing_rx_data_rdy(hdmic_cpu_fifo_cec_ing_rx_data_rdy),   
      .reg_hdmic_cpu_fifo_cec_ing_rx_used    (hdmic_cpu_fifo_cec_ing_rx_used),
      
      .reg_hdmic_cec_egr_bypass              (hdmic_cec_egr_bypass),   
      
      .reg_hdmic_cpu_fifo_cec_egr_tx_data    (hdmic_cpu_fifo_cec_egr_tx_data),
      .reg_hdmic_cpu_fifo_cec_egr_tx_data_cmd(hdmic_ctrl_cec_egr_tx_data_reg_w),
      .reg_hdmic_cpu_fifo_cec_egr_tx_data_rdy(hdmic_cpu_fifo_cec_egr_tx_data_rdy),   
      .reg_hdmic_cpu_fifo_cec_egr_tx_used    (hdmic_cpu_fifo_cec_egr_tx_used),
      
      .reg_hdmic_cpu_fifo_cec_egr_rx_data    (hdmic_cpu_fifo_cec_egr_rx_data),
      .reg_hdmic_cpu_fifo_cec_egr_rx_data_cmd(hdmic_ctrl_cec_egr_rx_data_reg_r),
      .reg_hdmic_cpu_fifo_cec_egr_rx_data_rdy(hdmic_cpu_fifo_cec_egr_rx_data_rdy),   
      .reg_hdmic_cpu_fifo_cec_egr_rx_used    (hdmic_cpu_fifo_cec_egr_rx_used),
      .reg_hdmic_cpu_fifo_cec_egr_tx_clr     (hdmic_cpu_fifo_cec_egr_tx_clr),
      
      .reg_hdmic_cec_micro                   (hdmic_cec_micro),
      .reg_hdmic_cec_delay_fall              (hdmic_cec_delay_fall),
      .reg_hdmic_cec_delay_rise              (hdmic_cec_delay_rise),
      .reg_hdmic_cec_sb_nom                  (hdmic_cec_sb_nom),
      .reg_hdmic_cec_sb_l_min                (hdmic_cec_sb_l_min),
      .reg_hdmic_cec_sb_l_max                (hdmic_cec_sb_l_max),
      .reg_hdmic_cec_sb_falling_edges_min    (hdmic_cec_sb_falling_edges_min),
      .reg_hdmic_cec_sb_falling_edges_max    (hdmic_cec_sb_falling_edges_max),
      .reg_hdmic_cec_data_falling_edges_min  (hdmic_cec_data_falling_edges_min),
      .reg_hdmic_cec_dat_h_nom               (hdmic_cec_dat_h_nom),
      .reg_hdmic_cec_dat_l_nom               (hdmic_cec_dat_l_nom),
      .reg_hdmic_cec_dat_samp                (hdmic_cec_dat_samp),
      .reg_hdmic_cec_ack_force               (hdmic_cec_ack_force),
      .reg_hdmic_cec_ack_release             (hdmic_cec_ack_release),
      .reg_hdmic_cec_ack_end                 (hdmic_cec_ack_end),
      .reg_hdmic_cec_ack_samp                (hdmic_cec_ack_samp),
      .reg_hdmic_cec_error_in_time           (hdmic_cec_error_in_time),
      .reg_hdmic_cec_error_out_time          (hdmic_cec_error_out_time),
      .reg_hdmic_cec_cont_add                (hdmic_cec_cont_add),
      .reg_hdmic_cec_time_err_as_cont        (hdmic_cec_time_err_as_cont),
      .reg_hdmic_cec_tx_gen_contention       (hdmic_cec_tx_gen_contention),   
      .reg_hdmic_cec_pu_enable               (hdmic_cec_pu_enable),
      .reg_hdmic_cec_fifo_tx_clear           (hdmic_cpu_fifo_cec_egr_tx_clr),   
      .reg_hdmic_cec_mode_pt                 (hdmic_cec_mode_pt),
      .reg_hdmic_cec_ack_auto                (hdmic_cec_ack_auto),
      .reg_hdmic_cec_tx_start                (hdmic_cec_tx_start),
      .reg_hdmic_cec_tx_ack_h_1              (hdmic_cec_tx_ack_h_1),
      .reg_hdmic_cec_tx_ack_h_2              (hdmic_cec_tx_ack_h_2),
      .reg_hdmic_cec_bit_time                (hdmic_cec_bit_time),
      .reg_hdmic_cec_ack_table               (hdmic_cec_ack_table),  
      .reg_hdmic_cec_mon_table               (hdmic_cec_mon_table),  
      .reg_hdmic_cec_nack_all                (hdmic_cec_nack_all),
      .reg_hdmic_cec_nack_brdcst             (hdmic_cec_nack_brdcst),
      .reg_hdmic_cec_hys_delay               (hdmic_cec_hys_delay),
      .reg_hdmic_cec_auto_ack                (hdmic_cec_auto_ack),
      .reg_hdmic_cec_auto_nack               (hdmic_cec_auto_nack),
      .reg_hdmic_cec_auto_h_ack              (hdmic_cec_auto_h_ack),
      .reg_hdmic_cec_auto_h_nack             (hdmic_cec_auto_h_nack),
      .reg_hdmic_cec_delay_same_initiator    (hdmic_cec_delay_same_initiator),
      .reg_hdmic_cec_delay_new_initiator     (hdmic_cec_delay_new_initiator),   
      .reg_hdmic_cec_delay_retrans           (hdmic_cec_delay_retrans),   
      .reg_hdmic_cec_block_rise_time         (hdmic_cec_block_rise_time),
      .reg_hdmic_cec_in_trans                (hdmic_cec_in_trans),
      
      .ddc_mode_mstr_slv                     (hdmic_ddc_mode_mstr_slv),   
      					      
      .ddc_data_bus_wr                       (link_top_regs_rif_data_wr),
      .ddc_add_bus                           ({16'h0,hdmic_ddc_ram_bus_add}),
      .ddc_bus_wr                            (hdmic_ddc_ram_bus_wr),
      .ddc_bus_rd                            (hdmic_ddc_ram_bus_rd),
      .ddc_byte_en                           (link_top_regs_rif_byte_en),
      .ddc_data_bus_rd                       (hdmic_ddc_ram_bus_data_rd),
      .ddc_bus_ack                           (hdmic_ddc_ram_bus_ack),
      					      
      .ddc_slv_mon_data                      (hdmic_ddc_slv_mon_data),
      .ddc_slv_mon_cmd                       (hdmic_ddc_fifo_read_slv_r),
      .ddc_slv_mon_req                       (hdmic_ddc_slv_mon_req),
      .ddc_slv_mon_used                      (hdmic_ddc_slv_mon_used),
      .ddc_slv_mon_clear                     (hdmic_ddc_slv_mon_clear),
      .ddc_slv_mon_mask                      (hdmic_ddc_slv_mon_mask),

      .ddc_slv_gen_req                       (hdmic_ddc_slv_gen_req),
      .ddc_slv_gen_data                      (hdmic_ddc_slv_gen_data),
      .ddc_slv_gen_cmd                       (hdmic_ddc_fifo_gen_slv_w),
      .ddc_slv_gen_used                      (hdmic_ddc_slv_gen_used),
      .ddc_slv_gen_clear                     (hdmic_ddc_slv_gen_clear),
      .ddc_slv_gen_mask                      (hdmic_ddc_slv_gen_mask),

      .ddc_mst_mon_data                      (hdmic_ddc_mst_mon_data),
      .ddc_mst_mon_cmd                       (hdmic_ddc_fifo_read_mst_r),
      .ddc_mst_mon_req                       (hdmic_ddc_mst_mon_req),
      .ddc_mst_mon_used                      (hdmic_ddc_mst_mon_used),
      .ddc_mst_mon_clear                     (hdmic_ddc_mst_mon_clear),
      .ddc_mst_mon_mask                      (hdmic_ddc_mst_mon_mask),

      .ddc_mst_gen_req                       (hdmic_ddc_mst_gen_req),
      .ddc_mst_gen_data                      (hdmic_ddc_mst_gen_data),
      .ddc_mst_gen_cmd                       (hdmic_ddc_fifo_gen_mst_w),
      .ddc_mst_gen_used                      (hdmic_ddc_mst_gen_used),
      .ddc_mst_gen_clear                     (hdmic_ddc_mst_gen_clear),
      .ddc_mst_gen_mask                      (hdmic_ddc_mst_gen_mask),

      .ddc_slv_stop_int                      (hdmic_ddc_slv_stop_int),
      .ddc_slv_stop_clear                    (hdmic_ddc_slv_stop_clear),
      .ddc_slv_stop_mask                     (hdmic_ddc_slv_stop_mask),

      .ddc_slv_used_int                      (hdmic_ddc_slv_used_int),
      .ddc_slv_used_clear                    (hdmic_ddc_slv_used_clear),
      .ddc_slv_used_mask                     (hdmic_ddc_slv_used_mask),
      .ddc_slv_used_thr                      (hdmic_ddc_slv_used_thr),
      
      .ddc_global_pt_disable                 (hdmic_ddc_global_pt_disable),
      .ddc_global_hw_ack                     (hdmic_ddc_global_hw_ack),
      
      .ddc_edid0_en                          (hdmic_ddc_edid0_en),
      .ddc_edid0_addr                        (hdmic_ddc_edid0_addr),
      .ddc_edid1_en                          (hdmic_ddc_edid1_en),
      .ddc_edid1_addr                        (hdmic_ddc_edid1_addr),
      .ddc_edid_seg_sel                      (hdmic_ddc_edid_seg_sel),
      .ddc_edid_offset_rst                   (hdmic_ddc_edid_offset_rst),
      
      .ddc_hdcp_en                           (hdmic_ddc_hdcp_en),
      .ddc_hdcp_addr                         (hdmic_ddc_hdcp_addr),
      .ddc_hdcp_reg_addr                     (hdmic_ddc_hdcp_reg_addr),
      .ddc_hdcp_max_cnt                      (hdmic_ddc_hdcp_max_cnt),
      .ddc_hdcp_start_val                    (hdmic_ddc_hdcp_start_val),
      .ddc_hdcp_val                          (hdmic_ddc_hdcp_val),
      .ddc_hdcp_val_cnt                      (hdmic_ddc_hdcp_val_cnt),
      
      .ddc_wd_max_cnt                        (hdmic_ddc_wd_max_cnt),
      .ddc_wd_en                             (hdmic_ddc_wd_en),
      
      .ddc_data_idle_en                      (hdmic_ddc_data_idle_en),
      .ddc_data_pre_en                       (hdmic_ddc_data_pre_en),
      .ddc_allow_ram_init                    (hdmic_ddc_allow_ram_init),
      
      .vl_sms_WRCK                           (WRCK),
      .vl_sms_HDMI_CTRL_SMS_sms_1_WSI        (Snir_link_BC_WSI),
      .vl_sms_WRSTN                          (WRSTN),
      .vl_sms_HDMI_CTRL_SMS_sms_1_UpdateWR   (Snir_link_BC_UpdateWR),
      .vl_sms_SelectWIR                      (SelectWIR),
      .vl_sms_HDMI_CTRL_SMS_sms_1_ShiftWR    (Snir_link_BC_ShiftWR),
      .vl_sms_HDMI_CTRL_SMS_sms_1_CaptureWR  (Snir_link_BC_CaptureWR),
      .vl_sms_HDMI_CTRL_SMS_sms_1_WSO        (Snir_link_BC_WSO),
      
      .mictor_cec                            (test_bus_cec),
      .mictor_ddc                            (mictor_ddc),
      
      .bist_clk                              (bist_clk),
      .bist_reset_n                          (bist_reset_n),


       
      .ayalon_mode			(Main_A1_mode			  ),
      .scan_mode			(scan_mode			  ),
      .scan_enable			(scan_enable			  ),
      .lppf_mode			(bc_snir_link_bc_lppf_mode	  ),
      .rx_clk				(rx_backward_comp_sys_clk	  ),
      .tx_clk				(tx_backward_comp_sys_clk	  ),
      .clk				(backward_comp_sys_clk		  ),
      .tx_reset_n			(tx_backward_comp_sys_reset_n	  ),
      .rx_reset_n			(rx_backward_comp_sys_reset_n	  ),
      .reset_n				(backward_comp_sys_reset_n	  )
      );

   
   
   
   
   MainDispatcher # (.NUM_INP(1), 
		     .LOG_INP(1),
		     .NUM_OUT(6), 
		     .LOG_OUT(3))  rx_main_dispatcher_i
     (
      
      .tokin_valid	(bc_rx_tokout_valid),
      .tokin_ready	(bc_rx_tokout_ready),
      .tokin_data	(bc_rx_tokout_data), 
      
      .tokout_valid	({trash_disp_token_valid,            
			  bist_tadp_rx_p3_token_valid,       
			  bist_tadp_rx_p2_token_valid,       
			  bist_tadp_rx_p1_token_valid,       
			  hdbt_hlic_tokin_valid,             
			  phy_rx_tokout_valid}),             
      .tokout_ready	({trash_disp_token_ready,            
			  bist_tadp_rx_p3_token_ready,       
			  bist_tadp_rx_p2_token_ready,	     
			  bist_tadp_rx_p1_token_ready,	     
			  hdbt_hlic_tokin_ready, 	     
			  phy_rx_tokout_ready}),             
      .tokout_data	({trash_disp_token_out,              
			  bist_tadp_rx_p3_token_out,         
			  bist_tadp_rx_p2_token_out,	     
			  bist_tadp_rx_p1_token_out,	     
			  hdbt_hlic_tokin_data, 	     
			  phy_rx_tokout_data}),              
      
      .local_sid_array  (c_rx_main_disp_local_sid),
      .spare_sid_array  (c_rx_main_disp_spare_sid),
      .trash_sid_array  (c_rx_main_disp_trash_sid),
      .hdi_dest	        (3'b000),
      
      .type_route	(c_rx_main_disp_type_route),
      .spare_route	(c_rx_main_disp_spare_route),
      .force_local_type (c_rx_main_disp_force_local_type),
      .clk_route	({48{1'b0}}),
      .clk_sp_route	({48{1'b0}}),
      
      .scan_enable	(scan_enable),
      .clk		(rx_main_disp_sys_clk),
      .reset_n	        (rx_main_disp_sys_reset_n)
      );

   
   
   
   
   MainBistTadpRx bist_tadp_rx_p1_i
     (
      
      .token_valid   	(bist_tadp_rx_p1_token_valid), 
      .token_ready   	(bist_tadp_rx_p1_token_ready), 
      .token_in      	(bist_tadp_rx_p1_token_out),  
      
      .packet_enable 	(bist_p1_c_rx_bist_tadp_packet_enable),
      .resync_en     	(bist_p1_c_rx_bist_tadp_resync_en ),
      .prbs_pol_type 	(bist_p1_c_rx_bist_tadp_prbs_pol_type),
      .packet_sid    	(bist_p1_c_rx_bist_tadp_packet_sid),
      .prbs_clear    	(bist_p1_Rx_prbs_err_status_reg_w),
      .prbs_err_cnt  	(bist_p1_s_rx_bist_tadp_prbs_err_cnt),
      .state_stm     	(bist_p1_s_rx_bist_tadp_state_stm ),
      .state_lost    	(bist_p1_s_rx_bist_tadp_state_lost),
      .packet_count  	(bist_p1_s_rx_bist_tadp_packet_count),
      .sid_err_count 	(bist_p1_s_rx_bist_tadp_sid_err_count),
      .missing_count 	(bist_p1_s_rx_bist_tadp_missing_count),
      
      .scan_enable   	(scan_enable),
      .clk	       	(MainBistTadpRx_sys_clk),   
      .reset_n       	(MainBistTadpRx_sys_reset_n)
      );


   
   
   
   MainBistTadpRx bist_tadp_rx_p2_i
     (
      
      .token_valid   	(bist_tadp_rx_p2_token_valid), 
      .token_ready   	(bist_tadp_rx_p2_token_ready), 
      .token_in      	(bist_tadp_rx_p2_token_out),  
      
      .packet_enable 	(bist_p2_c_rx_bist_tadp_packet_enable),
      .resync_en     	(bist_p2_c_rx_bist_tadp_resync_en),
      .prbs_pol_type 	(bist_p2_c_rx_bist_tadp_prbs_pol_type),
      .packet_sid    	(bist_p2_c_rx_bist_tadp_packet_sid),
      .prbs_clear    	(bist_p2_Rx_prbs_err_status_reg_w),
      .prbs_err_cnt  	(bist_p2_s_rx_bist_tadp_prbs_err_cnt),
      .state_stm     	(bist_p2_s_rx_bist_tadp_state_stm ),
      .state_lost    	(bist_p2_s_rx_bist_tadp_state_lost),
      .packet_count  	(bist_p2_s_rx_bist_tadp_packet_count),
      .sid_err_count 	(bist_p2_s_rx_bist_tadp_sid_err_count),
      .missing_count 	(bist_p2_s_rx_bist_tadp_missing_count),
      
      .scan_enable   	(scan_enable),
      .clk	       	(MainBistTadpRx_sys_clk),   
      .reset_n       	(MainBistTadpRx_sys_reset_n)
      );
 
  
   
   
   
   MainBistTadpRx bist_tadp_rx_p3_i
     (
      
      .token_valid   	(bist_tadp_rx_p3_token_valid), 
      .token_ready   	(bist_tadp_rx_p3_token_ready), 
      .token_in      	(bist_tadp_rx_p3_token_out),  
      
      .packet_enable 	(bist_p3_c_rx_bist_tadp_packet_enable),
      .resync_en     	(bist_p3_c_rx_bist_tadp_resync_en),
      .prbs_pol_type 	(bist_p3_c_rx_bist_tadp_prbs_pol_type),
      .packet_sid    	(bist_p3_c_rx_bist_tadp_packet_sid),
      .prbs_clear    	(bist_p3_Rx_prbs_err_status_reg_w),
      .prbs_err_cnt  	(bist_p3_s_rx_bist_tadp_prbs_err_cnt),
      .state_stm     	(bist_p3_s_rx_bist_tadp_state_stm ),
      .state_lost    	(bist_p3_s_rx_bist_tadp_state_lost),
      .packet_count  	(bist_p3_s_rx_bist_tadp_packet_count),
      .sid_err_count 	(bist_p3_s_rx_bist_tadp_sid_err_count),
      .missing_count 	(bist_p3_s_rx_bist_tadp_missing_count),
      
      .scan_enable   	(scan_enable),
      .clk	       	(MainBistTadpRx_sys_clk),   
      .reset_n       	(MainBistTadpRx_sys_reset_n)
      );
   
   
   
   
   
   BrifHlic # (.PORT_INDEX(HDBT_HLIC_ID), .ADDRW(ADDRW)) BrifHlic_i
     (
      
      .hlic_if_ls(hdbt_hlic_if_ls),
      .hlic_if_ds(hdbt_hlic_if_ds),
      .hlic_if_sd(hdbt_hlic_if_sd),
     
     .brif_rd(brif_rd),
     .brif_wr(brif_wr),
     .brif_addr(brif_addr),
     .brif_byte_en(brif_byte_en),
     .brif_burst_size(brif_burst_size),
     .brif_wr_data_valid(brif_wr_data_valid),
     .brif_wr_data(brif_wr_data),
     .brif_rd_data(brif_rd_data),
     .brif_ack_addr(brif_addr_ack),
     .brif_ack_data(brif_data_ack),
     
     .hlic_brif_port_tx_len(hdbt_hlic_brif_port_tx_len),
     .hlic_brif_port_tx_data(hdbt_hlic_brif_port_tx_data),
     .rif_data_wr(link_top_regs_rif_data_wr),
     .hlic_read_data_ctrl_reg_w(hdbt_hlic_read_data_ctrl_reg_w),
     .hlic_brif_port_rx_len_reg_r(hdbt_hlic_brif_port_rx_len_reg_r),
     .hlic_brif_port_rx_data_reg_r(hdbt_hlic_brif_port_rx_data_reg_r),
     .hlic_brif_port_tx_len_reg_w(hdbt_hlic_brif_port_tx_len_reg_w),
     .hlic_brif_port_tx_data_reg_w(hdbt_hlic_brif_port_tx_data_reg_w),
     .hlic_brif_port_rx_len_reg_ack(hdbt_hlic_brif_port_rx_len_reg_ack),
     .hlic_brif_port_rx_data_reg_ack(hdbt_hlic_brif_port_rx_data_reg_ack),
     .hlic_brif_port_tx_len_reg_ack(hdbt_hlic_brif_port_tx_len_reg_ack),
     .hlic_brif_port_tx_data_reg_ack(hdbt_hlic_brif_port_tx_data_reg_ack),
     .hlic_brif_port_rx_len(hdbt_hlic_brif_port_rx_len),
     .hlic_brif_port_rx_data(hdbt_hlic_brif_port_rx_data),
     .hlic_read_data_ctrl(hdbt_hlic_read_data_ctrl),
     .hlic_brif_bridge_clr(hdbt_hlic_brif_bridge_clr),
     
     .hlic_rx_len      (hdbt_hlic_rx_len),
     .hlic_rx_len_vld  (hdbt_hlic_rx_len_vld),
     .hlic_tx_data_free(hdbt_hlic_tx_data_free),
     .hlic_tx_len_rdy  (hdbt_hlic_tx_len_rdy),
      
     .hlic_rx_token_valid(hdbt_hlic_tokin_valid),
     .hlic_rx_token_data(hdbt_hlic_tokin_data),
     .hlic_rx_token_ready(hdbt_hlic_tokin_ready),
     
     .hlic_tx_token_valid(hdbt_hlic_tokout_valid),
     .hlic_tx_token_data(hdbt_hlic_tokout_data),
     .hlic_tx_token_ready(hdbt_hlic_tokout_ready),
     
     .test_bus_hlic(hdbt_hlic_tb),
     .hlic_data_write_status(hdbt_hlic_data_write_status),
     
     .hlic_write_used(hdbt_hlic_write_used),
     .hlic_frame_done(hdbt_hlic_frame_done),
     .hlic_frame_ready(hdbt_hlic_frame_ready),
     .hlic_read_ready(hdbt_hlic_read_ready),
     .hlic_write_ready(hdbt_hlic_write_ready),
     .hlic_last_bad_ack(hdbt_hlic_last_bad_ack),
     .hlic_rx_crcerr_cnt(hdbt_hlic_rx_crcerr_cnt),
     .hlic_rx_clr_crc_cnt(hdbt_hlic_rx_clr_crc_cnt),
     .hlic_rx_cmd_fifo_overflow(hdbt_hlic_rx_cmd_fifo_overflow),
     .hlic_rx_cmd_fifo_overflow_clr(hdbt_hlic_rx_cmd_fifo_overflow_clr),
     .hlic_rx_cmd_fifo_ovr_cnt(hdbt_hlic_rx_cmd_fifo_ovr_cnt),
     .hlic_rx_cmd_fifo_ovr_cnt_clr(hdbt_hlic_rx_cmd_fifo_ovr_cnt_clr),
     .hlic_tx_stm(hdbt_hlic_tx_stm),
     .hlic_rx_stm(hdbt_hlic_rx_stm),
     .hlic_hlen  (hdbt_hlic_hlen),
     
     .pdif_is_enabled  (hdbt_hlic_pdif_is_enabled),
     .hlic_tx_pdif_data(hlic_tx_pdif_data),
     .hlic_tx_pdif_vld (hlic_tx_pdif_vld),
     .hlic_tx_pdif_rd  (hlic_tx_pdif_rd),
     
     .HLIC_Enable (hdbt_hlic_Enable),
     .HLIC_PKT_LEN(hdbt_hlic_PKT_LEN),
     .HLIC_PKT_DEL(hdbt_hlic_PKT_DEL),
     .HLIC_EN_BLIND_REP(hdbt_hlic_EN_BLIND_REP),
     .HLIC_A1_MODE(hdbt_hlic_A1_MODE),
     .HLIC_ACK_WD(hdbt_hlic_ACK_WD),
     .HLIC_A1_WD_EN(hdbt_hlic_A1_WD_EN),
     .HLIC_A1_LPPF(hdbt_hlic_A1_LPPF),
     .HLIC_IgnoreCRC(hdbt_hlic_IgnoreCRC),
     .HLIC_Lsb_First(hdbt_hlic_Lsb_First),
     .HLIC_SID(hdbt_hlic_SID),
     .HLIC_packet_prot(hdbt_hlic_prot),
      .HLIC_PTYPE(hdbt_hlic_PTYPE),
      .HLIC_Gen_Mode(hdbt_hlic_Gen_Mode),
     .hlic_crc_swap_data(hdbt_hlic_crc_swap_data),
     .hlic_crc_inv_result(hdbt_hlic_crc_inv_result),
     .hlic_crc_swap_result(hdbt_hlic_crc_swap_result),
     
     .WRCK(WRCK),
     .WRSTN(WRSTN),
     .SelectWIR(SelectWIR),
     .HLIC_IF_CaptureWR(HLIC_IF_CaptureWR),
     .HLIC_IF_ShiftWR(HLIC_IF_ShiftWR),
     .HLIC_IF_UpdateWR(HLIC_IF_UpdateWR),
     .HLIC_IF_WSI(HLIC_IF_WSI),
     .HLIC_IF_WSO(HLIC_IF_WSO),
     
     .scan_mode(scan_mode),
     .scan_enable(scan_enable),
     .reset_n(hdbt_hlic_if_sys_reset_n),
     .clk(hdbt_hlic_if_sys_clk),
     .bist_reset_n(bist_reset_n),
     .bist_clk(bist_clk)
     );

   
   
   
   

   

   
   Snir_link_reset_regs
      #(.w_add_bus (w_add_bus ),
        .w_data_bus(w_data_bus),
        .REG_SPACE (32'h90050000), .REG_MASK(32'h0000ffff)) Snir_link_reset_regs_inst
      (
     .snir_modules_sys_reset_n_31_0_(snir_modules_sys_reset_n[31:0]),
     .snir_modules_sys_reset_done_31_0_(snir_modules_sys_reset_done[31:0]),
     .snir_modules_other_reset_n(snir_modules_other_reset_n),
     .snir_modules_other_reset_done(snir_modules_other_reset_done),
     .snir_modules_sys_reset_n_63_32_(snir_modules_sys_reset_n[63:32]),
     .snir_modules_sys_reset_done_63_32_(snir_modules_sys_reset_done[63:32]),
     
     .Snir_link_regs_bus_add(Snir_link_regs_bus_add),
     .Snir_link_regs_bus_wr(Snir_link_regs_bus_wr),
     .Snir_link_regs_bus_rd(Snir_link_regs_bus_rd),
     .Snir_link_regs_bus_ack(Snir_link_regs_bus_ack),
     .Snir_link_regs_bus_data_rd(Snir_link_regs_bus_data_rd),
     .add_bus(link_top_regs_rif_add_bus),
     .data_bus(link_top_regs_rif_data_wr),
     .bus_wr(link_top_regs_rif_wr),
     .byte_en(link_top_regs_rif_byte_en),
     .bus_rd(link_top_regs_rif_rd),
     .bus_ack(link_top_regs_rif_ack),
     .data_bus_rd(link_top_regs_rif_data_rd),
     .scan_enable(scan_enable),
     .clk(sys_clk),
     .reset_n(sys_reset_n)
   );


   Snir_link_regs
      #(.w_add_bus (w_add_bus ),
        .w_data_bus(w_data_bus),
        .REG_SPACE (32'h90060000), .REG_MASK(32'h0000ffff)) Snir_link_regs_inst
      (
     .snk_pcs_c_pam_bucket_disable(snk_pcs_c_pam_bucket_disable),
     .snk_pcs_Drift_from_cpu(snk_pcs_Drift_from_cpu),
     .src_pcs_c_src_pcs_aux_mode(src_pcs_c_src_pcs_aux_mode),
     .src_pcs_Drift_from_cpu_Src(src_pcs_Drift_from_cpu_Src),
     .bc_msio_tadp_nibble_mode(bc_msio_tadp_nibble_mode),
     .auxhdbtsched_Msio_NibbleMode(auxhdbtsched_Msio_NibbleMode),
     .auxhdbtsched_AUX_AYALON1_MODE(auxhdbtsched_AUX_AYALON1_MODE),
     .hdmic_cec_in_trans(hdmic_cec_in_trans),
     .hdmic_ddc_pds_ack(hdmic_ddc_pds_ack),
     .hdmic_ddc_slv_used_int(hdmic_ddc_slv_used_int),
     .p1_reg_pcr_TMDS_MN_FRZ(p1_reg_pcr_TMDS_MN_FRZ),
     .p1_reg_pcr_FsLimitEn(p1_reg_pcr_FsLimitEn),
     .snk_pcs_snk_1_var_mode_en(snk_pcs_snk_1_var_mode_en),
     .snk_pcs_snk_2_var_mode_en(snk_pcs_snk_2_var_mode_en),
     .bc_msio_tadp_ignore_crc(bc_msio_tadp_ignore_crc),
     .bc_pdif_op_mode(bc_pdif_op_mode),
     .auxhdbtsched_eth_sync_en(auxhdbtsched_eth_sync_en),
     .hdmic_ddc_slv_stop_int(hdmic_ddc_slv_stop_int),
     .MAIN_token_dir(MAIN_token_dir),
     .snk_pcs_snk_1_PktCombine_token0_en(snk_pcs_snk_1_PktCombine_token0_en),
     .snk_pcs_snk_2_PktCombine_token0_en(snk_pcs_snk_2_PktCombine_token0_en),
     .bc_msio_tadp_data_Lsb_First(bc_msio_tadp_data_Lsb_First),
     .bc_link_bc_hlic_pkt_prio(bc_link_bc_hlic_pkt_prio),
     .auxhdbtsched_lppf_mode(auxhdbtsched_lppf_mode),
     .lppf_lppf_start_silent_en(lppf_lppf_start_silent_en),
     .hdmic_ddc_mst_gen_req(hdmic_ddc_mst_gen_req),
     .MAIN_pkt_all(MAIN_pkt_all),
     .p1_reg_pcr_TMDS_MN_DIFF_SLCT(p1_reg_pcr_TMDS_MN_DIFF_SLCT),
     .snk_pcs_snk_1_PktCombine_token1_en(snk_pcs_snk_1_PktCombine_token1_en),
     .snk_pcs_snk_2_PktCombine_token1_en(snk_pcs_snk_2_PktCombine_token1_en),
     .snk_pcs_Drift_ClkPkts_mon_enable(snk_pcs_Drift_ClkPkts_mon_enable),
     .src_pcs_Drift_ClkPkts_mon_enable_Src(src_pcs_Drift_ClkPkts_mon_enable_Src),
     .bc_MSIO_tadp_parse_En(bc_MSIO_tadp_parse_En),
     .bc_uart_link_uart_rx_frac_val(bc_uart_link_uart_rx_frac_val),
     .bc_uart_link_uart_tx_frac_val(bc_uart_link_uart_tx_frac_val),
     .bc_clock_pack_enable_tx(bc_clock_pack_enable_tx),
     .bc_a1_msio_packet_pam(bc_a1_msio_packet_pam),
     .auxhdbtsched_token_dir(auxhdbtsched_token_dir),
     .MAIN_pkt_lsb(MAIN_pkt_lsb),
     .p1_reg_pcr_TMDS_MN_ACC_PERIOD_SLCT(p1_reg_pcr_TMDS_MN_ACC_PERIOD_SLCT),
     .src_pcs_Drift_ClkPkts_mon_enable_Src_minRD(src_pcs_Drift_ClkPkts_mon_enable_Src_minRD),
     .bc_msio_tadp_ayalon1_mode(bc_msio_tadp_ayalon1_mode),
     .bc_msio_tadp_rx_stm_end(bc_msio_tadp_rx_stm_end),
     .bc_msio_tadp_tx_stm_end(bc_msio_tadp_tx_stm_end),
     .bc_msio_rx_stm_end(bc_msio_rx_stm_end),
     .bc_msio_tx_stm_end(bc_msio_tx_stm_end),
     .auxhdbtsched_packet_pam(auxhdbtsched_packet_pam),
     .p1_reg_pcr_TMDS_SSC_RST(p1_reg_pcr_TMDS_SSC_RST),
     .bc_msio_err_clr(bc_msio_err_clr),
     .bc_cir_cir_rx_data_num_in(bc_cir_cir_rx_data_num_in),
     .bc_mn_steady(bc_mn_steady),
     .auxhdbtsched_m2a_Data_Lsb_First(auxhdbtsched_m2a_Data_Lsb_First),
     .hdmic_ddc_i2c_delay(hdmic_ddc_i2c_delay),
     .p1_reg_pcr_TMDS_FO_DIFF_THR(p1_reg_pcr_TMDS_FO_DIFF_THR),
     .bc_MSIO_tadp_gen_En(bc_MSIO_tadp_gen_En),
     .bc_cir_cir_rx_prot(bc_cir_cir_rx_prot),
     .bc_RemoveZeroExt_en(bc_RemoveZeroExt_en),
     .auxhdbtsched_dauxdisp_spare_dest(auxhdbtsched_dauxdisp_spare_dest),
     .auxhdbtsched_low_pkt_num(auxhdbtsched_low_pkt_num),
     .high_pkt_num(high_pkt_num),
     .snk_pcs_Drift_ClkPkts_mon_clk_sub_type(snk_pcs_Drift_ClkPkts_mon_clk_sub_type),
     .src_pcs_Drift_ClkPkts_mon_clk_sub_type_Src(src_pcs_Drift_ClkPkts_mon_clk_sub_type_Src),
     .bc_msio_tadp_rx_last_state(bc_msio_tadp_rx_last_state),
     .bc_msio_tadp_tx_last_state(bc_msio_tadp_tx_last_state),
     .bc_msio_tadp_clk_scale(bc_msio_tadp_clk_scale),
     .bc_cir_cir_rx_lsb_first(bc_cir_cir_rx_lsb_first),
     .bc_uart_link_uart_tx_fifo_decim(bc_uart_link_uart_tx_fifo_decim),
     .bc_TMDS_MN_STEADY_THR(bc_TMDS_MN_STEADY_THR),
     .bc_msio_rx_last_state(bc_msio_rx_last_state),
     .bc_msio_tx_last_state(bc_msio_tx_last_state),
     .bc_clk_scale(bc_clk_scale),
     .auxhdbtsched_packet_all(auxhdbtsched_packet_all),
     .auxhdbtsched_OutPakSize(auxhdbtsched_OutPakSize),
     .hdmic_cec_block_rise_time(hdmic_cec_block_rise_time),
     .hdmic_ddc_mst_gen_used(hdmic_ddc_mst_gen_used),
     .snk_pcs_snk_pcs_if_sd(snk_pcs_snk_pcs_if_sd),
     .src_pcs_Drift_ClkPkts_mon_clk_sub_type_Src_minRD(src_pcs_Drift_ClkPkts_mon_clk_sub_type_Src_minRD),
     .src_pcs_mainbuffer_1_words_in_ram_sync(src_pcs_mainbuffer_1_words_in_ram_sync),
     .snk_pcs_c_snk_pcs_max_requests_num_MinRD(snk_pcs_c_snk_pcs_max_requests_num_MinRD),
     .bc_msio_tadp_tx_invert(bc_msio_tadp_tx_invert),
     .bc_msio_tadp_pam(bc_msio_tadp_pam),
     .lppf_lppf_max_data_size(lppf_lppf_max_data_size),
     .hdmic_ddc_tsu_data(hdmic_ddc_tsu_data),
     .hdmic_ddc_slv_used_thr(hdmic_ddc_slv_used_thr),
     .p1_reg_pcr_minus1_compare(p1_reg_pcr_minus1_compare),
     .p1_reg_pcr_TMDS_FO_CHANGE_THR(p1_reg_pcr_TMDS_FO_CHANGE_THR),
     .snk_pcs_DSP_Path_1_En(snk_pcs_DSP_Path_1_En),
     .snk_pcs_Remove_Uprotected(snk_pcs_Remove_Uprotected),
     .bc_msio_rx_invert(bc_msio_rx_invert),
     .auxhdbtsched_high_pkt_num(auxhdbtsched_high_pkt_num),
     .hdmic_ddc_data_pre_en(hdmic_ddc_data_pre_en),
     .hdmic_ddc_slv_used_mask(hdmic_ddc_slv_used_mask),
     .low_pkt_num(low_pkt_num),
     .Main_A1_mode(Main_A1_mode),
     .p1_reg_pcr_plus1_tokin(p1_reg_pcr_plus1_tokin),
     .snk_pcs_DSP_Path_0_En(snk_pcs_DSP_Path_0_En),
     .snk_pcs_MainRtrDet2_en(snk_pcs_MainRtrDet2_en),
     .bc_msio_tadp_qual(bc_msio_tadp_qual),
     .bc_msio_tx_enable(bc_msio_tx_enable),
     .lppf_lppf_rx_descr_lock(lppf_lppf_rx_descr_lock),
     .hdmic_ddc_data_idle_en(hdmic_ddc_data_idle_en),
     .hdmic_ddc_slv_stop_mask(hdmic_ddc_slv_stop_mask),
     .hdmic_ddc_i2c_pull_delay(hdmic_ddc_i2c_pull_delay),
     .hdmic_ddc_mst_mon_req(hdmic_ddc_mst_mon_req),
     .Main_aggr_en(Main_aggr_en),
     .p1_reg_pcr_clko_bypass(p1_reg_pcr_clko_bypass),
     .p1_reg_pcr_plus1_pd(p1_reg_pcr_plus1_pd),
     .p1_reg_pcr_fo_est_out(p1_reg_pcr_fo_est_out),
     .p1_reg_pcr_TMDS_SSC_MAX(p1_reg_pcr_TMDS_SSC_MAX),
     .snk_pcs_WriteGoodHeader(snk_pcs_WriteGoodHeader),
     .bist_p1_c_tx_bist_tadp_packet_prio(bist_p1_c_tx_bist_tadp_packet_prio),
     .bist_p2_c_tx_bist_tadp_packet_prio(bist_p2_c_tx_bist_tadp_packet_prio),
     .bist_p3_c_tx_bist_tadp_packet_prio(bist_p3_c_tx_bist_tadp_packet_prio),
     .bc_TMDS_MN_LEAK_SLCT(bc_TMDS_MN_LEAK_SLCT),
     .bc_msio_rx_enable(bc_msio_rx_enable),
     .lppf_lppf_rx_active(lppf_lppf_rx_active),
     .hdbt_hlic_Gen_Mode(hdbt_hlic_Gen_Mode),
     .hdmic_ddc_edid_offset_rst(hdmic_ddc_edid_offset_rst),
     .hdmic_ddc_mst_gen_mask(hdmic_ddc_mst_gen_mask),
     .aux2main_data_lsb_first(aux2main_data_lsb_first),
     .p1_reg_pcr_drop_pkts(p1_reg_pcr_drop_pkts),
     .snk_pcs_MainRtrDet_en(snk_pcs_MainRtrDet_en),
     .bc_msio_tadp_prio(bc_msio_tadp_prio),
     .auxhdbtsched_gap_between_bursts(auxhdbtsched_gap_between_bursts),
     .auxhdbtsched_A1_HDMIC_ID(auxhdbtsched_A1_HDMIC_ID),
     .auxhdbtsched_AUX_NBS1_EN_3(auxhdbtsched_AUX_NBS1_EN_3),
     .lppf_lppf_start_foll_info_data(lppf_lppf_start_foll_info_data),
     .hdmic_cpu_fifo_cec_ing_rx_data_rdy(hdmic_cpu_fifo_cec_ing_rx_data_rdy),
     .hdmic_cec_pu_enable(hdmic_cec_pu_enable),
     .hdmic_ddc_edid_seg_sel(hdmic_ddc_edid_seg_sel),
     .hdmic_ddc_mst_mon_mask(hdmic_ddc_mst_mon_mask),
     .MAIN_Eth_PAM(MAIN_Eth_PAM),
     .p1_reg_pcr_enable(p1_reg_pcr_enable),
     .p1_reg_pcr_TMDS_SD_CYCLE(p1_reg_pcr_TMDS_SD_CYCLE),
     .bist_p1_c_tx_bist_tadp_packet_qual(bist_p1_c_tx_bist_tadp_packet_qual),
     .bist_p2_c_tx_bist_tadp_packet_qual(bist_p2_c_tx_bist_tadp_packet_qual),
     .bist_p3_c_tx_bist_tadp_packet_qual(bist_p3_c_tx_bist_tadp_packet_qual),
     .bc_msio_tadp_rx_state03_data(bc_msio_tadp_rx_state03_data),
     .bc_msio_tadp_rx_state07_data(bc_msio_tadp_rx_state07_data),
     .bc_msio_tadp_tx_state03_data(bc_msio_tadp_tx_state03_data),
     .bc_msio_tadp_tx_state07_data(bc_msio_tadp_tx_state07_data),
     .bc_TMDS_MN_DIFF_SLCT(bc_TMDS_MN_DIFF_SLCT),
     .bc_msio_rx_state03_data(bc_msio_rx_state03_data),
     .bc_msio_tx_state03_data(bc_msio_tx_state03_data),
     .bc_msio_tx_state07_data(bc_msio_tx_state07_data),
     .bc_msio_rx_state07_data(bc_msio_rx_state07_data),
     .auxhdbtsched_packet_lsb(auxhdbtsched_packet_lsb),
     .auxhdbtsched_eth_ext_pad_en(auxhdbtsched_eth_ext_pad_en),
     .auxhdbtsched_AUX_ETH_SID(auxhdbtsched_AUX_ETH_SID),
     .auxhdbtsched_AUX_NBS2_EN_7(auxhdbtsched_AUX_NBS2_EN_7),
     .hdmic_cec_tx_gen_contention(hdmic_cec_tx_gen_contention),
     .hdmic_ddc_slv_gen_mask(hdmic_ddc_slv_gen_mask),
     .lnk_LastExtShift(lnk_LastExtShift),
     .MAIN_Eth_Dis_Sprs(MAIN_Eth_Dis_Sprs),
     .p1_reg_pcr_vf_too_high_mode_pass(p1_reg_pcr_vf_too_high_mode_pass),
     .p1_reg_pcr_TMDS_MN_MODE(p1_reg_pcr_TMDS_MN_MODE),
     .bc_msio_tadp_rx_invert(bc_msio_tadp_rx_invert),
     .bc_msio_tadp_ext_data(bc_msio_tadp_ext_data),
     .bc_link_bc_hlic_data_num(bc_link_bc_hlic_data_num),
     .bc_snirlnk_rx_max_data_p3(bc_snirlnk_rx_max_data_p3),
     .auxhdbtsched_packet_sid_req(auxhdbtsched_packet_sid_req),
     .auxhdbtsched_eth_ptp_en(auxhdbtsched_eth_ptp_en),
     .auxhdbtsched_AUX_NBS3_EN_F(auxhdbtsched_AUX_NBS3_EN_F),
     .lppf_lppf_cir_uart_rx_hw_mode(lppf_lppf_cir_uart_rx_hw_mode),
     .hdmic_ddc_mode_mstr_slv(hdmic_ddc_mode_mstr_slv),
     .hdmic_cec_time_err_as_cont(hdmic_cec_time_err_as_cont),
     .hdmic_ddc_slv_mon_mask(hdmic_ddc_slv_mon_mask),
     .lnk_EnableVariationMode(lnk_EnableVariationMode),
     .MAIN_Eth_prot(MAIN_Eth_prot),
     .p1_reg_pcr_clko_Enable(p1_reg_pcr_clko_Enable),
     .p1_reg_pcr_TMDS_MN_STEADY_THR(p1_reg_pcr_TMDS_MN_STEADY_THR),
     .snk_pcs_c_snk_pcs_max_requests_num(snk_pcs_c_snk_pcs_max_requests_num),
     .snk_pcs_Drift_ClkPkts_mon_sid(snk_pcs_Drift_ClkPkts_mon_sid),
     .snk_pcs_packetdelay_MinRD(snk_pcs_packetdelay_MinRD),
     .src_pcs_Drift_ClkPkts_mon_sid_Src(src_pcs_Drift_ClkPkts_mon_sid_Src),
     .bist_p1_c_tx_bist_tadp_packet_delay_max(bist_p1_c_tx_bist_tadp_packet_delay_max),
     .bist_p2_c_tx_bist_tadp_packet_delay_max(bist_p2_c_tx_bist_tadp_packet_delay_max),
     .bist_p3_c_tx_bist_tadp_packet_delay_max(bist_p3_c_tx_bist_tadp_packet_delay_max),
     .bc_msio_tadp_tx_enable(bc_msio_tadp_tx_enable),
     .bc_cir_cir_rx_sid(bc_cir_cir_rx_sid),
     .bc_cir_cir_tx_carrier(bc_cir_cir_tx_carrier),
     .bc_uart_link_uart_rx_int_val(bc_uart_link_uart_rx_int_val),
     .bc_uart_link_uart_rx_idle_durtion(bc_uart_link_uart_rx_idle_durtion),
     .bc_uart_link_uart_tx_int_val(bc_uart_link_uart_tx_int_val),
     .bc_uart_link_uart_s_rx_fifo_used(bc_uart_link_uart_s_rx_fifo_used),
     .bc_snirlnk_tx_max_data_p3(bc_snirlnk_tx_max_data_p3),
     .auxhdbtsched_AUX_TOK_TYPE(auxhdbtsched_AUX_TOK_TYPE),
     .auxhdbtsched_packet_sid(auxhdbtsched_packet_sid),
     .auxhdbtsched_Hlic_Data_Lsb_First(auxhdbtsched_Hlic_Data_Lsb_First),
     .auxhdbtsched_snir_auxhdbtsched_Enable(auxhdbtsched_snir_auxhdbtsched_Enable),
     .auxhdbtsched_auxhdbt_fifo_rd_thrshold(auxhdbtsched_auxhdbt_fifo_rd_thrshold),
     .auxhdbtsched_max_p3_tok(auxhdbtsched_max_p3_tok),
     .auxhdbtsched_AUX_NBS3_EN_5(auxhdbtsched_AUX_NBS3_EN_5),
     .lppf_lppf_start_tx_stm(lppf_lppf_start_tx_stm),
     .lppf_lppf_stype_packets(lppf_lppf_stype_packets),
     .lppf_lppf_cir_uart_tx_hw_mode(lppf_lppf_cir_uart_tx_hw_mode),
     .lppf_AUX_TOK_TYPE(lppf_AUX_TOK_TYPE),
     .lppf_lppf_start_init_idle_max(lppf_lppf_start_init_idle_max),
     .lppf_lppf_start_foll_idle_max(lppf_lppf_start_foll_idle_max),
     .lppf_lppf_stype_01_packets(lppf_lppf_stype_01_packets),
     .lppf_lppf_stype_03_packets(lppf_lppf_stype_03_packets),
     .lppf_lppf_stype_05_packets(lppf_lppf_stype_05_packets),
     .lppf_lppf_stype_07_packets(lppf_lppf_stype_07_packets),
     .lppf_lppf_stype_09_packets(lppf_lppf_stype_09_packets),
     .lppf_lppf_stype_11_packets(lppf_lppf_stype_11_packets),
     .lppf_lppf_stype_13_packets(lppf_lppf_stype_13_packets),
     .lppf_lppf_stype_15_packets(lppf_lppf_stype_15_packets),
     .lppf_lppf_short_packets(lppf_lppf_short_packets),
     .lppf_lppf_idle_error(lppf_lppf_idle_error),
     .lppf_lppf_type_error(lppf_lppf_type_error),
     .lppf_lppf_max_data_err(lppf_lppf_max_data_err),
     .hdbt_hlic_PTYPE(hdbt_hlic_PTYPE),
     .hdbt_hlic_ACK_WD(hdbt_hlic_ACK_WD),
     .hdmic_cpu_egr_rxs_bypass(hdmic_cpu_egr_rxs_bypass),
     .hdmic_cpu_fifo_cec_egr_rx_data_rdy(hdmic_cpu_fifo_cec_egr_rx_data_rdy),
     .hdmic_cec_error_out_time(hdmic_cec_error_out_time),
     .hdmic_cec_cont_add(hdmic_cec_cont_add),
     .hdmic_cec_delay_fall(hdmic_cec_delay_fall),
     .hdmic_cec_sb_nom(hdmic_cec_sb_nom),
     .hdmic_cec_dat_h_nom(hdmic_cec_dat_h_nom),
     .hdmic_cec_dat_samp(hdmic_cec_dat_samp),
     .hdmic_cec_ack_release(hdmic_cec_ack_release),
     .hdmic_cec_ack_samp(hdmic_cec_ack_samp),
     .hdmic_cec_mon_table(hdmic_cec_mon_table),
     .hdmic_cec_auto_nack(hdmic_cec_auto_nack),
     .hdmic_cec_sb_l_max(hdmic_cec_sb_l_max),
     .hdmic_cec_sb_falling_edges_max(hdmic_cec_sb_falling_edges_max),
     .hdmic_cec_delay_same_initiator(hdmic_cec_delay_same_initiator),
     .hdmic_cec_delay_retrans(hdmic_cec_delay_retrans),
     .hdmic_cec_tx_start(hdmic_cec_tx_start),
     .hdmic_cec_tx_ack_h_2(hdmic_cec_tx_ack_h_2),
     .hdmic_cec_auto_h_nack(hdmic_cec_auto_h_nack),
     .hdmic_ddc_allow_ram_init(hdmic_ddc_allow_ram_init),
     .hdmic_ddc_mst_mon_used(hdmic_ddc_mst_mon_used),
     .aux2main_sid_required(aux2main_sid_required),
     .Main_aggr_type(Main_aggr_type),
     .p1_reg_pcr_clko_MN_LsbFirst(p1_reg_pcr_clko_MN_LsbFirst),
     .p1_reg_pcr_vf_start(p1_reg_pcr_vf_start),
     .snk_pcs_snk_pcs_if_ds(snk_pcs_snk_pcs_if_ds),
     .snk_pcs_snk_1_cfg_ext_rd_type(snk_pcs_snk_1_cfg_ext_rd_type),
     .snk_pcs_snk_2_cfg_ext_rd_type(snk_pcs_snk_2_cfg_ext_rd_type),
     .src_pcs_MainHdiRemPid_enable_minRD(src_pcs_MainHdiRemPid_enable_minRD),
     .src_pcs_cfg_ext_rd_type(src_pcs_cfg_ext_rd_type),
     .src_pcs_Drift_ClkPkts_mon_sid_Src_minRD(src_pcs_Drift_ClkPkts_mon_sid_Src_minRD),
     .src_pcs_mainbuffer_0_words_in_ram_sync(src_pcs_mainbuffer_0_words_in_ram_sync),
     .snk_pcs_c_snk_pcs_packetdelay(snk_pcs_c_snk_pcs_packetdelay),
     .snk_pcs_c_snk_pcs_ret_enable_MinRD(snk_pcs_c_snk_pcs_ret_enable_MinRD),
     .bc_msio_tadp_rx_enable(bc_msio_tadp_rx_enable),
     .bc_link_bc_hlic_pkt_qual(bc_link_bc_hlic_pkt_qual),
     .bc_TMDS_MN_CHANGE_THR(bc_TMDS_MN_CHANGE_THR),
     .auxhdbtsched_Hlic_NibbleMode(auxhdbtsched_Hlic_NibbleMode),
     .auxhdbtsched_AUX_HLIC_A1_SHIFT(auxhdbtsched_AUX_HLIC_A1_SHIFT),
     .auxhdbtsched_AUX_NBS3_EN_1(auxhdbtsched_AUX_NBS3_EN_1),
     .lppf_a1_lppf_sw_rd_ready(lppf_a1_lppf_sw_rd_ready),
     .lppf_lppf_start_link_active_negate(lppf_lppf_start_link_active_negate),
     .lppf_lppf_start_init_info_data(lppf_lppf_start_init_info_data),
     .hdbt_hlic_pdif_is_enabled(hdbt_hlic_pdif_is_enabled),
     .src_pcs_pamconv_bypass_minRD(src_pcs_pamconv_bypass_minRD),
     .bc_msio_tadp_ext(bc_msio_tadp_ext),
     .bc_rx_sync_mode(bc_rx_sync_mode),
     .auxhdbtsched_Hdmic_Data_Lsb_First(auxhdbtsched_Hdmic_Data_Lsb_First),
     .auxhdbtsched_AUX_MSIO_A1_FLIP(auxhdbtsched_AUX_MSIO_A1_FLIP),
     .auxhdbtsched_AUX_NBS1_NIBB_ORDER_3(auxhdbtsched_AUX_NBS1_NIBB_ORDER_3),
     .lppf_lppf_start_link_active_assert(lppf_lppf_start_link_active_assert),
     .lppf_lppf_start_silent_req(lppf_lppf_start_silent_req),
     .hdbt_hlic_A1_MODE(hdbt_hlic_A1_MODE),
     .p1_reg_pcr_clko_Mn_Ext_Info(p1_reg_pcr_clko_Mn_Ext_Info),
     .src_pcs_ret_enable_minRD(src_pcs_ret_enable_minRD),
     .src_pcs_c_src_pcs_idle_delay(src_pcs_c_src_pcs_idle_delay),
     .bist_p1_c_tx_bist_tadp_packet_type(bist_p1_c_tx_bist_tadp_packet_type),
     .bist_p2_c_tx_bist_tadp_packet_type(bist_p2_c_tx_bist_tadp_packet_type),
     .bist_p3_c_tx_bist_tadp_packet_type(bist_p3_c_tx_bist_tadp_packet_type),
     .bc_uart_link_uart_IgnoreCRC(bc_uart_link_uart_IgnoreCRC),
     .auxhdbtsched_Hdmic_NibbleMode(auxhdbtsched_Hdmic_NibbleMode),
     .auxhdbtsched_Hlic_IgnoreCRC(auxhdbtsched_Hlic_IgnoreCRC),
     .auxhdbtsched_AUX_NBS2_NIBB_ORDER_7(auxhdbtsched_AUX_NBS2_NIBB_ORDER_7),
     .lppf_lppf_start_rx_active_negate(lppf_lppf_start_rx_active_negate),
     .lppf_lppf_start_foll_full_en(lppf_lppf_start_foll_full_en),
     .hdbt_hlic_A1_LPPF(hdbt_hlic_A1_LPPF),
     .hdmic_cpu_fifo_cec_egr_tx_data_rdy(hdmic_cpu_fifo_cec_egr_tx_data_rdy),
     .hdmic_cpu_fifo_cec_ing_rx_used(hdmic_cpu_fifo_cec_ing_rx_used),
     .hdmic_ddc_slv_gen_req(hdmic_ddc_slv_gen_req),
     .p1_reg_pcr_clko_Mn_Ext(p1_reg_pcr_clko_Mn_Ext),
     .p1_reg_pcr_TMDS_MN_LEAK_SLCT(p1_reg_pcr_TMDS_MN_LEAK_SLCT),
     .src_pcs_c_src_pcs_crc_spec3_mode(src_pcs_c_src_pcs_crc_spec3_mode),
     .bc_msio_tadp_rx_state02_data(bc_msio_tadp_rx_state02_data),
     .bc_msio_tadp_rx_state06_data(bc_msio_tadp_rx_state06_data),
     .bc_msio_tadp_tx_state02_data(bc_msio_tadp_tx_state02_data),
     .bc_msio_tadp_tx_state06_data(bc_msio_tadp_tx_state06_data),
     .bc_uart_link_uart_tx_fifo_thr_high(bc_uart_link_uart_tx_fifo_thr_high),
     .bc_uart_link_uart_Pkt_Gen_En(bc_uart_link_uart_Pkt_Gen_En),
     .bc_msio_rx_state02_data(bc_msio_rx_state02_data),
     .bc_msio_tx_state02_data(bc_msio_tx_state02_data),
     .bc_msio_tx_state06_data(bc_msio_tx_state06_data),
     .bc_msio_rx_state06_data(bc_msio_rx_state06_data),
     .bc_Drift_ClkPkts_mon_enable(bc_Drift_ClkPkts_mon_enable),
     .auxhdbtsched_Msio_Data_Lsb_First(auxhdbtsched_Msio_Data_Lsb_First),
     .auxhdbtsched_Msio_IgnoreCRC(auxhdbtsched_Msio_IgnoreCRC),
     .auxhdbtsched_AUX_NBS3_NIBB_ORDER_F(auxhdbtsched_AUX_NBS3_NIBB_ORDER_F),
     .lppf_lppf_start_rx_active_assert(lppf_lppf_start_rx_active_assert),
     .lppf_lppf_start_foll_full_req(lppf_lppf_start_foll_full_req),
     .hdbt_hlic_rx_cmd_fifo_overflow(hdbt_hlic_rx_cmd_fifo_overflow),
     .hdbt_hlic_Lsb_First(hdbt_hlic_Lsb_First),
     .hdmic_cpu_egr_tx_rxs(hdmic_cpu_egr_tx_rxs),
     .hdmic_ing_gen_hdmi_ctrl_delay(hdmic_ing_gen_hdmi_ctrl_delay),
     .hdmic_egr_gen_hdmi_ctrl_delay(hdmic_egr_gen_hdmi_ctrl_delay),
     .hdmic_ddc_edid1_addr(hdmic_ddc_edid1_addr),
     .Main_c_max_pld_len(Main_c_max_pld_len),
     .p1_reg_pcr_clko_MN_Prot(p1_reg_pcr_clko_MN_Prot),
     .snk_pcs_c_snk_pcs_maxrts_pam(snk_pcs_c_snk_pcs_maxrts_pam),
     .src_pcs_c_src_pcs_crc_header_crc(src_pcs_c_src_pcs_crc_header_crc),
     .bist_p1_c_tx_bist_tadp_packet_pam(bist_p1_c_tx_bist_tadp_packet_pam),
     .bist_p2_c_tx_bist_tadp_packet_pam(bist_p2_c_tx_bist_tadp_packet_pam),
     .bist_p3_c_tx_bist_tadp_packet_pam(bist_p3_c_tx_bist_tadp_packet_pam),
     .bc_uart_link_uart_xoff_val(bc_uart_link_uart_xoff_val),
     .auxhdbtsched_Hdmic_IgnoreCRC(auxhdbtsched_Hdmic_IgnoreCRC),
     .auxhdbtsched_AUX_NBS3_NIBB_ORDER_5(auxhdbtsched_AUX_NBS3_NIBB_ORDER_5),
     .lppf_lppf_start_descr_lock_negate(lppf_lppf_start_descr_lock_negate),
     .lppf_lppf_start_foll_info_req(lppf_lppf_start_foll_info_req),
     .hdbt_hlic_frame_done(hdbt_hlic_frame_done),
     .hdbt_hlic_prot(hdbt_hlic_prot),
     .hdbt_hlic_hlen(hdbt_hlic_hlen),
     .hdmic_cpu_egr_v5_bypass(hdmic_cpu_egr_v5_bypass),
     .hdmic_ing_gen_prot(hdmic_ing_gen_prot),
     .hdmic_egr_gen_prot(hdmic_egr_gen_prot),
     .hdmic_ddc_edid1_en(hdmic_ddc_edid1_en),
     .snk_pcs_c_snk_pcs_disable_gap_req(snk_pcs_c_snk_pcs_disable_gap_req),
     .src_pcs_MainHdiRemPid_enable_fixRD(src_pcs_MainHdiRemPid_enable_fixRD),
     .bc_msio_tadp_ptype(bc_msio_tadp_ptype),
     .bc_drift_drfwin_rx(bc_drift_drfwin_rx),
     .bc_msio_ptype(bc_msio_ptype),
     .auxhdbtsched_AUX_ETH_TOKENS_PART(auxhdbtsched_AUX_ETH_TOKENS_PART),
     .auxhdbtsched_AUX_HlicParseEnable(auxhdbtsched_AUX_HlicParseEnable),
     .auxhdbtsched_AUX_NBS3_NIBB_ORDER_1(auxhdbtsched_AUX_NBS3_NIBB_ORDER_1),
     .lppf_lppf_start_descr_lock_assert(lppf_lppf_start_descr_lock_assert),
     .lppf_lppf_start_foll_idle_req(lppf_lppf_start_foll_idle_req),
     .hdbt_hlic_last_bad_ack(hdbt_hlic_last_bad_ack),
     .hdmic_cpu_egr_tx_v5(hdmic_cpu_egr_tx_v5),
     .hdmic_cpu_fifo_cec_egr_tx_clr(hdmic_cpu_fifo_cec_egr_tx_clr),
     .hdmic_cpu_fifo_cec_egr_rx_used(hdmic_cpu_fifo_cec_egr_rx_used),
     .hdmic_cec_mode_pt(hdmic_cec_mode_pt),
     .p1_reg_pcr_clko_MN_Pam(p1_reg_pcr_clko_MN_Pam),
     .snk_pcs_c_snk_pcs_retr_prot(snk_pcs_c_snk_pcs_retr_prot),
     .src_pcs_c_src_pcs_null_enable(src_pcs_c_src_pcs_null_enable),
     .bc_msio_tadp_rx_sync_mode(bc_msio_tadp_rx_sync_mode),
     .bc_msio_tadp_prot(bc_msio_tadp_prot),
     .bc_cir_cir_sw_empty(bc_cir_cir_sw_empty),
     .bc_uart_link_uart_pkt_size(bc_uart_link_uart_pkt_size),
     .bc_snirlnk_rx_max_data_p2(bc_snirlnk_rx_max_data_p2),
     .auxhdbtsched_AUX_MsioParseEnable(auxhdbtsched_AUX_MsioParseEnable),
     .lppf_lppf_start_foll_idle_max_err(lppf_lppf_start_foll_idle_max_err),
     .lppf_lppf_start_init_full_en(lppf_lppf_start_init_full_en),
     .hdbt_hlic_write_ready(hdbt_hlic_write_ready),
     .hdmic_cec_egr_bypass(hdmic_cec_egr_bypass),
     .MAIN_Eth_SID(MAIN_Eth_SID),
     .p1_reg_pcr_mn_zero_clr(p1_reg_pcr_mn_zero_clr),
     .p1_reg_pcr_TMDS_FIFO_LOOP_REF(p1_reg_pcr_TMDS_FIFO_LOOP_REF),
     .p1_reg_pcr_TMDS_FO_LEAK_SLCT(p1_reg_pcr_TMDS_FO_LEAK_SLCT),
     .snk_pcs_c_snk_pcs_retr_lsb_first(snk_pcs_c_snk_pcs_retr_lsb_first),
     .snk_pcs_DriftSID(snk_pcs_DriftSID),
     .src_pcs_c_src_pcs_crc_lsb_res(src_pcs_c_src_pcs_crc_lsb_res),
     .src_pcs_DriftSID_Src(src_pcs_DriftSID_Src),
     .bist_p1_c_tx_bist_tadp_packet_len_max(bist_p1_c_tx_bist_tadp_packet_len_max),
     .bist_p2_c_tx_bist_tadp_packet_len_max(bist_p2_c_tx_bist_tadp_packet_len_max),
     .bist_p3_c_tx_bist_tadp_packet_len_max(bist_p3_c_tx_bist_tadp_packet_len_max),
     .bc_msio_tadp_future(bc_msio_tadp_future),
     .bc_cir_cir_tx_time_out(bc_cir_cir_tx_time_out),
     .bc_cir_cir_tx_ignore_crc(bc_cir_cir_tx_ignore_crc),
     .bc_cir_cir_sw_full(bc_cir_cir_sw_full),
     .bc_uart_link_uart_max_bits_cnt(bc_uart_link_uart_max_bits_cnt),
     .bc_uart_link_uart_prot(bc_uart_link_uart_prot),
     .bc_snirlnk_tx_max_data_p2(bc_snirlnk_tx_max_data_p2),
     .bc_Drift_ClkPkts_mon_clk_sub_type(bc_Drift_ClkPkts_mon_clk_sub_type),
     .auxhdbtsched_AUX_HdmicParseEnable(auxhdbtsched_AUX_HdmicParseEnable),
     .auxhdbtsched_max_p2_tok(auxhdbtsched_max_p2_tok),
     .auxhdbtsched_AUX_NBS1_WEIGHT_3(auxhdbtsched_AUX_NBS1_WEIGHT_3),
     .lppf_a1_lppf_sw_rd_used(lppf_a1_lppf_sw_rd_used),
     .lppf_lppf_start_init_info_max_err(lppf_lppf_start_init_info_max_err),
     .lppf_lppf_start_init_full_req(lppf_lppf_start_init_full_req),
     .hdmic_cpu_ing_rxs_bypass(hdmic_cpu_ing_rxs_bypass),
     .hdmic_ddc_hdcp_reg_addr(hdmic_ddc_hdcp_reg_addr),
     .EthTokenDir(EthTokenDir),
     .Main_A1_hdmic_id(Main_A1_hdmic_id),
     .p1_reg_pcr_mn_change_clr(p1_reg_pcr_mn_change_clr),
     .p1_reg_pcr_bw_limit_out_cnt(p1_reg_pcr_bw_limit_out_cnt),
     .p1_reg_pcr_FSDownLimit(p1_reg_pcr_FSDownLimit),
     .p1_reg_pcr_TMDS_FIFO_LOOP_EN(p1_reg_pcr_TMDS_FIFO_LOOP_EN),
     .snk_pcs_snk_pcs_if_ls(snk_pcs_snk_pcs_if_ls),
     .src_pcs_cfg_sel_default_ch(src_pcs_cfg_sel_default_ch),
     .snk_pcs_c_snk_pcs_retr_pkt_gen_en(snk_pcs_c_snk_pcs_retr_pkt_gen_en),
     .snk_pcs_DriftA1Mode(snk_pcs_DriftA1Mode),
     .src_pcs_c_src_pcs_crc_inv_res(src_pcs_c_src_pcs_crc_inv_res),
     .src_pcs_DriftA1Mode_Src(src_pcs_DriftA1Mode_Src),
     .bc_cir_cir_tx_time_out_en(bc_cir_cir_tx_time_out_en),
     .bc_cir_cir_tx_lsb_first(bc_cir_cir_tx_lsb_first),
     .bc_cir_cir_sw_wr_rdy(bc_cir_cir_sw_wr_rdy),
     .bc_uart_link_uart_rx_oversampled(bc_uart_link_uart_rx_oversampled),
     .bc_uart_link_uart_tx_oversampled(bc_uart_link_uart_tx_oversampled),
     .bc_link_bc_hlic_pkt_sid(bc_link_bc_hlic_pkt_sid),
     .bc_snir_link_bc_RemoveZeroExt(bc_snir_link_bc_RemoveZeroExt),
     .bc_cir_from_io_select(bc_cir_from_io_select),
     .lppf_lppf_start_init_idle_max_err(lppf_lppf_start_init_idle_max_err),
     .lppf_lppf_start_init_done_req(lppf_lppf_start_init_done_req),
     .hdbt_hlic_SID(hdbt_hlic_SID),
     .hdmic_cpu_fifo_cec_egr_tx_used(hdmic_cpu_fifo_cec_egr_tx_used),
     .hdmic_cec_nack_all(hdmic_cec_nack_all),
     .hdmic_ddc_slv_gen_used(hdmic_ddc_slv_gen_used),
     .MAIN_eth_ext_pad_en(MAIN_eth_ext_pad_en),
     .p1_reg_pcr_clki_MN_IgnoreCRC(p1_reg_pcr_clki_MN_IgnoreCRC),
     .src_pcs_src_pcs_if_rtr_sd_fixRD(src_pcs_src_pcs_if_rtr_sd_fixRD),
     .snk_pcs_c_snk_pcs_header_crc(snk_pcs_c_snk_pcs_header_crc),
     .snk_pcs_DriftAddEn(snk_pcs_DriftAddEn),
     .src_pcs_c_src_pcs_crc_lsb_first(src_pcs_c_src_pcs_crc_lsb_first),
     .src_pcs_DriftAddEn_Src(src_pcs_DriftAddEn_Src),
     .bc_msio_tadp_rx_state01_data(bc_msio_tadp_rx_state01_data),
     .bc_msio_tadp_rx_state05_data(bc_msio_tadp_rx_state05_data),
     .bc_msio_tadp_tx_state01_data(bc_msio_tadp_tx_state01_data),
     .bc_msio_tadp_tx_state05_data(bc_msio_tadp_tx_state05_data),
     .bc_cir_cir_tx_carrier_last(bc_cir_cir_tx_carrier_last),
     .bc_msio_rx_state01_data(bc_msio_rx_state01_data),
     .bc_msio_tx_state01_data(bc_msio_tx_state01_data),
     .bc_msio_tx_state05_data(bc_msio_tx_state05_data),
     .bc_msio_rx_state05_data(bc_msio_rx_state05_data),
     .bc_uart_from_io_select(bc_uart_from_io_select),
     .auxhdbtsched_AUX_TX_DIVR(auxhdbtsched_AUX_TX_DIVR),
     .auxhdbtsched_local_sid_array_en(auxhdbtsched_local_sid_array_en),
     .auxhdbtsched_Main2Aux_pkt_stm(auxhdbtsched_Main2Aux_pkt_stm),
     .auxhdbtsched_AUX_NBS2_WEIGHT_7(auxhdbtsched_AUX_NBS2_WEIGHT_7),
     .lppf_lppf_start_init_info_req(lppf_lppf_start_init_info_req),
     .hdbt_hlic_rx_cmd_fifo_ovr_cnt_clr(hdbt_hlic_rx_cmd_fifo_ovr_cnt_clr),
     .hdbt_hlic_rx_stm(hdbt_hlic_rx_stm),
     .hdmic_cpu_egr_rx_rxs(hdmic_cpu_egr_rx_rxs),
     .hdmic_cpu_fifo_cec_ing_tx_data_rdy(hdmic_cpu_fifo_cec_ing_tx_data_rdy),
     .hdmic_cec_nack_brdcst(hdmic_cec_nack_brdcst),
     .Eth_Enable_Brg(Eth_Enable_Brg),
     .p1_reg_pcr_clki_MN_Lsb_First(p1_reg_pcr_clki_MN_Lsb_First),
     .p1_reg_pcr_TMDS_MN_INIT_DEV(p1_reg_pcr_TMDS_MN_INIT_DEV),
     .src_pcs_src_pcs_if_rtr_ds_fixRD(src_pcs_src_pcs_if_rtr_ds_fixRD),
     .src_pcs_DriftAddEn_Src_minRD(src_pcs_DriftAddEn_Src_minRD),
     .snk_pcs_c_snk_pcs_spec3_mode(snk_pcs_c_snk_pcs_spec3_mode),
     .snk_pcs_Drift_LsbFirst(snk_pcs_Drift_LsbFirst),
     .src_pcs_Drift_LsbFirst_Src(src_pcs_Drift_LsbFirst_Src),
     .bc_cir_cir_tx_carrier_en(bc_cir_cir_tx_carrier_en),
     .bc_uart_link_uart_tx_stop_bits(bc_uart_link_uart_tx_stop_bits),
     .bc_link_bc_hlic_pkt_ext_info(bc_link_bc_hlic_pkt_ext_info),
     .bc_link_bc_hlic_pkt_data_num(bc_link_bc_hlic_pkt_data_num),
     .bc_link_uart_tx_fifo_used(bc_link_uart_tx_fifo_used),
     .lppf_lppf_start_init_idle_req(lppf_lppf_start_init_idle_req),
     .hdbt_hlic_rx_cmd_fifo_overflow_clr(hdbt_hlic_rx_cmd_fifo_overflow_clr),
     .hdmic_cpu_egr_rx_v5(hdmic_cpu_egr_rx_v5),
     .hdmic_ddc_slv_mon_req(hdmic_ddc_slv_mon_req),
     .p1_reg_pcr_sw_flush(p1_reg_pcr_sw_flush),
     .p1_reg_pcr_fifo_loop_acc(p1_reg_pcr_fifo_loop_acc),
     .src_pcs_src_pcs_if_rtr_ls_fixRD(src_pcs_src_pcs_if_rtr_ls_fixRD),
     .snk_pcs_c_snk_pcs_pamconv_bypass(snk_pcs_c_snk_pcs_pamconv_bypass),
     .snk_pcs_snk_LastExtShift(snk_pcs_snk_LastExtShift),
     .snk_pcs_Gen_Mode(snk_pcs_Gen_Mode),
     .src_pcs_c_src_pcs_send_idle_protected(src_pcs_c_src_pcs_send_idle_protected),
     .src_pcs_LastExtShift(src_pcs_LastExtShift),
     .bist_p1_c_rx_bist_tadp_packet_sid(bist_p1_c_rx_bist_tadp_packet_sid),
     .bist_p2_c_rx_bist_tadp_packet_sid(bist_p2_c_rx_bist_tadp_packet_sid),
     .bist_p3_c_rx_bist_tadp_packet_sid(bist_p3_c_rx_bist_tadp_packet_sid),
     .bc_link_bc_hlic_pkt_ext(bc_link_bc_hlic_pkt_ext),
     .bc_snir_link_bc_lppf_mode(bc_snir_link_bc_lppf_mode),
     .auxhdbtsched_AUX_ETH_TOKENS_FULL(auxhdbtsched_AUX_ETH_TOKENS_FULL),
     .auxhdbtsched_P3_QUAL(auxhdbtsched_P3_QUAL),
     .auxhdbtsched_AUX_NBS3_WEIGHT_F(auxhdbtsched_AUX_NBS3_WEIGHT_F),
     .lppf_lppf_crc_lsb_first(lppf_lppf_crc_lsb_first),
     .lppf_a1_lppf_sw_wr_ready(lppf_a1_lppf_sw_wr_ready),
     .hdbt_hlic_rx_clr_crc_cnt(hdbt_hlic_rx_clr_crc_cnt),
     .hdmic_cpu_ing_tx_rxs(hdmic_cpu_ing_tx_rxs),
     .hdmic_ddc_edid0_addr(hdmic_ddc_edid0_addr),
     .c_retr_buff_threshold(c_retr_buff_threshold),
     .p1_reg_pcr_mode_pixel(p1_reg_pcr_mode_pixel),
     .p1_reg_pcr_FSUpLimit(p1_reg_pcr_FSUpLimit),
     .p1_reg_pcr_mn_steady(p1_reg_pcr_mn_steady),
     .p1_reg_pcr_TMDS_FIFO_LOOP_B_SLCT(p1_reg_pcr_TMDS_FIFO_LOOP_B_SLCT),
     .src_pcs_src_pcs_if_rtr_sd_minRD(src_pcs_src_pcs_if_rtr_sd_minRD),
     .snk_pcs_c_snk_pcs_enable_pam16crc(snk_pcs_c_snk_pcs_enable_pam16crc),
     .bist_p1_c_tx_bist_tadp_packet_sid(bist_p1_c_tx_bist_tadp_packet_sid),
     .bist_p2_c_tx_bist_tadp_packet_sid(bist_p2_c_tx_bist_tadp_packet_sid),
     .bist_p3_c_tx_bist_tadp_packet_sid(bist_p3_c_tx_bist_tadp_packet_sid),
     .bc_uart_link_uart_rx_data_size(bc_uart_link_uart_rx_data_size),
     .bc_uart_link_uart_tx_data_size(bc_uart_link_uart_tx_data_size),
     .bc_uart_link_uart_xon_val(bc_uart_link_uart_xon_val),
     .bc_link_bc_hlic_prot(bc_link_bc_hlic_prot),
     .bc_pdif_ayalon_sink_mode(bc_pdif_ayalon_sink_mode),
     .lppf_A1_HDMI_CTRL_SID_VAL(lppf_A1_HDMI_CTRL_SID_VAL),
     .lppf_lppf_rep_start_en(lppf_lppf_rep_start_en),
     .hdbt_hlic_PKT_LEN(hdbt_hlic_PKT_LEN),
     .hdbt_hlic_Enable(hdbt_hlic_Enable),
     .hdmic_cpu_ing_v5_bypass(hdmic_cpu_ing_v5_bypass),
     .hdmic_ing_gen_sid(hdmic_ing_gen_sid),
     .hdmic_egr_gen_sid(hdmic_egr_gen_sid),
     .hdmic_ddc_edid0_en(hdmic_ddc_edid0_en),
     .AUX_ETH_PART_BLOCKS(AUX_ETH_PART_BLOCKS),
     .p1_reg_pcr_mode_sid_cpu(p1_reg_pcr_mode_sid_cpu),
     .p1_reg_pcr_mn_zero_latch(p1_reg_pcr_mn_zero_latch),
     .p1_reg_pcr_TMDS_MN_CHANGE_THR(p1_reg_pcr_TMDS_MN_CHANGE_THR),
     .src_pcs_src_pcs_if_rtr_ds_minRD(src_pcs_src_pcs_if_rtr_ds_minRD),
     .snk_pcs_c_snk_pcs_enable_pam8crc(snk_pcs_c_snk_pcs_enable_pam8crc),
     .snk_pcs_snk_EnableVariationMode(snk_pcs_snk_EnableVariationMode),
     .src_pcs_pamconv_bypass_fixRD(src_pcs_pamconv_bypass_fixRD),
     .src_pcs_EnableVariationMode(src_pcs_EnableVariationMode),
     .bist_p1_c_tx_bist_tadp_packet_prot(bist_p1_c_tx_bist_tadp_packet_prot),
     .bist_p1_c_tx_bist_tadp_prbs_pol_type(bist_p1_c_tx_bist_tadp_prbs_pol_type),
     .bist_p1_c_rx_bist_tadp_prbs_pol_type(bist_p1_c_rx_bist_tadp_prbs_pol_type),
     .bist_p2_c_tx_bist_tadp_packet_prot(bist_p2_c_tx_bist_tadp_packet_prot),
     .bist_p2_c_tx_bist_tadp_prbs_pol_type(bist_p2_c_tx_bist_tadp_prbs_pol_type),
     .bist_p2_c_rx_bist_tadp_prbs_pol_type(bist_p2_c_rx_bist_tadp_prbs_pol_type),
     .bist_p3_c_tx_bist_tadp_packet_prot(bist_p3_c_tx_bist_tadp_packet_prot),
     .bist_p3_c_tx_bist_tadp_prbs_pol_type(bist_p3_c_tx_bist_tadp_prbs_pol_type),
     .bist_p3_c_rx_bist_tadp_prbs_pol_type(bist_p3_c_rx_bist_tadp_prbs_pol_type),
     .bc_cir_rx_buffer_out_delay_size(bc_cir_rx_buffer_out_delay_size),
     .bc_cir_cir_rx_idle_size(bc_cir_cir_rx_idle_size),
     .bc_uart_link_uart_rx_odd_parity(bc_uart_link_uart_rx_odd_parity),
     .bc_uart_link_uart_tx_odd_parity(bc_uart_link_uart_tx_odd_parity),
     .bc_uart_link_uart_cts_tx_en(bc_uart_link_uart_cts_tx_en),
     .bc_uart_rx_buffer_out_delay_size(bc_uart_rx_buffer_out_delay_size),
     .bc_link_bc_hlic_lsb_first(bc_link_bc_hlic_lsb_first),
     .bc_drift_mn_add_sid_rx(bc_drift_mn_add_sid_rx),
     .bc_mn_data_out(bc_mn_data_out),
     .bc_remove_extended(bc_remove_extended),
     .auxhdbtsched_P2_QUAL(auxhdbtsched_P2_QUAL),
     .auxhdbtsched_AUX_NBS3_WEIGHT_5(auxhdbtsched_AUX_NBS3_WEIGHT_5),
     .lppf_nulldet_enable(lppf_nulldet_enable),
     .lppf_lppf_tx_type(lppf_lppf_tx_type),
     .hdbt_hlic_A1_WD_EN(hdbt_hlic_A1_WD_EN),
     .hdbt_hlic_IgnoreCRC(hdbt_hlic_IgnoreCRC),
     .hdbt_hlic_if_sd(hdbt_hlic_if_sd),
     .hdmic_cpu_ing_tx_v5(hdmic_cpu_ing_tx_v5),
     .hdmic_ing_gen_en(hdmic_ing_gen_en),
     .hdmic_egr_gen_en(hdmic_egr_gen_en),
     .c_retr_buff_delay_size(c_retr_buff_delay_size),
     .p1_reg_pcr_mode_dan(p1_reg_pcr_mode_dan),
     .p1_reg_pcr_mn_zero(p1_reg_pcr_mn_zero),
     .p1_reg_pcr_fifo_correction(p1_reg_pcr_fifo_correction),
     .src_pcs_src_pcs_if_rtr_ls_minRD(src_pcs_src_pcs_if_rtr_ls_minRD),
     .snk_pcs_c_snk_pcs_enable_pam4crc(snk_pcs_c_snk_pcs_enable_pam4crc),
     .snk_pcs_s_snk_pcs_MainNullDet_upro_enable(snk_pcs_s_snk_pcs_MainNullDet_upro_enable),
     .snk_pcs_snk_RemoveZeroExt(snk_pcs_snk_RemoveZeroExt),
     .src_pcs_c_src_pcs_ret_always_pam_4(src_pcs_c_src_pcs_ret_always_pam_4),
     .bist_p1_c_tx_bist_tadp_packet_fut(bist_p1_c_tx_bist_tadp_packet_fut),
     .bist_p1_c_tx_bist_tadp_prbs_zero(bist_p1_c_tx_bist_tadp_prbs_zero),
     .bist_p1_c_rx_bist_tadp_resync_en(bist_p1_c_rx_bist_tadp_resync_en),
     .bist_p1_s_rx_bist_tadp_state_stm(bist_p1_s_rx_bist_tadp_state_stm),
     .bist_p2_c_tx_bist_tadp_packet_fut(bist_p2_c_tx_bist_tadp_packet_fut),
     .bist_p2_c_tx_bist_tadp_prbs_zero(bist_p2_c_tx_bist_tadp_prbs_zero),
     .bist_p2_c_rx_bist_tadp_resync_en(bist_p2_c_rx_bist_tadp_resync_en),
     .bist_p2_s_rx_bist_tadp_state_stm(bist_p2_s_rx_bist_tadp_state_stm),
     .bist_p3_c_tx_bist_tadp_packet_fut(bist_p3_c_tx_bist_tadp_packet_fut),
     .bist_p3_c_tx_bist_tadp_prbs_zero(bist_p3_c_tx_bist_tadp_prbs_zero),
     .bist_p3_c_rx_bist_tadp_resync_en(bist_p3_c_rx_bist_tadp_resync_en),
     .bist_p3_s_rx_bist_tadp_state_stm(bist_p3_s_rx_bist_tadp_state_stm),
     .bc_cir_rx_buffer_out_words_in_ram(bc_cir_rx_buffer_out_words_in_ram),
     .bc_cir_rx_buffer_out_crc_bit_en(bc_cir_rx_buffer_out_crc_bit_en),
     .bc_cir_cir_rx_enable(bc_cir_cir_rx_enable),
     .bc_cir_cir_tx_enable(bc_cir_cir_tx_enable),
     .bc_uart_link_uart_rx_parity_en(bc_uart_link_uart_rx_parity_en),
     .bc_uart_link_uart_tx_parity_en(bc_uart_link_uart_tx_parity_en),
     .bc_uart_link_uart_cts_inv(bc_uart_link_uart_cts_inv),
     .bc_uart_rx_buffer_out_words_in_ram(bc_uart_rx_buffer_out_words_in_ram),
     .bc_uart_rx_buffer_out_crc_bit_en(bc_uart_rx_buffer_out_crc_bit_en),
     .bc_link_bc_hlic_ignore_crc(bc_link_bc_hlic_ignore_crc),
     .bc_clock_pack_enable_rx(bc_clock_pack_enable_rx),
     .bc_mn_change(bc_mn_change),
     .bc_RemoveVideoPad_enable(bc_RemoveVideoPad_enable),
     .bc_snirlnk_rx_max_data_p1(bc_snirlnk_rx_max_data_p1),
     .bc_pdif_clk_div(bc_pdif_clk_div),
     .bc_cir_tx_io_enable(bc_cir_tx_io_enable),
     .auxhdbtsched_AUX_DQSC(auxhdbtsched_AUX_DQSC),
     .lppf_snir_link_lppf_a1_mode(lppf_snir_link_lppf_a1_mode),
     .lppf_lppf_link_active(lppf_lppf_link_active),
     .lppf_lppf_stype_val(lppf_lppf_stype_val),
     .lppf_lppf_info_data(lppf_lppf_info_data),
     .hdbt_hlic_crc_swap_result(hdbt_hlic_crc_swap_result),
     .hdbt_hlic_crc_inv_result(hdbt_hlic_crc_inv_result),
     .hdbt_hlic_if_ds(hdbt_hlic_if_ds),
     .hdmic_cec_ing_bypass(hdmic_cec_ing_bypass),
     .hdmic_ing_parse_ignoreCrc(hdmic_ing_parse_ignoreCrc),
     .hdmic_egr_parse_ignoreCrc(hdmic_egr_parse_ignoreCrc),
     .hdmic_cpu_ing_rx_rxs(hdmic_cpu_ing_rx_rxs),
     .hdmic_ddc_global_hw_ack(hdmic_ddc_global_hw_ack),
     .hdmic_ddc_hdcp_addr(hdmic_ddc_hdcp_addr),
     .hdmic_ddc_wd_max_cnt(hdmic_ddc_wd_max_cnt),
     .c_tx_lb_disp_type_route(c_tx_lb_disp_type_route),
     .c_retr_buff_crc_bit_en(c_retr_buff_crc_bit_en),
     .s_retr_buff_words_in_ram(s_retr_buff_words_in_ram),
     .c_tx_retr_disp_type_route(c_tx_retr_disp_type_route),
     .p1_reg_pcr_mn_change_latch(p1_reg_pcr_mn_change_latch),
     .p1_reg_pcr_in_middle_of_pkt(p1_reg_pcr_in_middle_of_pkt),
     .snk_pcs_c_snk_pcs_ret_enable(snk_pcs_c_snk_pcs_ret_enable),
     .snk_pcs_c_snk_pcs_ptype_pams(snk_pcs_c_snk_pcs_ptype_pams),
     .snk_pcs_c_snk_pcs_qual_01_pams(snk_pcs_c_snk_pcs_qual_01_pams),
     .snk_pcs_c_snk_pcs_qual_10_pams(snk_pcs_c_snk_pcs_qual_10_pams),
     .snk_pcs_c_snk_pcs_qual_11_pams(snk_pcs_c_snk_pcs_qual_11_pams),
     .snk_pcs_c_snk_pcs_cycles_for_next_request(snk_pcs_c_snk_pcs_cycles_for_next_request),
     .snk_pcs_snk_pcs_stat_clear_bus(snk_pcs_snk_pcs_stat_clear_bus),
     .snk_pcs_s_snk_pcs_num_goodret(snk_pcs_s_snk_pcs_num_goodret),
     .snk_pcs_s_snk_pcs_num_badret_crc(snk_pcs_s_snk_pcs_num_badret_crc),
     .snk_pcs_s_snk_pcs_num_badret_nonreq(snk_pcs_s_snk_pcs_num_badret_nonreq),
     .snk_pcs_s_snk_pcs_num_protected(snk_pcs_s_snk_pcs_num_protected),
     .snk_pcs_s_snk_pcs_num_unprotected(snk_pcs_s_snk_pcs_num_unprotected),
     .snk_pcs_s_snk_pcs_num_bad_unprotected(snk_pcs_s_snk_pcs_num_bad_unprotected),
     .snk_pcs_s_snk_pcs_num_rtsreq_crc(snk_pcs_s_snk_pcs_num_rtsreq_crc),
     .snk_pcs_s_snk_pcs_num_rtsreq_gap(snk_pcs_s_snk_pcs_num_rtsreq_gap),
     .snk_pcs_s_snk_pcs_stat_mem_protected(snk_pcs_s_snk_pcs_stat_mem_protected),
     .snk_pcs_s_snk_pcs_stat_mem_unprotected(snk_pcs_s_snk_pcs_stat_mem_unprotected),
     .snk_pcs_s_snk_pcs_num_too_late(snk_pcs_s_snk_pcs_num_too_late),
     .snk_pcs_s_snk_pcs_num_buck_blk(snk_pcs_s_snk_pcs_num_buck_blk),
     .snk_pcs_s_snk_pcs_num_too_long(snk_pcs_s_snk_pcs_num_too_long),
     .snk_pcs_s_snk_pcs_header_crc_err_cnt(snk_pcs_s_snk_pcs_header_crc_err_cnt),
     .snk_pcs_s_snk_pcs_header_crc_err_cnt_2(snk_pcs_s_snk_pcs_header_crc_err_cnt_2),
     .snk_pcs_s_snk_pcs_ptype_00_crc_num(snk_pcs_s_snk_pcs_ptype_00_crc_num),
     .snk_pcs_s_snk_pcs_ptype_01_crc_num(snk_pcs_s_snk_pcs_ptype_01_crc_num),
     .snk_pcs_s_snk_pcs_ptype_02_crc_num(snk_pcs_s_snk_pcs_ptype_02_crc_num),
     .snk_pcs_s_snk_pcs_ptype_03_crc_num(snk_pcs_s_snk_pcs_ptype_03_crc_num),
     .snk_pcs_s_snk_pcs_ptype_04_crc_num(snk_pcs_s_snk_pcs_ptype_04_crc_num),
     .snk_pcs_s_snk_pcs_ptype_05_crc_num(snk_pcs_s_snk_pcs_ptype_05_crc_num),
     .snk_pcs_s_snk_pcs_ptype_06_crc_num(snk_pcs_s_snk_pcs_ptype_06_crc_num),
     .snk_pcs_s_snk_pcs_ptype_07_crc_num(snk_pcs_s_snk_pcs_ptype_07_crc_num),
     .snk_pcs_s_snk_pcs_ptype_08_crc_num(snk_pcs_s_snk_pcs_ptype_08_crc_num),
     .snk_pcs_s_snk_pcs_ptype_09_crc_num(snk_pcs_s_snk_pcs_ptype_09_crc_num),
     .snk_pcs_s_snk_pcs_ptype_10_crc_num(snk_pcs_s_snk_pcs_ptype_10_crc_num),
     .snk_pcs_s_snk_pcs_ptype_11_crc_num(snk_pcs_s_snk_pcs_ptype_11_crc_num),
     .snk_pcs_s_snk_pcs_ptype_12_crc_num(snk_pcs_s_snk_pcs_ptype_12_crc_num),
     .snk_pcs_s_snk_pcs_ptype_13_crc_num(snk_pcs_s_snk_pcs_ptype_13_crc_num),
     .snk_pcs_s_snk_pcs_ptype_14_crc_num(snk_pcs_s_snk_pcs_ptype_14_crc_num),
     .snk_pcs_s_snk_pcs_ptype_15_crc_num(snk_pcs_s_snk_pcs_ptype_15_crc_num),
     .snk_pcs_s_snk_pcs_ptype_16_crc_num(snk_pcs_s_snk_pcs_ptype_16_crc_num),
     .snk_pcs_s_snk_pcs_ptype_17_crc_num(snk_pcs_s_snk_pcs_ptype_17_crc_num),
     .snk_pcs_s_snk_pcs_ptype_18_crc_num(snk_pcs_s_snk_pcs_ptype_18_crc_num),
     .snk_pcs_s_snk_pcs_ptype_19_crc_num(snk_pcs_s_snk_pcs_ptype_19_crc_num),
     .snk_pcs_s_snk_pcs_ptype_20_crc_num(snk_pcs_s_snk_pcs_ptype_20_crc_num),
     .snk_pcs_s_snk_pcs_ptype_21_crc_num(snk_pcs_s_snk_pcs_ptype_21_crc_num),
     .snk_pcs_s_snk_pcs_ptype_22_crc_num(snk_pcs_s_snk_pcs_ptype_22_crc_num),
     .snk_pcs_s_snk_pcs_ptype_23_crc_num(snk_pcs_s_snk_pcs_ptype_23_crc_num),
     .snk_pcs_s_snk_pcs_ptype_24_crc_num(snk_pcs_s_snk_pcs_ptype_24_crc_num),
     .snk_pcs_s_snk_pcs_ptype_25_crc_num(snk_pcs_s_snk_pcs_ptype_25_crc_num),
     .snk_pcs_s_snk_pcs_ptype_26_crc_num(snk_pcs_s_snk_pcs_ptype_26_crc_num),
     .snk_pcs_s_snk_pcs_ptype_27_crc_num(snk_pcs_s_snk_pcs_ptype_27_crc_num),
     .snk_pcs_s_snk_pcs_ptype_28_crc_num(snk_pcs_s_snk_pcs_ptype_28_crc_num),
     .snk_pcs_s_snk_pcs_ptype_29_crc_num(snk_pcs_s_snk_pcs_ptype_29_crc_num),
     .snk_pcs_s_snk_pcs_ptype_30_crc_num(snk_pcs_s_snk_pcs_ptype_30_crc_num),
     .snk_pcs_s_snk_pcs_ptype_31_crc_num(snk_pcs_s_snk_pcs_ptype_31_crc_num),
     .snk_pcs_s_snk_pcs_ptype_00_packets(snk_pcs_s_snk_pcs_ptype_00_packets),
     .snk_pcs_s_snk_pcs_ptype_01_packets(snk_pcs_s_snk_pcs_ptype_01_packets),
     .snk_pcs_s_snk_pcs_ptype_02_packets(snk_pcs_s_snk_pcs_ptype_02_packets),
     .snk_pcs_s_snk_pcs_ptype_03_packets(snk_pcs_s_snk_pcs_ptype_03_packets),
     .snk_pcs_s_snk_pcs_ptype_04_packets(snk_pcs_s_snk_pcs_ptype_04_packets),
     .snk_pcs_s_snk_pcs_ptype_05_packets(snk_pcs_s_snk_pcs_ptype_05_packets),
     .snk_pcs_s_snk_pcs_ptype_06_packets(snk_pcs_s_snk_pcs_ptype_06_packets),
     .snk_pcs_s_snk_pcs_ptype_07_packets(snk_pcs_s_snk_pcs_ptype_07_packets),
     .snk_pcs_s_snk_pcs_ptype_08_packets(snk_pcs_s_snk_pcs_ptype_08_packets),
     .snk_pcs_s_snk_pcs_ptype_09_packets(snk_pcs_s_snk_pcs_ptype_09_packets),
     .snk_pcs_s_snk_pcs_ptype_10_packets(snk_pcs_s_snk_pcs_ptype_10_packets),
     .snk_pcs_s_snk_pcs_ptype_11_packets(snk_pcs_s_snk_pcs_ptype_11_packets),
     .snk_pcs_s_snk_pcs_ptype_12_packets(snk_pcs_s_snk_pcs_ptype_12_packets),
     .snk_pcs_s_snk_pcs_ptype_13_packets(snk_pcs_s_snk_pcs_ptype_13_packets),
     .snk_pcs_s_snk_pcs_ptype_14_packets(snk_pcs_s_snk_pcs_ptype_14_packets),
     .snk_pcs_s_snk_pcs_ptype_15_packets(snk_pcs_s_snk_pcs_ptype_15_packets),
     .snk_pcs_s_snk_pcs_ptype_16_packets(snk_pcs_s_snk_pcs_ptype_16_packets),
     .snk_pcs_s_snk_pcs_ptype_17_packets(snk_pcs_s_snk_pcs_ptype_17_packets),
     .snk_pcs_s_snk_pcs_ptype_18_packets(snk_pcs_s_snk_pcs_ptype_18_packets),
     .snk_pcs_s_snk_pcs_ptype_19_packets(snk_pcs_s_snk_pcs_ptype_19_packets),
     .snk_pcs_s_snk_pcs_ptype_20_packets(snk_pcs_s_snk_pcs_ptype_20_packets),
     .snk_pcs_s_snk_pcs_ptype_21_packets(snk_pcs_s_snk_pcs_ptype_21_packets),
     .snk_pcs_s_snk_pcs_ptype_22_packets(snk_pcs_s_snk_pcs_ptype_22_packets),
     .snk_pcs_s_snk_pcs_ptype_23_packets(snk_pcs_s_snk_pcs_ptype_23_packets),
     .snk_pcs_s_snk_pcs_ptype_24_packets(snk_pcs_s_snk_pcs_ptype_24_packets),
     .snk_pcs_s_snk_pcs_ptype_25_packets(snk_pcs_s_snk_pcs_ptype_25_packets),
     .snk_pcs_s_snk_pcs_ptype_26_packets(snk_pcs_s_snk_pcs_ptype_26_packets),
     .snk_pcs_s_snk_pcs_ptype_27_packets(snk_pcs_s_snk_pcs_ptype_27_packets),
     .snk_pcs_s_snk_pcs_ptype_28_packets(snk_pcs_s_snk_pcs_ptype_28_packets),
     .snk_pcs_s_snk_pcs_ptype_29_packets(snk_pcs_s_snk_pcs_ptype_29_packets),
     .snk_pcs_s_snk_pcs_ptype_30_packets(snk_pcs_s_snk_pcs_ptype_30_packets),
     .snk_pcs_s_snk_pcs_ptype_31_packets(snk_pcs_s_snk_pcs_ptype_31_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_00_crc_num(snk_pcs_s_snk_pcs_ptype_pre_00_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_01_crc_num(snk_pcs_s_snk_pcs_ptype_pre_01_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_02_crc_num(snk_pcs_s_snk_pcs_ptype_pre_02_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_03_crc_num(snk_pcs_s_snk_pcs_ptype_pre_03_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_04_crc_num(snk_pcs_s_snk_pcs_ptype_pre_04_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_05_crc_num(snk_pcs_s_snk_pcs_ptype_pre_05_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_06_crc_num(snk_pcs_s_snk_pcs_ptype_pre_06_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_07_crc_num(snk_pcs_s_snk_pcs_ptype_pre_07_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_08_crc_num(snk_pcs_s_snk_pcs_ptype_pre_08_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_09_crc_num(snk_pcs_s_snk_pcs_ptype_pre_09_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_10_crc_num(snk_pcs_s_snk_pcs_ptype_pre_10_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_11_crc_num(snk_pcs_s_snk_pcs_ptype_pre_11_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_12_crc_num(snk_pcs_s_snk_pcs_ptype_pre_12_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_13_crc_num(snk_pcs_s_snk_pcs_ptype_pre_13_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_14_crc_num(snk_pcs_s_snk_pcs_ptype_pre_14_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_15_crc_num(snk_pcs_s_snk_pcs_ptype_pre_15_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_16_crc_num(snk_pcs_s_snk_pcs_ptype_pre_16_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_17_crc_num(snk_pcs_s_snk_pcs_ptype_pre_17_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_18_crc_num(snk_pcs_s_snk_pcs_ptype_pre_18_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_19_crc_num(snk_pcs_s_snk_pcs_ptype_pre_19_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_20_crc_num(snk_pcs_s_snk_pcs_ptype_pre_20_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_21_crc_num(snk_pcs_s_snk_pcs_ptype_pre_21_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_22_crc_num(snk_pcs_s_snk_pcs_ptype_pre_22_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_23_crc_num(snk_pcs_s_snk_pcs_ptype_pre_23_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_24_crc_num(snk_pcs_s_snk_pcs_ptype_pre_24_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_25_crc_num(snk_pcs_s_snk_pcs_ptype_pre_25_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_26_crc_num(snk_pcs_s_snk_pcs_ptype_pre_26_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_27_crc_num(snk_pcs_s_snk_pcs_ptype_pre_27_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_28_crc_num(snk_pcs_s_snk_pcs_ptype_pre_28_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_29_crc_num(snk_pcs_s_snk_pcs_ptype_pre_29_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_30_crc_num(snk_pcs_s_snk_pcs_ptype_pre_30_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_31_crc_num(snk_pcs_s_snk_pcs_ptype_pre_31_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_00_packets(snk_pcs_s_snk_pcs_ptype_pre_00_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_01_packets(snk_pcs_s_snk_pcs_ptype_pre_01_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_02_packets(snk_pcs_s_snk_pcs_ptype_pre_02_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_03_packets(snk_pcs_s_snk_pcs_ptype_pre_03_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_04_packets(snk_pcs_s_snk_pcs_ptype_pre_04_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_05_packets(snk_pcs_s_snk_pcs_ptype_pre_05_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_06_packets(snk_pcs_s_snk_pcs_ptype_pre_06_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_07_packets(snk_pcs_s_snk_pcs_ptype_pre_07_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_08_packets(snk_pcs_s_snk_pcs_ptype_pre_08_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_09_packets(snk_pcs_s_snk_pcs_ptype_pre_09_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_10_packets(snk_pcs_s_snk_pcs_ptype_pre_10_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_11_packets(snk_pcs_s_snk_pcs_ptype_pre_11_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_12_packets(snk_pcs_s_snk_pcs_ptype_pre_12_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_13_packets(snk_pcs_s_snk_pcs_ptype_pre_13_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_14_packets(snk_pcs_s_snk_pcs_ptype_pre_14_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_15_packets(snk_pcs_s_snk_pcs_ptype_pre_15_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_16_packets(snk_pcs_s_snk_pcs_ptype_pre_16_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_17_packets(snk_pcs_s_snk_pcs_ptype_pre_17_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_18_packets(snk_pcs_s_snk_pcs_ptype_pre_18_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_19_packets(snk_pcs_s_snk_pcs_ptype_pre_19_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_20_packets(snk_pcs_s_snk_pcs_ptype_pre_20_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_21_packets(snk_pcs_s_snk_pcs_ptype_pre_21_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_22_packets(snk_pcs_s_snk_pcs_ptype_pre_22_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_23_packets(snk_pcs_s_snk_pcs_ptype_pre_23_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_24_packets(snk_pcs_s_snk_pcs_ptype_pre_24_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_25_packets(snk_pcs_s_snk_pcs_ptype_pre_25_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_26_packets(snk_pcs_s_snk_pcs_ptype_pre_26_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_27_packets(snk_pcs_s_snk_pcs_ptype_pre_27_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_28_packets(snk_pcs_s_snk_pcs_ptype_pre_28_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_29_packets(snk_pcs_s_snk_pcs_ptype_pre_29_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_30_packets(snk_pcs_s_snk_pcs_ptype_pre_30_packets),
     .snk_pcs_s_snk_pcs_ptype_pre_31_packets(snk_pcs_s_snk_pcs_ptype_pre_31_packets),
     .snk_pcs_c_snk_pcs_gap_pak_size(snk_pcs_c_snk_pcs_gap_pak_size),
     .snk_pcs_s_snk_pcs_num_rtsreq_non_first(snk_pcs_s_snk_pcs_num_rtsreq_non_first),
     .snk_pcs_c_snk_pcs_pam_bak_max_size(snk_pcs_c_snk_pcs_pam_bak_max_size),
     .snk_pcs_c_snk_pcs_idle_delay(snk_pcs_c_snk_pcs_idle_delay),
     .snk_pcs_s_snk_pcs_MainNullDet_prot_null_frame_num(snk_pcs_s_snk_pcs_MainNullDet_prot_null_frame_num),
     .snk_pcs_s_snk_pcs_MainNullDet_upro_null_frame_num(snk_pcs_s_snk_pcs_MainNullDet_upro_null_frame_num),
     .snk_pcs_s_snk_pcs_MainNullDet_prot_enable(snk_pcs_s_snk_pcs_MainNullDet_prot_enable),
     .snk_pcs_Cpu_Drift(snk_pcs_Cpu_Drift),
     .snk_pcs_snk_RemoveLastExt(snk_pcs_snk_RemoveLastExt),
     .snk_pcs_HLIC_PTYPE(snk_pcs_HLIC_PTYPE),
     .snk_pcs_Drift_prot_ClkPkts_mon_trapped_data(snk_pcs_Drift_prot_ClkPkts_mon_trapped_data),
     .snk_pcs_Drift_upro_ClkPkts_mon_trapped_data(snk_pcs_Drift_upro_ClkPkts_mon_trapped_data),
     .src_pcs_ret_enable_fixRD(src_pcs_ret_enable_fixRD),
     .src_pcs_src_pcs_stat_clear_bus(src_pcs_src_pcs_stat_clear_bus),
     .src_pcs_s_src_pcs_num_retreq(src_pcs_s_src_pcs_num_retreq),
     .src_pcs_s_src_pcs_num_goodret(src_pcs_s_src_pcs_num_goodret),
     .src_pcs_s_src_pcs_num_protected(src_pcs_s_src_pcs_num_protected),
     .src_pcs_s_src_pcs_num_unprotected(src_pcs_s_src_pcs_num_unprotected),
     .src_pcs_s_src_pcs_stat_mem(src_pcs_s_src_pcs_stat_mem),
     .src_pcs_c_src_pcs_repeat_req_distance(src_pcs_c_src_pcs_repeat_req_distance),
     .src_pcs_ptype_pams(src_pcs_ptype_pams),
     .src_pcs_qual_01_pams(src_pcs_qual_01_pams),
     .src_pcs_qual_10_pams(src_pcs_qual_10_pams),
     .src_pcs_qual_11_pams(src_pcs_qual_11_pams),
     .src_pcs_Cpu_Drift_Src(src_pcs_Cpu_Drift_Src),
     .src_pcs_Drift_ClkPkts_mon_trapped_data_Src(src_pcs_Drift_ClkPkts_mon_trapped_data_Src),
     .bist_p1_c_tx_bist_tadp_packet_enable(bist_p1_c_tx_bist_tadp_packet_enable),
     .bist_p1_c_tx_bist_tadp_packet_delay_min(bist_p1_c_tx_bist_tadp_packet_delay_min),
     .bist_p1_c_tx_bist_tadp_packet_len_min(bist_p1_c_tx_bist_tadp_packet_len_min),
     .bist_p1_c_tx_bist_tadp_single_mode(bist_p1_c_tx_bist_tadp_single_mode),
     .bist_p1_s_tx_bist_tadp_packet_count(bist_p1_s_tx_bist_tadp_packet_count),
     .bist_p1_c_tx_bist_tadp_single_go(bist_p1_c_tx_bist_tadp_single_go),
     .bist_p1_c_rx_bist_tadp_packet_enable(bist_p1_c_rx_bist_tadp_packet_enable),
     .bist_p1_s_rx_bist_tadp_state_lost(bist_p1_s_rx_bist_tadp_state_lost),
     .bist_p1_s_rx_bist_tadp_prbs_err_cnt(bist_p1_s_rx_bist_tadp_prbs_err_cnt),
     .bist_p1_s_rx_bist_tadp_packet_count(bist_p1_s_rx_bist_tadp_packet_count),
     .bist_p1_s_rx_bist_tadp_sid_err_count(bist_p1_s_rx_bist_tadp_sid_err_count),
     .bist_p1_s_rx_bist_tadp_missing_count(bist_p1_s_rx_bist_tadp_missing_count),
     .bist_p2_c_tx_bist_tadp_packet_enable(bist_p2_c_tx_bist_tadp_packet_enable),
     .bist_p2_c_tx_bist_tadp_packet_delay_min(bist_p2_c_tx_bist_tadp_packet_delay_min),
     .bist_p2_c_tx_bist_tadp_packet_len_min(bist_p2_c_tx_bist_tadp_packet_len_min),
     .bist_p2_c_tx_bist_tadp_single_mode(bist_p2_c_tx_bist_tadp_single_mode),
     .bist_p2_s_tx_bist_tadp_packet_count(bist_p2_s_tx_bist_tadp_packet_count),
     .bist_p2_c_tx_bist_tadp_single_go(bist_p2_c_tx_bist_tadp_single_go),
     .bist_p2_c_rx_bist_tadp_packet_enable(bist_p2_c_rx_bist_tadp_packet_enable),
     .bist_p2_s_rx_bist_tadp_state_lost(bist_p2_s_rx_bist_tadp_state_lost),
     .bist_p2_s_rx_bist_tadp_prbs_err_cnt(bist_p2_s_rx_bist_tadp_prbs_err_cnt),
     .bist_p2_s_rx_bist_tadp_packet_count(bist_p2_s_rx_bist_tadp_packet_count),
     .bist_p2_s_rx_bist_tadp_sid_err_count(bist_p2_s_rx_bist_tadp_sid_err_count),
     .bist_p2_s_rx_bist_tadp_missing_count(bist_p2_s_rx_bist_tadp_missing_count),
     .bist_p3_c_tx_bist_tadp_packet_enable(bist_p3_c_tx_bist_tadp_packet_enable),
     .bist_p3_c_tx_bist_tadp_packet_delay_min(bist_p3_c_tx_bist_tadp_packet_delay_min),
     .bist_p3_c_tx_bist_tadp_packet_len_min(bist_p3_c_tx_bist_tadp_packet_len_min),
     .bist_p3_c_tx_bist_tadp_single_mode(bist_p3_c_tx_bist_tadp_single_mode),
     .bist_p3_s_tx_bist_tadp_packet_count(bist_p3_s_tx_bist_tadp_packet_count),
     .bist_p3_c_tx_bist_tadp_single_go(bist_p3_c_tx_bist_tadp_single_go),
     .bist_p3_c_rx_bist_tadp_packet_enable(bist_p3_c_rx_bist_tadp_packet_enable),
     .bist_p3_s_rx_bist_tadp_state_lost(bist_p3_s_rx_bist_tadp_state_lost),
     .bist_p3_s_rx_bist_tadp_prbs_err_cnt(bist_p3_s_rx_bist_tadp_prbs_err_cnt),
     .bist_p3_s_rx_bist_tadp_packet_count(bist_p3_s_rx_bist_tadp_packet_count),
     .bist_p3_s_rx_bist_tadp_sid_err_count(bist_p3_s_rx_bist_tadp_sid_err_count),
     .bist_p3_s_rx_bist_tadp_missing_count(bist_p3_s_rx_bist_tadp_missing_count),
     .bc_msio_tadp_master_div_ratio(bc_msio_tadp_master_div_ratio),
     .bc_MSIO_tadp_SID(bc_MSIO_tadp_SID),
     .bc_msio_tadp_rx_state00_data(bc_msio_tadp_rx_state00_data),
     .bc_msio_tadp_rx_state04_data(bc_msio_tadp_rx_state04_data),
     .bc_msio_tadp_tx_state00_data(bc_msio_tadp_tx_state00_data),
     .bc_msio_tadp_tx_state04_data(bc_msio_tadp_tx_state04_data),
     .bc_msio_tadp_fifo_error(bc_msio_tadp_fifo_error),
     .bc_cir_rx_buffer_out_pkt_write(bc_cir_rx_buffer_out_pkt_write),
     .bc_cir_rx_buffer_out_packet_num(bc_cir_rx_buffer_out_packet_num),
     .bc_cir_rx_buffer_out_enable(bc_cir_rx_buffer_out_enable),
     .bc_cir_cir_rx_in_invert(bc_cir_cir_rx_in_invert),
     .bc_cir_cir_rx_period_size(bc_cir_cir_rx_period_size),
     .bc_cir_cir_rx_sample_rate(bc_cir_cir_rx_sample_rate),
     .bc_cir_cir_tx_out_invert(bc_cir_cir_tx_out_invert),
     .bc_cir_cir_tx_sample_rate(bc_cir_cir_tx_sample_rate),
     .bc_cir_cir_tx_threshold(bc_cir_cir_tx_threshold),
     .bc_cir_cir_sw_used(bc_cir_cir_sw_used),
     .bc_cir_cir_tx_fifo_used(bc_cir_cir_tx_fifo_used),
     .bc_uart_link_uart_rx_enable(bc_uart_link_uart_rx_enable),
     .bc_uart_link_uart_tx_enable(bc_uart_link_uart_tx_enable),
     .bc_uart_link_uart_tx_fifo_thr_low(bc_uart_link_uart_tx_fifo_thr_low),
     .bc_uart_link_uart_tx_read_th(bc_uart_link_uart_tx_read_th),
     .bc_uart_link_uart_s_tx_fifo_used(bc_uart_link_uart_s_tx_fifo_used),
     .bc_uart_link_uart_SID(bc_uart_link_uart_SID),
     .bc_uart_link_uart_cts_en(bc_uart_link_uart_cts_en),
     .bc_uart_rx_buffer_out_pkt_write(bc_uart_rx_buffer_out_pkt_write),
     .bc_uart_rx_buffer_out_packet_num(bc_uart_rx_buffer_out_packet_num),
     .bc_uart_rx_buffer_out_enable(bc_uart_rx_buffer_out_enable),
     .bc_link_bc_hlic_en(bc_link_bc_hlic_en),
     .bc_clock_pack_lsb_first(bc_clock_pack_lsb_first),
     .bc_mn_change_latch(bc_mn_change_latch),
     .bc_AddVideoPad_enable(bc_AddVideoPad_enable),
     .bc_snirlnk_local_sid_en(bc_snirlnk_local_sid_en),
     .bc_snirlnk_tx_max_data_p1(bc_snirlnk_tx_max_data_p1),
     .bc_snirlnk_type_route_tx_lsb(bc_snirlnk_type_route_tx_lsb),
     .bc_snirlnk_type_route_tx_mid(bc_snirlnk_type_route_tx_mid),
     .bc_snirlnk_type_route_tx_msb(bc_snirlnk_type_route_tx_msb),
     .bc_snirlnk_type_route_rx_lsb(bc_snirlnk_type_route_rx_lsb),
     .bc_snirlnk_type_route_rx_mid(bc_snirlnk_type_route_rx_mid),
     .bc_snirlnk_type_route_rx_msb(bc_snirlnk_type_route_rx_msb),
     .bc_snirlnk_rx_main_hdi_priority_field(bc_snirlnk_rx_main_hdi_priority_field),
     .bc_snirlnk_tx_main_hdi_priority_field(bc_snirlnk_tx_main_hdi_priority_field),
     .bc_MSIOPktGen_En(bc_MSIOPktGen_En),
     .bc_msio_rx_state00_data(bc_msio_rx_state00_data),
     .bc_msio_tx_state00_data(bc_msio_tx_state00_data),
     .bc_msio_tx_state04_data(bc_msio_tx_state04_data),
     .bc_msio_rx_state04_data(bc_msio_rx_state04_data),
     .bc_link_uart_rx_fifo_used(bc_link_uart_rx_fifo_used),
     .bc_msio_tx_invert(bc_msio_tx_invert),
     .bc_msio_fifo_error(bc_msio_fifo_error),
     .bc_Drift_ClkPkts_mon_sid(bc_Drift_ClkPkts_mon_sid),
     .bc_Drift_ClkPkts_mon_trapped_data(bc_Drift_ClkPkts_mon_trapped_data),
     .bc_msio_from_io_select(bc_msio_from_io_select),
     .bc_uart_tx_io_enable(bc_uart_tx_io_enable),
     .auxhdbtsched_AUX_TOKEN_COUNTER(auxhdbtsched_AUX_TOKEN_COUNTER),
     .auxhdbtsched_AUX_IDLE_COUNTER(auxhdbtsched_AUX_IDLE_COUNTER),
     .auxhdbtsched_AUX_SID_REQUIRED(auxhdbtsched_AUX_SID_REQUIRED),
     .auxhdbtsched_AUX_ISNBS(auxhdbtsched_AUX_ISNBS),
     .auxhdbtsched_AUX_PACKET_LEN(auxhdbtsched_AUX_PACKET_LEN),
     .auxhdbtsched_AUX_ETH_ENABLE(auxhdbtsched_AUX_ETH_ENABLE),
     .auxhdbtsched_AUX_HDMIC_SID(auxhdbtsched_AUX_HDMIC_SID),
     .auxhdbtsched_AUX_DQSC_CNT(auxhdbtsched_AUX_DQSC_CNT),
     .auxhdbtsched_max_p1_tok(auxhdbtsched_max_p1_tok),
     .auxhdbtsched_disp_type_route_lsb(auxhdbtsched_disp_type_route_lsb),
     .auxhdbtsched_disp_type_route_msb(auxhdbtsched_disp_type_route_msb),
     .auxhdbtsched_lppf_type_route(auxhdbtsched_lppf_type_route),
     .auxhdbtsched_AUX_HDI_PRIORITY(auxhdbtsched_AUX_HDI_PRIORITY),
     .auxhdbtsched_P1_QUAL(auxhdbtsched_P1_QUAL),
     .auxhdbtsched_AUX_HDI_QUALITY(auxhdbtsched_AUX_HDI_QUALITY),
     .auxhdbtsched_MAIN_HDI_PRIORITY(auxhdbtsched_MAIN_HDI_PRIORITY),
     .auxhdbtsched_Main2Aux_fifo_used(auxhdbtsched_Main2Aux_fifo_used),
     .auxhdbtsched_AUX_NBS3_WEIGHT_1(auxhdbtsched_AUX_NBS3_WEIGHT_1),
     .auxhdbtsched_ptype_00_packets(auxhdbtsched_ptype_00_packets),
     .auxhdbtsched_ptype_01_packets(auxhdbtsched_ptype_01_packets),
     .auxhdbtsched_ptype_02_packets(auxhdbtsched_ptype_02_packets),
     .auxhdbtsched_ptype_03_packets(auxhdbtsched_ptype_03_packets),
     .auxhdbtsched_ptype_04_packets(auxhdbtsched_ptype_04_packets),
     .auxhdbtsched_ptype_05_packets(auxhdbtsched_ptype_05_packets),
     .auxhdbtsched_ptype_06_packets(auxhdbtsched_ptype_06_packets),
     .auxhdbtsched_ptype_07_packets(auxhdbtsched_ptype_07_packets),
     .auxhdbtsched_ptype_08_packets(auxhdbtsched_ptype_08_packets),
     .auxhdbtsched_ptype_09_packets(auxhdbtsched_ptype_09_packets),
     .auxhdbtsched_ptype_10_packets(auxhdbtsched_ptype_10_packets),
     .auxhdbtsched_ptype_11_packets(auxhdbtsched_ptype_11_packets),
     .auxhdbtsched_ptype_12_packets(auxhdbtsched_ptype_12_packets),
     .auxhdbtsched_ptype_13_packets(auxhdbtsched_ptype_13_packets),
     .auxhdbtsched_ptype_14_packets(auxhdbtsched_ptype_14_packets),
     .auxhdbtsched_ptype_15_packets(auxhdbtsched_ptype_15_packets),
     .lppf_null_enable(lppf_null_enable),
     .lppf_lppf_crc_error(lppf_lppf_crc_error),
     .lppf_null_frame_num(lppf_null_frame_num),
     .lppf_a1_lppf_sw_rd_data(lppf_a1_lppf_sw_rd_data),
     .lppf_a1_lppf_sw_wr_data(lppf_a1_lppf_sw_wr_data),
     .lppf_lppf_tx_req(lppf_lppf_tx_req),
     .lppf_LPPF_MIN_IPG(lppf_LPPF_MIN_IPG),
     .lppf_lppf_aya1_type_err(lppf_lppf_aya1_type_err),
     .lppf_lppf_cir_uart_oversample_size(lppf_lppf_cir_uart_oversample_size),
     .lppf_TYPE_ROUTE(lppf_TYPE_ROUTE),
     .lppf_AUX_SID_REQUIRED(lppf_AUX_SID_REQUIRED),
     .lppf_lppf_stype_all(lppf_lppf_stype_all),
     .lppf_lppf_start_idle_cnt_max(lppf_lppf_start_idle_cnt_max),
     .lppf_lppf_start_init_info_max(lppf_lppf_start_init_info_max),
     .lppf_HLIC_SID(lppf_HLIC_SID),
     .lppf_lppf_stype_00_packets(lppf_lppf_stype_00_packets),
     .lppf_lppf_stype_02_packets(lppf_lppf_stype_02_packets),
     .lppf_lppf_stype_04_packets(lppf_lppf_stype_04_packets),
     .lppf_lppf_stype_06_packets(lppf_lppf_stype_06_packets),
     .lppf_lppf_stype_08_packets(lppf_lppf_stype_08_packets),
     .lppf_lppf_stype_10_packets(lppf_lppf_stype_10_packets),
     .lppf_lppf_stype_12_packets(lppf_lppf_stype_12_packets),
     .lppf_lppf_stype_14_packets(lppf_lppf_stype_14_packets),
     .lppf_lppf_long_packets(lppf_lppf_long_packets),
     .lppf_lppf_silent_error(lppf_lppf_silent_error),
     .lppf_lppf_del_error(lppf_lppf_del_error),
     .lppf_lppf_data_error(lppf_lppf_data_error),
     .lppf_a1_lppf_sw_used(lppf_a1_lppf_sw_used),
     .lppf_lppf_info_rx(lppf_lppf_info_rx),
     .lppf_LOCAL_SID_ARRAY_31_0_(lppf_LOCAL_SID_ARRAY[31:0]),
     .lppf_LOCAL_SID_ARRAY_63_32_(lppf_LOCAL_SID_ARRAY[63:32]),
     .lppf_LOCAL_SID_ARRAY_95_64_(lppf_LOCAL_SID_ARRAY[95:64]),
     .lppf_LOCAL_SID_ARRAY_127_96_(lppf_LOCAL_SID_ARRAY[127:96]),
     .lppf_LOCAL_SID_ARRAY_159_128_(lppf_LOCAL_SID_ARRAY[159:128]),
     .lppf_LOCAL_SID_ARRAY_191_160_(lppf_LOCAL_SID_ARRAY[191:160]),
     .lppf_LOCAL_SID_ARRAY_223_192_(lppf_LOCAL_SID_ARRAY[223:192]),
     .lppf_LOCAL_SID_ARRAY_255_224_(lppf_LOCAL_SID_ARRAY[255:224]),
     .hdbt_hlic_data_write_status(hdbt_hlic_data_write_status),
     .hdbt_hlic_write_used(hdbt_hlic_write_used),
     .hdbt_hlic_EN_BLIND_REP(hdbt_hlic_EN_BLIND_REP),
     .hdbt_hlic_crc_swap_data(hdbt_hlic_crc_swap_data),
     .hdbt_hlic_PKT_DEL(hdbt_hlic_PKT_DEL),
     .hdbt_hlic_read_data_ctrl(hdbt_hlic_read_data_ctrl),
     .hdbt_hlic_rx_crcerr_cnt(hdbt_hlic_rx_crcerr_cnt),
     .hdbt_hlic_tx_stm(hdbt_hlic_tx_stm),
     .hdbt_hlic_rx_cmd_fifo_ovr_cnt(hdbt_hlic_rx_cmd_fifo_ovr_cnt),
     .hdbt_hlic_brif_port_rx_len(hdbt_hlic_brif_port_rx_len),
     .hdbt_hlic_brif_port_rx_data(hdbt_hlic_brif_port_rx_data),
     .hdbt_hlic_brif_port_tx_len(hdbt_hlic_brif_port_tx_len),
     .hdbt_hlic_brif_port_tx_data(hdbt_hlic_brif_port_tx_data),
     .hdbt_hlic_brif_bridge_clr(hdbt_hlic_brif_bridge_clr),
     .hdbt_hlic_if_ls(hdbt_hlic_if_ls),
     .hdmic_mode_A1(hdmic_mode_A1),
     .hdmic_ing_parse_en(hdmic_ing_parse_en),
     .hdmic_egr_parse_en(hdmic_egr_parse_en),
     .hdmic_cpu_ing_rx_v5(hdmic_cpu_ing_rx_v5),
     .hdmic_cpu_fifo_cec_ing_tx_data(hdmic_cpu_fifo_cec_ing_tx_data),
     .hdmic_cpu_fifo_cec_ing_tx_used(hdmic_cpu_fifo_cec_ing_tx_used),
     .hdmic_cpu_fifo_cec_ing_rx_data(hdmic_cpu_fifo_cec_ing_rx_data),
     .hdmic_cpu_fifo_cec_egr_tx_data(hdmic_cpu_fifo_cec_egr_tx_data),
     .hdmic_cpu_fifo_cec_egr_rx_data(hdmic_cpu_fifo_cec_egr_rx_data),
     .hdmic_cec_error_in_time(hdmic_cec_error_in_time),
     .hdmic_cec_micro(hdmic_cec_micro),
     .hdmic_cec_delay_rise(hdmic_cec_delay_rise),
     .hdmic_cec_sb_l_min(hdmic_cec_sb_l_min),
     .hdmic_cec_dat_l_nom(hdmic_cec_dat_l_nom),
     .hdmic_cec_ack_end(hdmic_cec_ack_end),
     .hdmic_cec_ack_force(hdmic_cec_ack_force),
     .hdmic_cec_hys_delay(hdmic_cec_hys_delay),
     .hdmic_cec_ack_table(hdmic_cec_ack_table),
     .hdmic_cec_auto_ack(hdmic_cec_auto_ack),
     .hdmic_cec_sb_falling_edges_min(hdmic_cec_sb_falling_edges_min),
     .hdmic_cec_data_falling_edges_min(hdmic_cec_data_falling_edges_min),
     .hdmic_cec_delay_new_initiator(hdmic_cec_delay_new_initiator),
     .hdmic_cec_ack_auto(hdmic_cec_ack_auto),
     .hdmic_cec_tx_ack_h_1(hdmic_cec_tx_ack_h_1),
     .hdmic_cec_bit_time(hdmic_cec_bit_time),
     .hdmic_cec_auto_h_ack(hdmic_cec_auto_h_ack),
     .hdmic_ddc_global_pt_disable(hdmic_ddc_global_pt_disable),
     .hdmic_ddc_hdcp_en(hdmic_ddc_hdcp_en),
     .hdmic_ddc_hdcp_max_cnt(hdmic_ddc_hdcp_max_cnt),
     .hdmic_ddc_hdcp_start_val(hdmic_ddc_hdcp_start_val),
     .hdmic_ddc_wd_en(hdmic_ddc_wd_en),
     .hdmic_ddc_hdcp_val(hdmic_ddc_hdcp_val),
     .hdmic_ddc_hdcp_val_cnt(hdmic_ddc_hdcp_val_cnt),
     .hdmic_ddc_slv_mon_used(hdmic_ddc_slv_mon_used),
     .hdmic_ddc_slv_mon_data(hdmic_ddc_slv_mon_data),
     .hdmic_ddc_mst_mon_data(hdmic_ddc_mst_mon_data),
     .hdmic_ddc_slv_gen_data(hdmic_ddc_slv_gen_data),
     .hdmic_ddc_mst_gen_data(hdmic_ddc_mst_gen_data),
     .hdmic_ddc_active_pullup_bypass(hdmic_ddc_active_pullup_bypass),
     .hdmic_intrpt_5v_rxs_clear_dummy(hdmic_intrpt_5v_rxs_clear_dummy),
     .hdmic_packet_space(hdmic_packet_space),
     .c_rx_main_disp_local_sid_31_0_(c_rx_main_disp_local_sid[31:0]),
     .c_rx_main_disp_local_sid_63_32_(c_rx_main_disp_local_sid[63:32]),
     .c_rx_main_disp_local_sid_95_64_(c_rx_main_disp_local_sid[95:64]),
     .c_rx_main_disp_local_sid_127_96_(c_rx_main_disp_local_sid[127:96]),
     .c_rx_main_disp_local_sid_159_128_(c_rx_main_disp_local_sid[159:128]),
     .c_rx_main_disp_local_sid_191_160_(c_rx_main_disp_local_sid[191:160]),
     .c_rx_main_disp_local_sid_223_192_(c_rx_main_disp_local_sid[223:192]),
     .c_rx_main_disp_local_sid_255_224_(c_rx_main_disp_local_sid[255:224]),
     .c_rx_main_disp_spare_sid_31_0_(c_rx_main_disp_spare_sid[31:0]),
     .c_rx_main_disp_spare_sid_63_32_(c_rx_main_disp_spare_sid[63:32]),
     .c_rx_main_disp_spare_sid_95_64_(c_rx_main_disp_spare_sid[95:64]),
     .c_rx_main_disp_spare_sid_127_96_(c_rx_main_disp_spare_sid[127:96]),
     .c_rx_main_disp_spare_sid_159_128_(c_rx_main_disp_spare_sid[159:128]),
     .c_rx_main_disp_spare_sid_191_160_(c_rx_main_disp_spare_sid[191:160]),
     .c_rx_main_disp_spare_sid_223_192_(c_rx_main_disp_spare_sid[223:192]),
     .c_rx_main_disp_spare_sid_255_224_(c_rx_main_disp_spare_sid[255:224]),
     .c_rx_main_disp_trash_sid_31_0_(c_rx_main_disp_trash_sid[31:0]),
     .c_rx_main_disp_trash_sid_63_32_(c_rx_main_disp_trash_sid[63:32]),
     .c_rx_main_disp_trash_sid_95_64_(c_rx_main_disp_trash_sid[95:64]),
     .c_rx_main_disp_trash_sid_127_96_(c_rx_main_disp_trash_sid[127:96]),
     .c_rx_main_disp_trash_sid_159_128_(c_rx_main_disp_trash_sid[159:128]),
     .c_rx_main_disp_trash_sid_191_160_(c_rx_main_disp_trash_sid[191:160]),
     .c_rx_main_disp_trash_sid_223_192_(c_rx_main_disp_trash_sid[223:192]),
     .c_rx_main_disp_trash_sid_255_224_(c_rx_main_disp_trash_sid[255:224]),
     .c_rx_main_disp_type_route_31_0_(c_rx_main_disp_type_route[31:0]),
     .c_rx_main_disp_type_route_63_32_(c_rx_main_disp_type_route[63:32]),
     .c_rx_main_disp_type_route_95_64_(c_rx_main_disp_type_route[95:64]),
     .c_rx_main_disp_spare_route_31_0_(c_rx_main_disp_spare_route[31:0]),
     .c_rx_main_disp_spare_route_63_32_(c_rx_main_disp_spare_route[63:32]),
     .c_rx_main_disp_spare_route_95_64_(c_rx_main_disp_spare_route[95:64]),
     .c_rx_main_disp_force_local_type(c_rx_main_disp_force_local_type),
     .c_tx_lb_disp_local_sid(c_tx_lb_disp_local_sid),
     .c_retr_buff_enable(c_retr_buff_enable),
     .s_retr_buff_pkt_write(s_retr_buff_pkt_write),
     .s_retr_buff_packet_num(s_retr_buff_packet_num),
     .c_tx_retr_disp_local_sid(c_tx_retr_disp_local_sid),
     .c_main2aux_disp_local_sid_31_0_(c_main2aux_disp_local_sid[31:0]),
     .c_main2aux_disp_local_sid_63_32_(c_main2aux_disp_local_sid[63:32]),
     .c_main2aux_disp_local_sid_95_64_(c_main2aux_disp_local_sid[95:64]),
     .c_main2aux_disp_local_sid_127_96_(c_main2aux_disp_local_sid[127:96]),
     .c_main2aux_disp_local_sid_159_128_(c_main2aux_disp_local_sid[159:128]),
     .c_main2aux_disp_local_sid_191_160_(c_main2aux_disp_local_sid[191:160]),
     .c_main2aux_disp_local_sid_223_192_(c_main2aux_disp_local_sid[223:192]),
     .c_main2aux_disp_local_sid_255_224_(c_main2aux_disp_local_sid[255:224]),
     .c_main2aux_disp_type_route(c_main2aux_disp_type_route),
     .c_unprot_disp_local_sid_31_0_(c_unprot_disp_local_sid[31:0]),
     .c_unprot_disp_local_sid_63_32_(c_unprot_disp_local_sid[63:32]),
     .c_unprot_disp_local_sid_95_64_(c_unprot_disp_local_sid[95:64]),
     .c_unprot_disp_local_sid_127_96_(c_unprot_disp_local_sid[127:96]),
     .c_unprot_disp_local_sid_159_128_(c_unprot_disp_local_sid[159:128]),
     .c_unprot_disp_local_sid_191_160_(c_unprot_disp_local_sid[191:160]),
     .c_unprot_disp_local_sid_223_192_(c_unprot_disp_local_sid[223:192]),
     .c_unprot_disp_local_sid_255_224_(c_unprot_disp_local_sid[255:224]),
     .c_unprot_disp_type_route(c_unprot_disp_type_route),
     .aux2main_AUX_TOK_TYPE(aux2main_AUX_TOK_TYPE),
     .AUX_ETH_FULL_BLOCKS(AUX_ETH_FULL_BLOCKS),
     .Main_aggr_id(Main_aggr_id),
     .Main_c_timeout_val(Main_c_timeout_val),
     .AuxSched_AUX_SID_REQUIRED(AuxSched_AUX_SID_REQUIRED),
     .c_prio_div_main_hdi_priority(c_prio_div_main_hdi_priority),
     .src_pcs_if_chain_sel(src_pcs_if_chain_sel),
     .sched_buf_hdistop_en(sched_buf_hdistop_en),
     .p2_dispatcher_type_route(p2_dispatcher_type_route),
     .p2_dispatcher_local_sid_7(p2_dispatcher_local_sid_7),
     .p2_dispatcher_local_sid_6(p2_dispatcher_local_sid_6),
     .p2_dispatcher_local_sid_5(p2_dispatcher_local_sid_5),
     .p2_dispatcher_local_sid_4(p2_dispatcher_local_sid_4),
     .p2_dispatcher_local_sid_3(p2_dispatcher_local_sid_3),
     .p2_dispatcher_local_sid_2(p2_dispatcher_local_sid_2),
     .p2_dispatcher_local_sid_1(p2_dispatcher_local_sid_1),
     .p2_dispatcher_local_sid_0(p2_dispatcher_local_sid_0),
     .link_int_stat(link_int_stat),
     .link_int_mask(link_int_mask),
     .lppf_clk_div_ratio(lppf_clk_div_ratio),
     .rgf_tb_chain_select(rgf_tb_chain_select),
     .retransmission_mode_select(retransmission_mode_select),
     .aux_packet_enable(aux_packet_enable),
     .main2aux_min_use_num(main2aux_min_use_num),
     .p1_reg_pcr_clk_freq(p1_reg_pcr_clk_freq),
     .p1_reg_pcr_sid_cpu(p1_reg_pcr_sid_cpu),
     .p1_reg_pcr_bw_limit_in_data(p1_reg_pcr_bw_limit_in_data),
     .p1_reg_pcr_egc_limit_low(p1_reg_pcr_egc_limit_low),
     .p1_reg_pcr_egc_limit_high(p1_reg_pcr_egc_limit_high),
     .p1_reg_pcr_mn_change(p1_reg_pcr_mn_change),
     .p1_reg_pcr_tmds_mn_filt_testbus(p1_reg_pcr_tmds_mn_filt_testbus),
     .p1_reg_pcr_tmds_fifo_loop_testbus(p1_reg_pcr_tmds_fifo_loop_testbus),
     .p1_reg_pcr_tmds_fo_filt_testbus(p1_reg_pcr_tmds_fo_filt_testbus),
     .p1_reg_pcr_tmds_in_clock_est(p1_reg_pcr_tmds_in_clock_est),
     .p1_reg_pcr_fifo_wr_en(p1_reg_pcr_fifo_wr_en),
     .p1_reg_pcr_ShiftMn13(p1_reg_pcr_ShiftMn13),
     .p1_reg_pcr_TMDS_SSC_STEP(p1_reg_pcr_TMDS_SSC_STEP),
     .p1_reg_pcr_vf_max(p1_reg_pcr_vf_max),
     .p1_reg_pcr_TMDS_FIFO_LOOP_A_SLCT(p1_reg_pcr_TMDS_FIFO_LOOP_A_SLCT),
     .p1_reg_pcr_FSCtrl(p1_reg_pcr_FSCtrl),
     .p1_reg_pcr_BWLimit_out(p1_reg_pcr_BWLimit_out),
     .p1_reg_pcr_mul_round(p1_reg_pcr_mul_round),
     .snk_pcs_s_snk_pcs_ptype_pre_2_00_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_00_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_01_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_01_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_02_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_02_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_03_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_03_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_04_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_04_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_05_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_05_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_06_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_06_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_07_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_07_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_08_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_08_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_09_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_09_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_10_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_10_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_11_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_11_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_12_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_12_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_13_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_13_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_14_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_14_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_15_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_15_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_16_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_16_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_17_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_17_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_18_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_18_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_19_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_19_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_20_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_20_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_21_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_21_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_22_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_22_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_23_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_23_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_24_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_24_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_25_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_25_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_26_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_26_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_27_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_27_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_28_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_28_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_29_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_29_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_30_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_30_crc_num),
     .snk_pcs_s_snk_pcs_ptype_pre_2_31_crc_num(snk_pcs_s_snk_pcs_ptype_pre_2_31_crc_num),
     .snk_pcs_s_snk_pcs_num_MinRD_goodret(snk_pcs_s_snk_pcs_num_MinRD_goodret),
     .snk_pcs_s_snk_pcs_num_MinRD_badret_crc(snk_pcs_s_snk_pcs_num_MinRD_badret_crc),
     .snk_pcs_s_snk_pcs_num_MinRD_badret_nonreq(snk_pcs_s_snk_pcs_num_MinRD_badret_nonreq),
     .snk_pcs_s_snk_pcs_num_MinRD_protected(snk_pcs_s_snk_pcs_num_MinRD_protected),
     .snk_pcs_s_snk_pcs_num_MinRD_rtsreq_crc(snk_pcs_s_snk_pcs_num_MinRD_rtsreq_crc),
     .snk_pcs_s_snk_pcs_num_MinRD_rtsreq_gap(snk_pcs_s_snk_pcs_num_MinRD_rtsreq_gap),
     .snk_pcs_s_snk_pcs_num_MinRD_rtsreq_non_first(snk_pcs_s_snk_pcs_num_MinRD_rtsreq_non_first),
     .snk_pcs_s_snk_pcs_num_MinRD_too_late(snk_pcs_s_snk_pcs_num_MinRD_too_late),
     .snk_pcs_s_snk_pcs_num_MinRD_buck_blk(snk_pcs_s_snk_pcs_num_MinRD_buck_blk),
     .snk_pcs_s_snk_pcs_num_MinRD_too_long(snk_pcs_s_snk_pcs_num_MinRD_too_long),
     .snk_pcs_s_snk_pcs_stat_mem_protected_MinRD(snk_pcs_s_snk_pcs_stat_mem_protected_MinRD),
     .snk_pcs_drfWin(snk_pcs_drfWin),
     .snk_pcs_snk_pcs_if_chain_sel(snk_pcs_snk_pcs_if_chain_sel),
     .snk_pcs_snk_pcs_if_driftest(snk_pcs_snk_pcs_if_driftest),
     .snk_pcs_snk_1_cfg_main_rd_type(snk_pcs_snk_1_cfg_main_rd_type),
     .snk_pcs_snk_2_cfg_main_rd_type(snk_pcs_snk_2_cfg_main_rd_type),
     .snk_pcs_snk_1_tokin_max_wait(snk_pcs_snk_1_tokin_max_wait),
     .snk_pcs_snk_2_tokin_max_wait(snk_pcs_snk_2_tokin_max_wait),
     .snk_pcs_s_snk_pcs_ptype_2_pre_00_packets(snk_pcs_s_snk_pcs_ptype_2_pre_00_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_01_packets(snk_pcs_s_snk_pcs_ptype_2_pre_01_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_02_packets(snk_pcs_s_snk_pcs_ptype_2_pre_02_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_03_packets(snk_pcs_s_snk_pcs_ptype_2_pre_03_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_04_packets(snk_pcs_s_snk_pcs_ptype_2_pre_04_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_05_packets(snk_pcs_s_snk_pcs_ptype_2_pre_05_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_06_packets(snk_pcs_s_snk_pcs_ptype_2_pre_06_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_07_packets(snk_pcs_s_snk_pcs_ptype_2_pre_07_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_08_packets(snk_pcs_s_snk_pcs_ptype_2_pre_08_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_09_packets(snk_pcs_s_snk_pcs_ptype_2_pre_09_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_10_packets(snk_pcs_s_snk_pcs_ptype_2_pre_10_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_11_packets(snk_pcs_s_snk_pcs_ptype_2_pre_11_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_12_packets(snk_pcs_s_snk_pcs_ptype_2_pre_12_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_13_packets(snk_pcs_s_snk_pcs_ptype_2_pre_13_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_14_packets(snk_pcs_s_snk_pcs_ptype_2_pre_14_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_15_packets(snk_pcs_s_snk_pcs_ptype_2_pre_15_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_16_packets(snk_pcs_s_snk_pcs_ptype_2_pre_16_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_17_packets(snk_pcs_s_snk_pcs_ptype_2_pre_17_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_18_packets(snk_pcs_s_snk_pcs_ptype_2_pre_18_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_19_packets(snk_pcs_s_snk_pcs_ptype_2_pre_19_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_20_packets(snk_pcs_s_snk_pcs_ptype_2_pre_20_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_21_packets(snk_pcs_s_snk_pcs_ptype_2_pre_21_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_22_packets(snk_pcs_s_snk_pcs_ptype_2_pre_22_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_23_packets(snk_pcs_s_snk_pcs_ptype_2_pre_23_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_24_packets(snk_pcs_s_snk_pcs_ptype_2_pre_24_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_25_packets(snk_pcs_s_snk_pcs_ptype_2_pre_25_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_26_packets(snk_pcs_s_snk_pcs_ptype_2_pre_26_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_27_packets(snk_pcs_s_snk_pcs_ptype_2_pre_27_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_28_packets(snk_pcs_s_snk_pcs_ptype_2_pre_28_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_29_packets(snk_pcs_s_snk_pcs_ptype_2_pre_29_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_30_packets(snk_pcs_s_snk_pcs_ptype_2_pre_30_packets),
     .snk_pcs_s_snk_pcs_ptype_2_pre_31_packets(snk_pcs_s_snk_pcs_ptype_2_pre_31_packets),
     .snk_pcs_ptype_all_crc_num(snk_pcs_ptype_all_crc_num),
     .src_pcs_cfg_pkt_split_en(src_pcs_cfg_pkt_split_en),
     .src_pcs_delay_calc_int_stat(src_pcs_delay_calc_int_stat),
     .src_pcs_cfg_main_rd_type(src_pcs_cfg_main_rd_type),
     .src_pcs_s_src_pcs_num_retreq_minRD(src_pcs_s_src_pcs_num_retreq_minRD),
     .src_pcs_s_src_pcs_num_goodret_minRD(src_pcs_s_src_pcs_num_goodret_minRD),
     .src_pcs_s_src_pcs_num_protected_minRD(src_pcs_s_src_pcs_num_protected_minRD),
     .src_pcs_s_src_pcs_num_unprotected_minRD(src_pcs_s_src_pcs_num_unprotected_minRD),
     .src_pcs_s_src_pcs_stat_mem_minRD(src_pcs_s_src_pcs_stat_mem_minRD),
     .src_pcs_Drift_ClkPkts_mon_trapped_data_Src_minRD(src_pcs_Drift_ClkPkts_mon_trapped_data_Src_minRD),
     .src_pcs_drfWin_Src(src_pcs_drfWin_Src),
     .src_pcs_drftEst(src_pcs_drftEst),
     .lppf_a1_lppf_sw_wr_data_reg_w(lppf_a1_lppf_sw_wr_data_reg_w),
     .hdmic_ctrl_cec_ing_tx_data_reg_w(hdmic_ctrl_cec_ing_tx_data_reg_w),
     .hdmic_ctrl_cec_egr_tx_data_reg_w(hdmic_ctrl_cec_egr_tx_data_reg_w),
     .hdmic_ddc_fifo_gen_slv_w(hdmic_ddc_fifo_gen_slv_w),
     .hdmic_ddc_fifo_gen_mst_w(hdmic_ddc_fifo_gen_mst_w),
     .p1_reg_pcr_bw_limit_in_data_reg_w(p1_reg_pcr_bw_limit_in_data_reg_w),
     .snk_pcs_RX_snk_pcs_if_stat_clear_reg_w(snk_pcs_RX_snk_pcs_if_stat_clear_reg_w),
     .snk_pcs_RX_crc_err_cnt_reg_w(snk_pcs_RX_crc_err_cnt_reg_w),
     .snk_pcs_RX_ptype_00_crc_num_reg_w(snk_pcs_RX_ptype_00_crc_num_reg_w),
     .snk_pcs_RX_ptype_01_crc_num_reg_w(snk_pcs_RX_ptype_01_crc_num_reg_w),
     .snk_pcs_RX_ptype_02_crc_num_reg_w(snk_pcs_RX_ptype_02_crc_num_reg_w),
     .snk_pcs_RX_ptype_03_crc_num_reg_w(snk_pcs_RX_ptype_03_crc_num_reg_w),
     .snk_pcs_RX_ptype_04_crc_num_reg_w(snk_pcs_RX_ptype_04_crc_num_reg_w),
     .snk_pcs_RX_ptype_05_crc_num_reg_w(snk_pcs_RX_ptype_05_crc_num_reg_w),
     .snk_pcs_RX_ptype_06_crc_num_reg_w(snk_pcs_RX_ptype_06_crc_num_reg_w),
     .snk_pcs_RX_ptype_07_crc_num_reg_w(snk_pcs_RX_ptype_07_crc_num_reg_w),
     .snk_pcs_RX_ptype_08_crc_num_reg_w(snk_pcs_RX_ptype_08_crc_num_reg_w),
     .snk_pcs_RX_ptype_09_crc_num_reg_w(snk_pcs_RX_ptype_09_crc_num_reg_w),
     .snk_pcs_RX_ptype_10_crc_num_reg_w(snk_pcs_RX_ptype_10_crc_num_reg_w),
     .snk_pcs_RX_ptype_11_crc_num_reg_w(snk_pcs_RX_ptype_11_crc_num_reg_w),
     .snk_pcs_RX_ptype_12_crc_num_reg_w(snk_pcs_RX_ptype_12_crc_num_reg_w),
     .snk_pcs_RX_ptype_13_crc_num_reg_w(snk_pcs_RX_ptype_13_crc_num_reg_w),
     .snk_pcs_RX_ptype_14_crc_num_reg_w(snk_pcs_RX_ptype_14_crc_num_reg_w),
     .snk_pcs_RX_ptype_15_crc_num_reg_w(snk_pcs_RX_ptype_15_crc_num_reg_w),
     .snk_pcs_RX_ptype_16_crc_num_reg_w(snk_pcs_RX_ptype_16_crc_num_reg_w),
     .snk_pcs_RX_ptype_17_crc_num_reg_w(snk_pcs_RX_ptype_17_crc_num_reg_w),
     .snk_pcs_RX_ptype_18_crc_num_reg_w(snk_pcs_RX_ptype_18_crc_num_reg_w),
     .snk_pcs_RX_ptype_19_crc_num_reg_w(snk_pcs_RX_ptype_19_crc_num_reg_w),
     .snk_pcs_RX_ptype_20_crc_num_reg_w(snk_pcs_RX_ptype_20_crc_num_reg_w),
     .snk_pcs_RX_ptype_21_crc_num_reg_w(snk_pcs_RX_ptype_21_crc_num_reg_w),
     .snk_pcs_RX_ptype_22_crc_num_reg_w(snk_pcs_RX_ptype_22_crc_num_reg_w),
     .snk_pcs_RX_ptype_23_crc_num_reg_w(snk_pcs_RX_ptype_23_crc_num_reg_w),
     .snk_pcs_RX_ptype_24_crc_num_reg_w(snk_pcs_RX_ptype_24_crc_num_reg_w),
     .snk_pcs_RX_ptype_25_crc_num_reg_w(snk_pcs_RX_ptype_25_crc_num_reg_w),
     .snk_pcs_RX_ptype_26_crc_num_reg_w(snk_pcs_RX_ptype_26_crc_num_reg_w),
     .snk_pcs_RX_ptype_27_crc_num_reg_w(snk_pcs_RX_ptype_27_crc_num_reg_w),
     .snk_pcs_RX_ptype_28_crc_num_reg_w(snk_pcs_RX_ptype_28_crc_num_reg_w),
     .snk_pcs_RX_ptype_29_crc_num_reg_w(snk_pcs_RX_ptype_29_crc_num_reg_w),
     .snk_pcs_RX_ptype_30_crc_num_reg_w(snk_pcs_RX_ptype_30_crc_num_reg_w),
     .snk_pcs_RX_ptype_31_crc_num_reg_w(snk_pcs_RX_ptype_31_crc_num_reg_w),
     .snk_pcs_RX_ptype_00_packets_reg_w(snk_pcs_RX_ptype_00_packets_reg_w),
     .snk_pcs_RX_ptype_01_packets_reg_w(snk_pcs_RX_ptype_01_packets_reg_w),
     .snk_pcs_RX_ptype_02_packets_reg_w(snk_pcs_RX_ptype_02_packets_reg_w),
     .snk_pcs_RX_ptype_03_packets_reg_w(snk_pcs_RX_ptype_03_packets_reg_w),
     .snk_pcs_RX_ptype_04_packets_reg_w(snk_pcs_RX_ptype_04_packets_reg_w),
     .snk_pcs_RX_ptype_05_packets_reg_w(snk_pcs_RX_ptype_05_packets_reg_w),
     .snk_pcs_RX_ptype_06_packets_reg_w(snk_pcs_RX_ptype_06_packets_reg_w),
     .snk_pcs_RX_ptype_07_packets_reg_w(snk_pcs_RX_ptype_07_packets_reg_w),
     .snk_pcs_RX_ptype_08_packets_reg_w(snk_pcs_RX_ptype_08_packets_reg_w),
     .snk_pcs_RX_ptype_09_packets_reg_w(snk_pcs_RX_ptype_09_packets_reg_w),
     .snk_pcs_RX_ptype_10_packets_reg_w(snk_pcs_RX_ptype_10_packets_reg_w),
     .snk_pcs_RX_ptype_11_packets_reg_w(snk_pcs_RX_ptype_11_packets_reg_w),
     .snk_pcs_RX_ptype_12_packets_reg_w(snk_pcs_RX_ptype_12_packets_reg_w),
     .snk_pcs_RX_ptype_13_packets_reg_w(snk_pcs_RX_ptype_13_packets_reg_w),
     .snk_pcs_RX_ptype_14_packets_reg_w(snk_pcs_RX_ptype_14_packets_reg_w),
     .snk_pcs_RX_ptype_15_packets_reg_w(snk_pcs_RX_ptype_15_packets_reg_w),
     .snk_pcs_RX_ptype_16_packets_reg_w(snk_pcs_RX_ptype_16_packets_reg_w),
     .snk_pcs_RX_ptype_17_packets_reg_w(snk_pcs_RX_ptype_17_packets_reg_w),
     .snk_pcs_RX_ptype_18_packets_reg_w(snk_pcs_RX_ptype_18_packets_reg_w),
     .snk_pcs_RX_ptype_19_packets_reg_w(snk_pcs_RX_ptype_19_packets_reg_w),
     .snk_pcs_RX_ptype_20_packets_reg_w(snk_pcs_RX_ptype_20_packets_reg_w),
     .snk_pcs_RX_ptype_21_packets_reg_w(snk_pcs_RX_ptype_21_packets_reg_w),
     .snk_pcs_RX_ptype_22_packets_reg_w(snk_pcs_RX_ptype_22_packets_reg_w),
     .snk_pcs_RX_ptype_23_packets_reg_w(snk_pcs_RX_ptype_23_packets_reg_w),
     .snk_pcs_RX_ptype_24_packets_reg_w(snk_pcs_RX_ptype_24_packets_reg_w),
     .snk_pcs_RX_ptype_25_packets_reg_w(snk_pcs_RX_ptype_25_packets_reg_w),
     .snk_pcs_RX_ptype_26_packets_reg_w(snk_pcs_RX_ptype_26_packets_reg_w),
     .snk_pcs_RX_ptype_27_packets_reg_w(snk_pcs_RX_ptype_27_packets_reg_w),
     .snk_pcs_RX_ptype_28_packets_reg_w(snk_pcs_RX_ptype_28_packets_reg_w),
     .snk_pcs_RX_ptype_29_packets_reg_w(snk_pcs_RX_ptype_29_packets_reg_w),
     .snk_pcs_RX_ptype_30_packets_reg_w(snk_pcs_RX_ptype_30_packets_reg_w),
     .snk_pcs_RX_ptype_31_packets_reg_w(snk_pcs_RX_ptype_31_packets_reg_w),
     .snk_pcs_RX_ptype_pre_00_crc_num_reg_w(snk_pcs_RX_ptype_pre_00_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_01_crc_num_reg_w(snk_pcs_RX_ptype_pre_01_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_02_crc_num_reg_w(snk_pcs_RX_ptype_pre_02_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_03_crc_num_reg_w(snk_pcs_RX_ptype_pre_03_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_04_crc_num_reg_w(snk_pcs_RX_ptype_pre_04_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_05_crc_num_reg_w(snk_pcs_RX_ptype_pre_05_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_06_crc_num_reg_w(snk_pcs_RX_ptype_pre_06_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_07_crc_num_reg_w(snk_pcs_RX_ptype_pre_07_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_08_crc_num_reg_w(snk_pcs_RX_ptype_pre_08_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_09_crc_num_reg_w(snk_pcs_RX_ptype_pre_09_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_10_crc_num_reg_w(snk_pcs_RX_ptype_pre_10_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_11_crc_num_reg_w(snk_pcs_RX_ptype_pre_11_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_12_crc_num_reg_w(snk_pcs_RX_ptype_pre_12_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_13_crc_num_reg_w(snk_pcs_RX_ptype_pre_13_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_14_crc_num_reg_w(snk_pcs_RX_ptype_pre_14_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_15_crc_num_reg_w(snk_pcs_RX_ptype_pre_15_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_16_crc_num_reg_w(snk_pcs_RX_ptype_pre_16_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_17_crc_num_reg_w(snk_pcs_RX_ptype_pre_17_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_18_crc_num_reg_w(snk_pcs_RX_ptype_pre_18_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_19_crc_num_reg_w(snk_pcs_RX_ptype_pre_19_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_20_crc_num_reg_w(snk_pcs_RX_ptype_pre_20_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_21_crc_num_reg_w(snk_pcs_RX_ptype_pre_21_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_22_crc_num_reg_w(snk_pcs_RX_ptype_pre_22_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_23_crc_num_reg_w(snk_pcs_RX_ptype_pre_23_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_24_crc_num_reg_w(snk_pcs_RX_ptype_pre_24_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_25_crc_num_reg_w(snk_pcs_RX_ptype_pre_25_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_26_crc_num_reg_w(snk_pcs_RX_ptype_pre_26_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_27_crc_num_reg_w(snk_pcs_RX_ptype_pre_27_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_28_crc_num_reg_w(snk_pcs_RX_ptype_pre_28_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_29_crc_num_reg_w(snk_pcs_RX_ptype_pre_29_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_30_crc_num_reg_w(snk_pcs_RX_ptype_pre_30_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_31_crc_num_reg_w(snk_pcs_RX_ptype_pre_31_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_00_packets_reg_w(snk_pcs_RX_ptype_pre_00_packets_reg_w),
     .snk_pcs_RX_ptype_pre_01_packets_reg_w(snk_pcs_RX_ptype_pre_01_packets_reg_w),
     .snk_pcs_RX_ptype_pre_02_packets_reg_w(snk_pcs_RX_ptype_pre_02_packets_reg_w),
     .snk_pcs_RX_ptype_pre_03_packets_reg_w(snk_pcs_RX_ptype_pre_03_packets_reg_w),
     .snk_pcs_RX_ptype_pre_04_packets_reg_w(snk_pcs_RX_ptype_pre_04_packets_reg_w),
     .snk_pcs_RX_ptype_pre_05_packets_reg_w(snk_pcs_RX_ptype_pre_05_packets_reg_w),
     .snk_pcs_RX_ptype_pre_06_packets_reg_w(snk_pcs_RX_ptype_pre_06_packets_reg_w),
     .snk_pcs_RX_ptype_pre_07_packets_reg_w(snk_pcs_RX_ptype_pre_07_packets_reg_w),
     .snk_pcs_RX_ptype_pre_08_packets_reg_w(snk_pcs_RX_ptype_pre_08_packets_reg_w),
     .snk_pcs_RX_ptype_pre_09_packets_reg_w(snk_pcs_RX_ptype_pre_09_packets_reg_w),
     .snk_pcs_RX_ptype_pre_10_packets_reg_w(snk_pcs_RX_ptype_pre_10_packets_reg_w),
     .snk_pcs_RX_ptype_pre_11_packets_reg_w(snk_pcs_RX_ptype_pre_11_packets_reg_w),
     .snk_pcs_RX_ptype_pre_12_packets_reg_w(snk_pcs_RX_ptype_pre_12_packets_reg_w),
     .snk_pcs_RX_ptype_pre_13_packets_reg_w(snk_pcs_RX_ptype_pre_13_packets_reg_w),
     .snk_pcs_RX_ptype_pre_14_packets_reg_w(snk_pcs_RX_ptype_pre_14_packets_reg_w),
     .snk_pcs_RX_ptype_pre_15_packets_reg_w(snk_pcs_RX_ptype_pre_15_packets_reg_w),
     .snk_pcs_RX_ptype_pre_16_packets_reg_w(snk_pcs_RX_ptype_pre_16_packets_reg_w),
     .snk_pcs_RX_ptype_pre_17_packets_reg_w(snk_pcs_RX_ptype_pre_17_packets_reg_w),
     .snk_pcs_RX_ptype_pre_18_packets_reg_w(snk_pcs_RX_ptype_pre_18_packets_reg_w),
     .snk_pcs_RX_ptype_pre_19_packets_reg_w(snk_pcs_RX_ptype_pre_19_packets_reg_w),
     .snk_pcs_RX_ptype_pre_20_packets_reg_w(snk_pcs_RX_ptype_pre_20_packets_reg_w),
     .snk_pcs_RX_ptype_pre_21_packets_reg_w(snk_pcs_RX_ptype_pre_21_packets_reg_w),
     .snk_pcs_RX_ptype_pre_22_packets_reg_w(snk_pcs_RX_ptype_pre_22_packets_reg_w),
     .snk_pcs_RX_ptype_pre_23_packets_reg_w(snk_pcs_RX_ptype_pre_23_packets_reg_w),
     .snk_pcs_RX_ptype_pre_24_packets_reg_w(snk_pcs_RX_ptype_pre_24_packets_reg_w),
     .snk_pcs_RX_ptype_pre_25_packets_reg_w(snk_pcs_RX_ptype_pre_25_packets_reg_w),
     .snk_pcs_RX_ptype_pre_26_packets_reg_w(snk_pcs_RX_ptype_pre_26_packets_reg_w),
     .snk_pcs_RX_ptype_pre_27_packets_reg_w(snk_pcs_RX_ptype_pre_27_packets_reg_w),
     .snk_pcs_RX_ptype_pre_28_packets_reg_w(snk_pcs_RX_ptype_pre_28_packets_reg_w),
     .snk_pcs_RX_ptype_pre_29_packets_reg_w(snk_pcs_RX_ptype_pre_29_packets_reg_w),
     .snk_pcs_RX_ptype_pre_30_packets_reg_w(snk_pcs_RX_ptype_pre_30_packets_reg_w),
     .snk_pcs_RX_ptype_pre_31_packets_reg_w(snk_pcs_RX_ptype_pre_31_packets_reg_w),
     .snk_pcs_RX_null_prot_status_reg_w(snk_pcs_RX_null_prot_status_reg_w),
     .snk_pcs_RX_null_upro_status_reg_w(snk_pcs_RX_null_upro_status_reg_w),
     .snk_pcs_RX_crc_err_cnt_reg_2_w(snk_pcs_RX_crc_err_cnt_reg_2_w),
     .src_pcs_TX_src_pcs_if_stat_clear_reg_w(src_pcs_TX_src_pcs_if_stat_clear_reg_w),
     .bist_p1_Tx_packet_status_reg_w(bist_p1_Tx_packet_status_reg_w),
     .bist_p1_Tx_go_command_reg_w(bist_p1_Tx_go_command_reg_w),
     .bist_p1_Rx_prbs_err_status_reg_w(bist_p1_Rx_prbs_err_status_reg_w),
     .bist_p2_Tx_packet_status_reg_w(bist_p2_Tx_packet_status_reg_w),
     .bist_p2_Tx_go_command_reg_w(bist_p2_Tx_go_command_reg_w),
     .bist_p2_Rx_prbs_err_status_reg_w(bist_p2_Rx_prbs_err_status_reg_w),
     .bist_p3_Tx_packet_status_reg_w(bist_p3_Tx_packet_status_reg_w),
     .bist_p3_Tx_go_command_reg_w(bist_p3_Tx_go_command_reg_w),
     .bist_p3_Rx_prbs_err_status_reg_w(bist_p3_Rx_prbs_err_status_reg_w),
     .bc_msio_tadp_status_reg_w(bc_msio_tadp_status_reg_w),
     .bc_cir_rx_buffer_out_packet_status_w(bc_cir_rx_buffer_out_packet_status_w),
     .bc_cir_Cir_Wr_Data_Cmd_w(bc_cir_Cir_Wr_Data_Cmd_w),
     .bc_uart_rx_buffer_out_packet_status_w(bc_uart_rx_buffer_out_packet_status_w),
     .bc_snirlnk_clkpkt_mn_change_reg_w(bc_snirlnk_clkpkt_mn_change_reg_w),
     .bc_msio_status_reg_w(bc_msio_status_reg_w),
     .auxhdbtsched_Snir_aux_tkn_cnt_reg_w(auxhdbtsched_Snir_aux_tkn_cnt_reg_w),
     .auxhdbtsched_Snir_auxhdbtsched_idle_cntr_reg_w(auxhdbtsched_Snir_auxhdbtsched_idle_cntr_reg_w),
     .auxhdbtsched_ptype_00_packets_reg_w(auxhdbtsched_ptype_00_packets_reg_w),
     .lppf_lppf_crc_error_reg_w(lppf_lppf_crc_error_reg_w),
     .lppf_null_frame_num_reg_w(lppf_null_frame_num_reg_w),
     .lppf_a1_lppf_sw_rd_status_w(lppf_a1_lppf_sw_rd_status_w),
     .lppf_lppf_status_register_0_w(lppf_lppf_status_register_0_w),
     .lppf_lppf_aya1_type_err_reg_w(lppf_lppf_aya1_type_err_reg_w),
     .lppf_a1_lppf_sw_status_w(lppf_a1_lppf_sw_status_w),
     .lppf_lppf_info_rx_reg_w(lppf_lppf_info_rx_reg_w),
     .hdbt_hlic_read_data_ctrl_reg_w(hdbt_hlic_read_data_ctrl_reg_w),
     .hdbt_hlic_brif_port_rx_len_reg_r(hdbt_hlic_brif_port_rx_len_reg_r),
     .hdbt_hlic_brif_port_rx_data_reg_r(hdbt_hlic_brif_port_rx_data_reg_r),
     .hdbt_hlic_brif_port_tx_len_reg_w(hdbt_hlic_brif_port_tx_len_reg_w),
     .hdbt_hlic_brif_port_tx_data_reg_w(hdbt_hlic_brif_port_tx_data_reg_w),
     .hdmic_ctrl_cec_ing_rx_data_reg_r(hdmic_ctrl_cec_ing_rx_data_reg_r),
     .hdmic_ctrl_cec_egr_rx_data_reg_r(hdmic_ctrl_cec_egr_rx_data_reg_r),
     .hdmic_ddc_fifo_status_w(hdmic_ddc_fifo_status_w),
     .hdmic_ddc_fifo_read_slv_r(hdmic_ddc_fifo_read_slv_r),
     .hdmic_ddc_fifo_read_mst_r(hdmic_ddc_fifo_read_mst_r),
     .hdmic_intrpt_5v_rxs_clear_w(hdmic_intrpt_5v_rxs_clear_w),
     .Tx_Retr_buffer_pkt_num_reg_w(Tx_Retr_buffer_pkt_num_reg_w),
     .link_int_stat_reg_w(link_int_stat_reg_w),
     .snk_pcs_RX_ptype_pre_2_00_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_00_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_01_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_01_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_02_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_02_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_03_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_03_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_04_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_04_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_05_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_05_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_06_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_06_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_07_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_07_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_08_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_08_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_09_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_09_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_10_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_10_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_11_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_11_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_12_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_12_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_13_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_13_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_14_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_14_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_15_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_15_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_16_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_16_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_17_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_17_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_18_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_18_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_19_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_19_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_20_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_20_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_21_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_21_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_22_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_22_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_23_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_23_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_24_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_24_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_25_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_25_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_26_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_26_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_27_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_27_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_28_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_28_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_29_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_29_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_30_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_30_crc_num_reg_w),
     .snk_pcs_RX_ptype_pre_2_31_crc_num_reg_w(snk_pcs_RX_ptype_pre_2_31_crc_num_reg_w),
     .snk_pcs_RX_ptype_2_pre_00_packets_reg_w(snk_pcs_RX_ptype_2_pre_00_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_01_packets_reg_w(snk_pcs_RX_ptype_2_pre_01_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_02_packets_reg_w(snk_pcs_RX_ptype_2_pre_02_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_03_packets_reg_w(snk_pcs_RX_ptype_2_pre_03_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_04_packets_reg_w(snk_pcs_RX_ptype_2_pre_04_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_05_packets_reg_w(snk_pcs_RX_ptype_2_pre_05_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_06_packets_reg_w(snk_pcs_RX_ptype_2_pre_06_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_07_packets_reg_w(snk_pcs_RX_ptype_2_pre_07_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_08_packets_reg_w(snk_pcs_RX_ptype_2_pre_08_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_09_packets_reg_w(snk_pcs_RX_ptype_2_pre_09_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_10_packets_reg_w(snk_pcs_RX_ptype_2_pre_10_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_11_packets_reg_w(snk_pcs_RX_ptype_2_pre_11_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_12_packets_reg_w(snk_pcs_RX_ptype_2_pre_12_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_13_packets_reg_w(snk_pcs_RX_ptype_2_pre_13_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_14_packets_reg_w(snk_pcs_RX_ptype_2_pre_14_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_15_packets_reg_w(snk_pcs_RX_ptype_2_pre_15_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_16_packets_reg_w(snk_pcs_RX_ptype_2_pre_16_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_17_packets_reg_w(snk_pcs_RX_ptype_2_pre_17_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_18_packets_reg_w(snk_pcs_RX_ptype_2_pre_18_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_19_packets_reg_w(snk_pcs_RX_ptype_2_pre_19_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_20_packets_reg_w(snk_pcs_RX_ptype_2_pre_20_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_21_packets_reg_w(snk_pcs_RX_ptype_2_pre_21_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_22_packets_reg_w(snk_pcs_RX_ptype_2_pre_22_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_23_packets_reg_w(snk_pcs_RX_ptype_2_pre_23_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_24_packets_reg_w(snk_pcs_RX_ptype_2_pre_24_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_25_packets_reg_w(snk_pcs_RX_ptype_2_pre_25_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_26_packets_reg_w(snk_pcs_RX_ptype_2_pre_26_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_27_packets_reg_w(snk_pcs_RX_ptype_2_pre_27_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_28_packets_reg_w(snk_pcs_RX_ptype_2_pre_28_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_29_packets_reg_w(snk_pcs_RX_ptype_2_pre_29_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_30_packets_reg_w(snk_pcs_RX_ptype_2_pre_30_packets_reg_w),
     .snk_pcs_RX_ptype_2_pre_31_packets_reg_w(snk_pcs_RX_ptype_2_pre_31_packets_reg_w),
     .snk_pcs_ptype_all_crc_num_reg_w(snk_pcs_ptype_all_crc_num_reg_w),
     .src_pcs_delay_calc_int_stat_reg_w(src_pcs_delay_calc_int_stat_reg_w),
     .bist_p1_Tx_bist_tadp_insert_error_w(bist_p1_Tx_bist_tadp_insert_error_w),
     .bist_p2_Tx_bist_tadp_insert_error_w(bist_p2_Tx_bist_tadp_insert_error_w),
     .bist_p3_Tx_bist_tadp_insert_error_w(bist_p3_Tx_bist_tadp_insert_error_w),
     .s_retr_buff_max_words_in_ram(s_retr_buff_max_words_in_ram),
     
     .hdmic_ddc_ram_bus_add(hdmic_ddc_ram_bus_add),
     .hdmic_ddc_ram_bus_wr(hdmic_ddc_ram_bus_wr),
     .hdmic_ddc_ram_bus_rd(hdmic_ddc_ram_bus_rd),
     .hdmic_ddc_ram_bus_ack(hdmic_ddc_ram_bus_ack),
     .hdmic_ddc_ram_bus_data_rd(hdmic_ddc_ram_bus_data_rd),
     
     .Snir_link_trn_regs_bus_add(Snir_link_trn_regs_bus_add),
     .Snir_link_trn_regs_bus_wr(Snir_link_trn_regs_bus_wr),
     .Snir_link_trn_regs_bus_rd(Snir_link_trn_regs_bus_rd),
     .Snir_link_trn_regs_bus_ack(Snir_link_trn_regs_bus_ack),
     .Snir_link_trn_regs_bus_data_rd(Snir_link_trn_regs_bus_data_rd),
     .add_bus(Snir_link_regs_bus_add_int),
     .data_bus(link_top_regs_rif_data_wr),
     .bus_wr(Snir_link_regs_bus_wr),
     .byte_en(link_top_regs_rif_byte_en),
     .bus_rd(Snir_link_regs_bus_rd),
     .bus_ack(Snir_link_regs_bus_ack),
     .hdbt_hlic_brif_port_rx_len_reg_ack(hdbt_hlic_brif_port_rx_len_reg_ack),
     .hdbt_hlic_brif_port_rx_data_reg_ack(hdbt_hlic_brif_port_rx_data_reg_ack),
     .hdbt_hlic_brif_port_tx_len_reg_ack(hdbt_hlic_brif_port_tx_len_reg_ack),
     .hdbt_hlic_brif_port_tx_data_reg_ack(hdbt_hlic_brif_port_tx_data_reg_ack),
     .data_bus_rd(Snir_link_regs_bus_data_rd),
     .scan_enable(scan_enable),
     .clk(link_regs_sys_clk),
     .reset_n(link_regs_sys_reset_n)
   );


   Snir_link_trn_regs
      #(.w_add_bus (w_add_bus ),
        .w_data_bus(w_data_bus),
        .REG_SPACE (32'h90070000), .REG_MASK(32'h0000ffff)) Snir_link_trn_regs_inst
      (
     .src_pcs_if_mainbuffer_0_sd(src_pcs_if_mainbuffer_0_sd),
     .src_pcs_if_mainbuffer_0_ds(src_pcs_if_mainbuffer_0_ds),
     .src_pcs_if_mainbuffer_0_ls(src_pcs_if_mainbuffer_0_ls),
     .s_src_pcs_ptype_00_packets(s_src_pcs_ptype_00_packets),
     .s_src_pcs_ptype_01_packets(s_src_pcs_ptype_01_packets),
     .s_src_pcs_ptype_02_packets(s_src_pcs_ptype_02_packets),
     .s_src_pcs_ptype_03_packets(s_src_pcs_ptype_03_packets),
     .s_src_pcs_ptype_04_packets(s_src_pcs_ptype_04_packets),
     .s_src_pcs_ptype_05_packets(s_src_pcs_ptype_05_packets),
     .s_src_pcs_ptype_06_packets(s_src_pcs_ptype_06_packets),
     .s_src_pcs_ptype_07_packets(s_src_pcs_ptype_07_packets),
     .s_src_pcs_ptype_08_packets(s_src_pcs_ptype_08_packets),
     .s_src_pcs_ptype_09_packets(s_src_pcs_ptype_09_packets),
     .s_src_pcs_ptype_10_packets(s_src_pcs_ptype_10_packets),
     .s_src_pcs_ptype_11_packets(s_src_pcs_ptype_11_packets),
     .s_src_pcs_ptype_12_packets(s_src_pcs_ptype_12_packets),
     .s_src_pcs_ptype_13_packets(s_src_pcs_ptype_13_packets),
     .s_src_pcs_ptype_14_packets(s_src_pcs_ptype_14_packets),
     .s_src_pcs_ptype_15_packets(s_src_pcs_ptype_15_packets),
     .s_src_pcs_ptype_16_packets(s_src_pcs_ptype_16_packets),
     .s_src_pcs_ptype_17_packets(s_src_pcs_ptype_17_packets),
     .s_src_pcs_ptype_18_packets(s_src_pcs_ptype_18_packets),
     .s_src_pcs_ptype_19_packets(s_src_pcs_ptype_19_packets),
     .s_src_pcs_ptype_20_packets(s_src_pcs_ptype_20_packets),
     .s_src_pcs_ptype_21_packets(s_src_pcs_ptype_21_packets),
     .s_src_pcs_ptype_22_packets(s_src_pcs_ptype_22_packets),
     .s_src_pcs_ptype_23_packets(s_src_pcs_ptype_23_packets),
     .s_src_pcs_ptype_24_packets(s_src_pcs_ptype_24_packets),
     .s_src_pcs_ptype_25_packets(s_src_pcs_ptype_25_packets),
     .s_src_pcs_ptype_26_packets(s_src_pcs_ptype_26_packets),
     .s_src_pcs_ptype_27_packets(s_src_pcs_ptype_27_packets),
     .s_src_pcs_ptype_28_packets(s_src_pcs_ptype_28_packets),
     .s_src_pcs_ptype_29_packets(s_src_pcs_ptype_29_packets),
     .s_src_pcs_ptype_30_packets(s_src_pcs_ptype_30_packets),
     .s_src_pcs_ptype_31_packets(s_src_pcs_ptype_31_packets),
     .mainbuffer_src_pcs0_if_en(mainbuffer_src_pcs0_if_en),
     .TX_ptype_00_packets_reg_w(TX_ptype_00_packets_reg_w),
     .TX_ptype_01_packets_reg_w(TX_ptype_01_packets_reg_w),
     .TX_ptype_02_packets_reg_w(TX_ptype_02_packets_reg_w),
     .TX_ptype_03_packets_reg_w(TX_ptype_03_packets_reg_w),
     .TX_ptype_04_packets_reg_w(TX_ptype_04_packets_reg_w),
     .TX_ptype_05_packets_reg_w(TX_ptype_05_packets_reg_w),
     .TX_ptype_06_packets_reg_w(TX_ptype_06_packets_reg_w),
     .TX_ptype_07_packets_reg_w(TX_ptype_07_packets_reg_w),
     .TX_ptype_08_packets_reg_w(TX_ptype_08_packets_reg_w),
     .TX_ptype_09_packets_reg_w(TX_ptype_09_packets_reg_w),
     .TX_ptype_10_packets_reg_w(TX_ptype_10_packets_reg_w),
     .TX_ptype_11_packets_reg_w(TX_ptype_11_packets_reg_w),
     .TX_ptype_12_packets_reg_w(TX_ptype_12_packets_reg_w),
     .TX_ptype_13_packets_reg_w(TX_ptype_13_packets_reg_w),
     .TX_ptype_14_packets_reg_w(TX_ptype_14_packets_reg_w),
     .TX_ptype_15_packets_reg_w(TX_ptype_15_packets_reg_w),
     .TX_ptype_16_packets_reg_w(TX_ptype_16_packets_reg_w),
     .TX_ptype_17_packets_reg_w(TX_ptype_17_packets_reg_w),
     .TX_ptype_18_packets_reg_w(TX_ptype_18_packets_reg_w),
     .TX_ptype_19_packets_reg_w(TX_ptype_19_packets_reg_w),
     .TX_ptype_20_packets_reg_w(TX_ptype_20_packets_reg_w),
     .TX_ptype_21_packets_reg_w(TX_ptype_21_packets_reg_w),
     .TX_ptype_22_packets_reg_w(TX_ptype_22_packets_reg_w),
     .TX_ptype_23_packets_reg_w(TX_ptype_23_packets_reg_w),
     .TX_ptype_24_packets_reg_w(TX_ptype_24_packets_reg_w),
     .TX_ptype_25_packets_reg_w(TX_ptype_25_packets_reg_w),
     .TX_ptype_26_packets_reg_w(TX_ptype_26_packets_reg_w),
     .TX_ptype_27_packets_reg_w(TX_ptype_27_packets_reg_w),
     .TX_ptype_28_packets_reg_w(TX_ptype_28_packets_reg_w),
     .TX_ptype_29_packets_reg_w(TX_ptype_29_packets_reg_w),
     .TX_ptype_30_packets_reg_w(TX_ptype_30_packets_reg_w),
     .TX_ptype_31_packets_reg_w(TX_ptype_31_packets_reg_w),
     .add_bus(Snir_link_trn_regs_rif_add_bus),
     .data_bus(Snir_link_trn_regs_rif_data_wr),
     .bus_wr(Snir_link_trn_regs_rif_wr),
     .byte_en(Snir_link_trn_regs_rif_byte_en),
     .bus_rd(Snir_link_trn_regs_rif_rd),
     .bus_ack(Snir_link_trn_regs_rif_ack),
     .data_bus_rd(Snir_link_trn_regs_rif_data_rd),
     .scan_enable(scan_enable),
     .clk(dsp_pcs_trn_clk),
     .reset_n(dsp_pcs_trn_reset_n)
   );



   

   assign Snir_link_regs_bus_add_int = {16'h0000, Snir_link_regs_bus_add};
   assign lppf_lppf_rx_descr_lock = lppf_rx_descr_lock;
   assign lppf_lppf_rx_active = lppf_rx_active;


   assign src_pcs_s_src_pcs1_ptype_00_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_01_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_02_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_03_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_04_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_05_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_06_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_07_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_08_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_09_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_10_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_11_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_12_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_13_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_14_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_15_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_16_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_17_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_18_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_19_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_20_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_21_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_22_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_23_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_24_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_25_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_26_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_27_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_28_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_29_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_30_packets = 32'b0;
   assign src_pcs_s_src_pcs1_ptype_31_packets = 32'b0;

   assign snk_pcs_snk_pcs_stat_clear_bus   = 32'b0;
   assign bist_p1_c_tx_bist_tadp_single_go = 32'b0;
   assign bist_p2_c_tx_bist_tadp_single_go = 32'b0;
   assign bist_p3_c_tx_bist_tadp_single_go = 32'b0;
   assign bc_uart_link_uart_s_tx_fifo_used = 9'b0;
   assign hdmic_intrpt_5v_rxs_clear_dummy  = 32'b0;
   assign bc_uart_link_uart_s_rx_fifo_used = 5'b0;

   assign vl_sms_mainbuffer_src_pcs_if_SMS_sms_1_WSO = 1'b0;



   
   
   
   async_rif #(.ALL_SPACE(1)) Snir_link_trn_regs_async_rif
    (
     
     .bus_rd(Snir_link_trn_regs_bus_rd),
     .bus_wr(Snir_link_trn_regs_bus_wr),
     .bus_ack(Snir_link_trn_regs_bus_ack),
     .add_bus({16'h0, Snir_link_trn_regs_bus_add}),
     .bus_be(link_top_regs_rif_byte_en),
     .data_bus_rd(Snir_link_trn_regs_bus_data_rd),
     .data_bus_wr(link_top_regs_rif_data_wr),
     
     .rd(Snir_link_trn_regs_rif_rd),
     .wr(Snir_link_trn_regs_rif_wr),
     .ack(Snir_link_trn_regs_rif_ack),
     .rd_data(Snir_link_trn_regs_rif_data_rd),
     .add_out({Snir_link_trn_regs_bus_add_sync_nc, Snir_link_trn_regs_bus_add_sync}),
     .data_out(Snir_link_trn_regs_rif_data_wr),
     .ben_out(Snir_link_trn_regs_rif_byte_en),
     
     .scan_mode(scan_mode),
     .reg_clk(dsp_pcs_trn_clk),
     .clk(link_regs_sys_clk),
     .reset_n(link_regs_sys_reset_n)
     );

   assign Snir_link_trn_regs_rif_add_bus = {16'h0000, Snir_link_trn_regs_bus_add_sync};





   
   
   
   
   
   always @(posedge tx_aux_sched_sys_clk or negedge tx_aux_sched_sys_reset_n)
     if (!tx_aux_sched_sys_reset_n) aux2lppf_token_tb <= {32{1'b0}};
     else                           aux2lppf_token_tb <= {15'h0000 ,lppf_tx_aux_token_ready, lppf_tx_aux_token_valid, lppf_tx_aux_token_data};
   
   
   always @(posedge rx_link_lppf_sys_clk or negedge rx_link_lppf_sys_reset_n)
     if (!rx_link_lppf_sys_reset_n) lppf2aux_token_tb <= {32{1'b0}};
     else                           lppf2aux_token_tb <= {15'h0000 ,lppf_rx_aux_token_ready, lppf_rx_aux_token_valid, lppf_rx_aux_token_data};
 
   
   always @(posedge rx_backward_comp_sys_clk or negedge rx_backward_comp_sys_reset_n)
     if (!rx_backward_comp_sys_reset_n) bc_rx_out_token_tb <= {32{1'b0}};
     else                               bc_rx_out_token_tb <= {bc_rx_tokout_valid, bc_rx_tokout_ready, bc_rx_tokout_data[37:16], bc_rx_tokout_data[7:0]};

   
   always @(posedge tx_backward_comp_sys_clk or negedge tx_backward_comp_sys_reset_n)
     if (!tx_backward_comp_sys_reset_n) bc_tx_out_token_tb <= {32{1'b0}};
     else                               bc_tx_out_token_tb <= {bc_tx_tokout_valid, bc_tx_tokout_ready, bc_tx_tokout_data[37:16], bc_tx_tokout_data[7:0]};
   
   
   always @(posedge rx_backward_comp_sys_clk or negedge rx_backward_comp_sys_reset_n)
     if (!rx_backward_comp_sys_reset_n) bc_rx_in_token_tb <= {32{1'b0}};
     else                               bc_rx_in_token_tb <= {bc_rx_tokin_valid, bc_rx_tokin_ready, bc_rx_tokin_data[37:16], bc_rx_tokin_data[7:0]};

   
   always @(posedge tx_backward_comp_sys_clk or negedge tx_backward_comp_sys_reset_n)
     if (!tx_backward_comp_sys_reset_n) bc_tx_in_token_tb <= {32{1'b0}};
     else                               bc_tx_in_token_tb <= {bc_tx_tokin_valid, bc_tx_tokin_ready, bc_tx_tokin_data[37:16], bc_tx_tokin_data[7:0]};
   
   
   
   
   
   
   assign s_src_pcs_clr_counters  = {TX_ptype_31_packets_reg_w, TX_ptype_30_packets_reg_w,
	  			     TX_ptype_29_packets_reg_w, TX_ptype_28_packets_reg_w,
	  			     TX_ptype_27_packets_reg_w, TX_ptype_26_packets_reg_w,
	  			     TX_ptype_25_packets_reg_w, TX_ptype_24_packets_reg_w,
	  			     TX_ptype_23_packets_reg_w, TX_ptype_22_packets_reg_w,
	  			     TX_ptype_21_packets_reg_w, TX_ptype_20_packets_reg_w,
	  			     TX_ptype_19_packets_reg_w, TX_ptype_18_packets_reg_w,
	  			     TX_ptype_17_packets_reg_w, TX_ptype_16_packets_reg_w,
	  			     TX_ptype_15_packets_reg_w, TX_ptype_14_packets_reg_w,
	  			     TX_ptype_13_packets_reg_w, TX_ptype_12_packets_reg_w,
	  			     TX_ptype_11_packets_reg_w, TX_ptype_10_packets_reg_w,
	  			     TX_ptype_09_packets_reg_w, TX_ptype_08_packets_reg_w,
	  			     TX_ptype_07_packets_reg_w, TX_ptype_06_packets_reg_w,
	  			     TX_ptype_05_packets_reg_w, TX_ptype_04_packets_reg_w,
	  			     TX_ptype_03_packets_reg_w, TX_ptype_02_packets_reg_w,
	  			     TX_ptype_01_packets_reg_w, TX_ptype_00_packets_reg_w}; 


   assign  src_pcs_src_pcs_stat_clear_bus = {32{1'b0}};
   assign  snk_pcs_src_pcs_stat_clear_bus = {32{1'b0}};


   
   assign s_snk_pcs_clr_pre_counters =     {snk_pcs_RX_ptype_pre_31_packets_reg_w, snk_pcs_RX_ptype_pre_30_packets_reg_w, 
	   				    snk_pcs_RX_ptype_pre_29_packets_reg_w, snk_pcs_RX_ptype_pre_28_packets_reg_w, 
					    snk_pcs_RX_ptype_pre_27_packets_reg_w, snk_pcs_RX_ptype_pre_26_packets_reg_w, 
					    snk_pcs_RX_ptype_pre_25_packets_reg_w, snk_pcs_RX_ptype_pre_24_packets_reg_w, 
					    snk_pcs_RX_ptype_pre_23_packets_reg_w, snk_pcs_RX_ptype_pre_22_packets_reg_w, 
					    snk_pcs_RX_ptype_pre_21_packets_reg_w, snk_pcs_RX_ptype_pre_20_packets_reg_w, 
					    snk_pcs_RX_ptype_pre_19_packets_reg_w, snk_pcs_RX_ptype_pre_18_packets_reg_w, 
					    snk_pcs_RX_ptype_pre_17_packets_reg_w, snk_pcs_RX_ptype_pre_16_packets_reg_w, 
					    snk_pcs_RX_ptype_pre_15_packets_reg_w, snk_pcs_RX_ptype_pre_14_packets_reg_w, 
					    snk_pcs_RX_ptype_pre_13_packets_reg_w, snk_pcs_RX_ptype_pre_12_packets_reg_w, 
					    snk_pcs_RX_ptype_pre_11_packets_reg_w, snk_pcs_RX_ptype_pre_10_packets_reg_w, 
					    snk_pcs_RX_ptype_pre_09_packets_reg_w, snk_pcs_RX_ptype_pre_08_packets_reg_w, 
					    snk_pcs_RX_ptype_pre_07_packets_reg_w, snk_pcs_RX_ptype_pre_06_packets_reg_w, 
					    snk_pcs_RX_ptype_pre_05_packets_reg_w, snk_pcs_RX_ptype_pre_04_packets_reg_w, 
					    snk_pcs_RX_ptype_pre_03_packets_reg_w, snk_pcs_RX_ptype_pre_02_packets_reg_w, 
					    snk_pcs_RX_ptype_pre_01_packets_reg_w, snk_pcs_RX_ptype_pre_00_packets_reg_w}; 
   
   assign s_snk_pcs_clr_2_pre_counters =   {snk_pcs_RX_ptype_2_pre_31_packets_reg_w, snk_pcs_RX_ptype_2_pre_30_packets_reg_w, 
	   				    snk_pcs_RX_ptype_2_pre_29_packets_reg_w, snk_pcs_RX_ptype_2_pre_28_packets_reg_w, 
					    snk_pcs_RX_ptype_2_pre_27_packets_reg_w, snk_pcs_RX_ptype_2_pre_26_packets_reg_w, 
					    snk_pcs_RX_ptype_2_pre_25_packets_reg_w, snk_pcs_RX_ptype_2_pre_24_packets_reg_w, 
					    snk_pcs_RX_ptype_2_pre_23_packets_reg_w, snk_pcs_RX_ptype_2_pre_22_packets_reg_w, 
					    snk_pcs_RX_ptype_2_pre_21_packets_reg_w, snk_pcs_RX_ptype_2_pre_20_packets_reg_w, 
					    snk_pcs_RX_ptype_2_pre_19_packets_reg_w, snk_pcs_RX_ptype_2_pre_18_packets_reg_w, 
					    snk_pcs_RX_ptype_2_pre_17_packets_reg_w, snk_pcs_RX_ptype_2_pre_16_packets_reg_w, 
					    snk_pcs_RX_ptype_2_pre_15_packets_reg_w, snk_pcs_RX_ptype_2_pre_14_packets_reg_w, 
					    snk_pcs_RX_ptype_2_pre_13_packets_reg_w, snk_pcs_RX_ptype_2_pre_12_packets_reg_w, 
					    snk_pcs_RX_ptype_2_pre_11_packets_reg_w, snk_pcs_RX_ptype_2_pre_10_packets_reg_w, 
					    snk_pcs_RX_ptype_2_pre_09_packets_reg_w, snk_pcs_RX_ptype_2_pre_08_packets_reg_w, 
					    snk_pcs_RX_ptype_2_pre_07_packets_reg_w, snk_pcs_RX_ptype_2_pre_06_packets_reg_w, 
					    snk_pcs_RX_ptype_2_pre_05_packets_reg_w, snk_pcs_RX_ptype_2_pre_04_packets_reg_w, 
					    snk_pcs_RX_ptype_2_pre_03_packets_reg_w, snk_pcs_RX_ptype_2_pre_02_packets_reg_w, 
					    snk_pcs_RX_ptype_2_pre_01_packets_reg_w, snk_pcs_RX_ptype_2_pre_00_packets_reg_w}; 

   assign s_snk_pcs_clr2_pre_crc_counters = {snk_pcs_RX_ptype_pre_2_31_crc_num_reg_w, snk_pcs_RX_ptype_pre_2_30_crc_num_reg_w,
	 				     snk_pcs_RX_ptype_pre_2_29_crc_num_reg_w, snk_pcs_RX_ptype_pre_2_28_crc_num_reg_w,
	 				     snk_pcs_RX_ptype_pre_2_27_crc_num_reg_w, snk_pcs_RX_ptype_pre_2_26_crc_num_reg_w,
	 				     snk_pcs_RX_ptype_pre_2_25_crc_num_reg_w, snk_pcs_RX_ptype_pre_2_24_crc_num_reg_w,
	 				     snk_pcs_RX_ptype_pre_2_23_crc_num_reg_w, snk_pcs_RX_ptype_pre_2_22_crc_num_reg_w,
	 				     snk_pcs_RX_ptype_pre_2_21_crc_num_reg_w, snk_pcs_RX_ptype_pre_2_20_crc_num_reg_w,
	 				     snk_pcs_RX_ptype_pre_2_19_crc_num_reg_w, snk_pcs_RX_ptype_pre_2_18_crc_num_reg_w,
	 				     snk_pcs_RX_ptype_pre_2_17_crc_num_reg_w, snk_pcs_RX_ptype_pre_2_16_crc_num_reg_w,
	 				     snk_pcs_RX_ptype_pre_2_15_crc_num_reg_w, snk_pcs_RX_ptype_pre_2_14_crc_num_reg_w,
	 				     snk_pcs_RX_ptype_pre_2_13_crc_num_reg_w, snk_pcs_RX_ptype_pre_2_12_crc_num_reg_w,
	 				     snk_pcs_RX_ptype_pre_2_11_crc_num_reg_w, snk_pcs_RX_ptype_pre_2_10_crc_num_reg_w,
	 				     snk_pcs_RX_ptype_pre_2_09_crc_num_reg_w, snk_pcs_RX_ptype_pre_2_08_crc_num_reg_w,
	 				     snk_pcs_RX_ptype_pre_2_07_crc_num_reg_w, snk_pcs_RX_ptype_pre_2_06_crc_num_reg_w,
	 				     snk_pcs_RX_ptype_pre_2_05_crc_num_reg_w, snk_pcs_RX_ptype_pre_2_04_crc_num_reg_w,
	 				     snk_pcs_RX_ptype_pre_2_03_crc_num_reg_w, snk_pcs_RX_ptype_pre_2_02_crc_num_reg_w,
	 				     snk_pcs_RX_ptype_pre_2_01_crc_num_reg_w, snk_pcs_RX_ptype_pre_2_00_crc_num_reg_w};   

   assign s_snk_pcs_clr_pre_crc_counters = {snk_pcs_RX_ptype_pre_31_crc_num_reg_w, snk_pcs_RX_ptype_pre_30_crc_num_reg_w,
	 				    snk_pcs_RX_ptype_pre_29_crc_num_reg_w, snk_pcs_RX_ptype_pre_28_crc_num_reg_w,
	 				    snk_pcs_RX_ptype_pre_27_crc_num_reg_w, snk_pcs_RX_ptype_pre_26_crc_num_reg_w,
	 				    snk_pcs_RX_ptype_pre_25_crc_num_reg_w, snk_pcs_RX_ptype_pre_24_crc_num_reg_w,
	 				    snk_pcs_RX_ptype_pre_23_crc_num_reg_w, snk_pcs_RX_ptype_pre_22_crc_num_reg_w,
	 				    snk_pcs_RX_ptype_pre_21_crc_num_reg_w, snk_pcs_RX_ptype_pre_20_crc_num_reg_w,
	 				    snk_pcs_RX_ptype_pre_19_crc_num_reg_w, snk_pcs_RX_ptype_pre_18_crc_num_reg_w,
	 				    snk_pcs_RX_ptype_pre_17_crc_num_reg_w, snk_pcs_RX_ptype_pre_16_crc_num_reg_w,
	 				    snk_pcs_RX_ptype_pre_15_crc_num_reg_w, snk_pcs_RX_ptype_pre_14_crc_num_reg_w,
	 				    snk_pcs_RX_ptype_pre_13_crc_num_reg_w, snk_pcs_RX_ptype_pre_12_crc_num_reg_w,
	 				    snk_pcs_RX_ptype_pre_11_crc_num_reg_w, snk_pcs_RX_ptype_pre_10_crc_num_reg_w,
	 				    snk_pcs_RX_ptype_pre_09_crc_num_reg_w, snk_pcs_RX_ptype_pre_08_crc_num_reg_w,
	 				    snk_pcs_RX_ptype_pre_07_crc_num_reg_w, snk_pcs_RX_ptype_pre_06_crc_num_reg_w,
	 				    snk_pcs_RX_ptype_pre_05_crc_num_reg_w, snk_pcs_RX_ptype_pre_04_crc_num_reg_w,
	 				    snk_pcs_RX_ptype_pre_03_crc_num_reg_w, snk_pcs_RX_ptype_pre_02_crc_num_reg_w,
	 				    snk_pcs_RX_ptype_pre_01_crc_num_reg_w, snk_pcs_RX_ptype_pre_00_crc_num_reg_w};   

   assign s_snk_pcs_clr_counters         = {snk_pcs_RX_ptype_31_packets_reg_w, snk_pcs_RX_ptype_30_packets_reg_w,
	   				    snk_pcs_RX_ptype_29_packets_reg_w, snk_pcs_RX_ptype_28_packets_reg_w,
	   				    snk_pcs_RX_ptype_27_packets_reg_w, snk_pcs_RX_ptype_26_packets_reg_w,
	   				    snk_pcs_RX_ptype_25_packets_reg_w, snk_pcs_RX_ptype_24_packets_reg_w,
	   				    snk_pcs_RX_ptype_23_packets_reg_w, snk_pcs_RX_ptype_22_packets_reg_w,
	   				    snk_pcs_RX_ptype_21_packets_reg_w, snk_pcs_RX_ptype_20_packets_reg_w,
	    				    snk_pcs_RX_ptype_19_packets_reg_w, snk_pcs_RX_ptype_18_packets_reg_w,
	   				    snk_pcs_RX_ptype_17_packets_reg_w, snk_pcs_RX_ptype_16_packets_reg_w,
	   				    snk_pcs_RX_ptype_15_packets_reg_w, snk_pcs_RX_ptype_14_packets_reg_w,
	    				    snk_pcs_RX_ptype_13_packets_reg_w, snk_pcs_RX_ptype_12_packets_reg_w,
	    				    snk_pcs_RX_ptype_11_packets_reg_w, snk_pcs_RX_ptype_10_packets_reg_w,
	 				    snk_pcs_RX_ptype_09_packets_reg_w, snk_pcs_RX_ptype_08_packets_reg_w,
	   				    snk_pcs_RX_ptype_07_packets_reg_w, snk_pcs_RX_ptype_06_packets_reg_w,
	 				    snk_pcs_RX_ptype_05_packets_reg_w, snk_pcs_RX_ptype_04_packets_reg_w,
	   				    snk_pcs_RX_ptype_03_packets_reg_w, snk_pcs_RX_ptype_02_packets_reg_w,
	   				    snk_pcs_RX_ptype_01_packets_reg_w, snk_pcs_RX_ptype_00_packets_reg_w};  
   
   assign s_snk_pcs_clr_crc_counters     = {snk_pcs_RX_ptype_31_crc_num_reg_w, snk_pcs_RX_ptype_30_crc_num_reg_w,
					    snk_pcs_RX_ptype_29_crc_num_reg_w, snk_pcs_RX_ptype_28_crc_num_reg_w,
					    snk_pcs_RX_ptype_27_crc_num_reg_w, snk_pcs_RX_ptype_26_crc_num_reg_w,
					    snk_pcs_RX_ptype_25_crc_num_reg_w, snk_pcs_RX_ptype_24_crc_num_reg_w,
					    snk_pcs_RX_ptype_23_crc_num_reg_w, snk_pcs_RX_ptype_22_crc_num_reg_w,
					    snk_pcs_RX_ptype_21_crc_num_reg_w, snk_pcs_RX_ptype_20_crc_num_reg_w,
					    snk_pcs_RX_ptype_19_crc_num_reg_w, snk_pcs_RX_ptype_18_crc_num_reg_w,
					    snk_pcs_RX_ptype_17_crc_num_reg_w, snk_pcs_RX_ptype_16_crc_num_reg_w,
					    snk_pcs_RX_ptype_15_crc_num_reg_w, snk_pcs_RX_ptype_14_crc_num_reg_w,
					    snk_pcs_RX_ptype_13_crc_num_reg_w, snk_pcs_RX_ptype_12_crc_num_reg_w,
					    snk_pcs_RX_ptype_11_crc_num_reg_w, snk_pcs_RX_ptype_10_crc_num_reg_w,
					    snk_pcs_RX_ptype_09_crc_num_reg_w, snk_pcs_RX_ptype_08_crc_num_reg_w,
					    snk_pcs_RX_ptype_07_crc_num_reg_w, snk_pcs_RX_ptype_06_crc_num_reg_w,
					    snk_pcs_RX_ptype_05_crc_num_reg_w, snk_pcs_RX_ptype_04_crc_num_reg_w,
					    snk_pcs_RX_ptype_03_crc_num_reg_w, snk_pcs_RX_ptype_02_crc_num_reg_w,
					    snk_pcs_RX_ptype_01_crc_num_reg_w, snk_pcs_RX_ptype_00_crc_num_reg_w};  
   
   
   assign trash_disp_token_ready = 1'b1;




     
     
     
     
     
     
     
   Snir_link_clk_rst Snir_link_clk_rst_inst
     (
      
      
      
      
      .hdbt_hlic_if_sys_clk(hdbt_hlic_if_sys_clk),
      .tx_main_sched_sys_clk(tx_main_sched_sys_clk),
      .egress_sys_clk(egress_sys_clk),
      .tx_retr_main_buff_sys_clk(tx_retr_main_buff_sys_clk),
      .src_pcs_retr_buff_sys_clk(src_pcs_retr_buff_sys_clk),
      .src_pcs_retr_buff_minRD_sys_clk(src_pcs_retr_buff_minRD_sys_clk),
      .src_pcs_pam_conv_sys_clk(src_pcs_pam_conv_sys_clk),
      .src_pcs_pam_conv_minRD_sys_clk(src_pcs_pam_conv_minRD_sys_clk),
      .src_pcs_crc_fixRD_sys_clk(src_pcs_crc_fixRD_sys_clk),
      .clk_src_pcs_pktsplit(clk_src_pcs_pktsplit),
      .src_pcs_crc_minRD_sys_clk(src_pcs_crc_minRD_sys_clk),
      .src_pcs_if_sys_clk(src_pcs_if_sys_clk),
      .tx_aux_sched_sys_clk(tx_aux_sched_sys_clk),
      .tx_link_lppf_sys_clk(tx_link_lppf_sys_clk),
      .rx_link_lppf_sys_clk(rx_link_lppf_sys_clk),
      .rx_aux2main_sys_clk(rx_aux2main_sys_clk),
      .snk_pcs_crc_sys_clk(snk_pcs_crc_sys_clk),
      .snk_pcs_crc2_sys_clk(snk_pcs_crc2_sys_clk),
      .snk_pcs_pam_conv_sys_clk(snk_pcs_pam_conv_sys_clk),
      .snk_pcs_pam_conv2_sys_clk(snk_pcs_pam_conv2_sys_clk),
      .snk_pcs_retr_buff_sys_clk(snk_pcs_retr_buff_sys_clk),
      .snk_pcs_upro_buff_sys_clk(snk_pcs_upro_buff_sys_clk),
      .snk_pcs_if_sys_clk(snk_pcs_if_sys_clk),
      .ingress_sys_clk(ingress_sys_clk),
      .tx_backward_comp_sys_clk(tx_backward_comp_sys_clk),
      .rx_backward_comp_sys_clk(rx_backward_comp_sys_clk),
      .backward_comp_sys_clk(backward_comp_sys_clk),
      .rx_main_disp_sys_clk(rx_main_disp_sys_clk),
      .link_regs_sys_clk(link_regs_sys_clk),
      .prio1_fsctrl_sys_clk(prio1_fsctrl_sys_clk),
      .tx_aux_common_sys_clk(tx_aux_common_sys_clk),
      .MainBistTadpTx_sys_clk(MainBistTadpTx_sys_clk),
      .MainBistTadpRx_sys_clk(MainBistTadpRx_sys_clk),
      
      .trn_clk(trn_clk),
      .snk_pcs_if_rcv_clk(snk_pcs_if_rcv_clk),
      .src_pcs_if_rcv_clk(src_pcs_if_rcv_clk),
      .link_lppf_clk(link_lppf_clk),
      .dsp_pcs_trn_clk(dsp_pcs_trn_clk),
      
      
      
      
      .hdbt_hlic_if_sys_reset_n(hdbt_hlic_if_sys_reset_n),
      .tx_main_sched_sys_reset_n(tx_main_sched_sys_reset_n),
      .egress_sys_reset_n(egress_sys_reset_n),
      .tx_retr_main_buff_sys_reset_n(tx_retr_main_buff_sys_reset_n),
      .src_pcs_retr_buff_sys_reset_n(src_pcs_retr_buff_sys_reset_n),
      .src_pcs_retr_buff_minRD_sys_reset_n(src_pcs_retr_buff_minRD_sys_reset_n),
      .src_pcs_pam_conv_sys_reset_n(src_pcs_pam_conv_sys_reset_n),
      .src_pcs_pam_conv_minRD_sys_reset_n(src_pcs_pam_conv_minRD_sys_reset_n),
      .src_pcs_crc_sys_reset_n(src_pcs_crc_sys_reset_n),
      .src_pcs_crc_minRD_sys_reset_n(src_pcs_crc_minRD_sys_reset_n),
      .src_pcs_pktsplit_reset_n(src_pcs_pktsplit_reset_n),
      .src_pcs_if_sys_reset_n(src_pcs_if_sys_reset_n),
      .tx_aux_sched_sys_reset_n(tx_aux_sched_sys_reset_n),
      .tx_link_lppf_sys_reset_n(tx_link_lppf_sys_reset_n),
      .rx_link_lppf_sys_reset_n(rx_link_lppf_sys_reset_n),
      .rx_aux2main_sys_reset_n(rx_aux2main_sys_reset_n),
      .snk_pcs_crc_sys_reset_n(snk_pcs_crc_sys_reset_n),
      .snk_pcs_crc2_sys_reset_n(snk_pcs_crc2_sys_reset_n),
      .snk_pcs_pam_conv_sys_reset_n(snk_pcs_pam_conv_sys_reset_n),
      .snk_pcs_pam_conv2_sys_reset_n(snk_pcs_pam_conv2_sys_reset_n),
      .snk_pcs_retr_buff_sys_reset_n(snk_pcs_retr_buff_sys_reset_n),
      .snk_pcs_upro_buff_sys_reset_n(snk_pcs_upro_buff_sys_reset_n),
      .snk_pcs_if_sys_reset_n(snk_pcs_if_sys_reset_n),
      .ingress_sys_reset_n(ingress_sys_reset_n),
      .tx_backward_comp_sys_reset_n(tx_backward_comp_sys_reset_n),
      .rx_backward_comp_sys_reset_n(rx_backward_comp_sys_reset_n),
      .backward_comp_sys_reset_n(backward_comp_sys_reset_n),
      .rx_main_disp_sys_reset_n(rx_main_disp_sys_reset_n),
      .link_regs_sys_reset_n(link_regs_sys_reset_n),
      .prio1_fsctrl_sys_reset_n(prio1_fsctrl_sys_reset_n),
      .tx_aux_common_sys_reset_n(tx_aux_common_sys_reset_n),
      .MainBistTadpTx_sys_reset_n(MainBistTadpTx_sys_reset_n),
      .MainBistTadpRx_sys_reset_n(MainBistTadpRx_sys_reset_n),
      
      .trn_reset_n(trn_reset_n),
      .snk_pcs_if_rcv_reset_n(snk_pcs_if_rcv_reset_n),
      .src_pcs_if_rcv_reset_n(),
      .link_lppf_reset_n(link_lppf_reset_n),
      .dsp_pcs_trn_reset_n(dsp_pcs_trn_reset_n),
      .lppf_link_clk_div_en(lppf_link_clk_div_en),
      
      
      
      .snir_modules_sys_reset_n(snir_modules_sys_reset_n),
      .snir_modules_other_reset_n(snir_modules_other_reset_n),
      .snir_modules_sys_reset_done(snir_modules_sys_reset_done),
      .snir_modules_other_reset_done(snir_modules_other_reset_done),
      .lppf_clk_div_ratio(lppf_clk_div_ratio),
      
      
      
      
      .scan_mode(scan_mode),
      .scan_enable(scan_enable),
      
      .trn_clk_in(trn_clk_in),
      .rcv_clk(rcv_clk),
      .sys_clk(sys_clk),
      .sys_reset_n(sys_reset_n)
      );



   
   
   

   assign tb_chain[TEST_BUS_CHAIN_LEN] = 32'h0;
   assign Snir_link_test_bus = tb_chain[0];

   assign tb_data[0]  = snir_auxhdbtsched_tokin_tb;
   assign tb_data[1]  = snir_auxhdbtsched_token_tb;
   assign tb_data[2]  = aggr_in_ctl_tb;
   assign tb_data[3]  = aggr_out_ctl_tb;
   assign tb_data[4]  = a2m_gen_brg_tokin_tb;
   assign tb_data[5]  = a2m_gen_brg_token_tb;
   assign tb_data[6]  = aux2lppf_token_tb;
   assign tb_data[7]  = lppf2aux_token_tb;
   assign tb_data[8]  = bc_rx_out_token_tb;
   assign tb_data[9]  = bc_tx_out_token_tb;
   assign tb_data[10] = snk_pcs_pak_buf_tb0; 
   assign tb_data[11] = src_pcs_if_tb;
   assign tb_data[12] = hdbt_hlic_tb;
   assign tb_data[13] = test_bus_cec;
   assign tb_data[14] = test_bus_ddc;
   assign tb_data[15] = test_bus_pacer_p1_1;
   assign tb_data[16] = test_bus_pacer_p1_2;
   assign tb_data[17] = snir_auxhdbtsched_aux_out_tb;
   assign tb_data[18] = bc_rx_in_token_tb;
   assign tb_data[19] = bc_tx_in_token_tb;
   
   generate
      for (tb_genvar = 0 ; tb_genvar < TEST_BUS_CHAIN_LEN ; tb_genvar = tb_genvar+1)
	begin: tb_sync
	   
	   assign tb_data_en[tb_genvar] = (rgf_tb_chain_select == tb_genvar);
	   
	   tb_cell tb_cell_snir_link_inst (
					   .ch_in(tb_chain[tb_genvar+1]),
					   .ch_out(tb_chain[tb_genvar]),
					   .data_in(tb_data[tb_genvar]), 
					   .data_en(tb_data_en[tb_genvar]), 
					   .clk(sys_clk),
					   .reset_n(sys_reset_n)
					   );
	   
	end
   endgenerate
   
   
   
endmodule 



