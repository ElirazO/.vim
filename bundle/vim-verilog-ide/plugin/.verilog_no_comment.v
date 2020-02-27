













module xnn # (
  
  
  
    localparam           IMP_IDS = 16, 
    localparam           EXP_IDS = 16  
  
    localparam           IMP_IDS = 44, 
    localparam           EXP_IDS = 44  
  
)(
  input				m_clk,			
  input				m_reset_n,	
  
  input  [31:0]	   xnn_spare_input,
  output [31:0]    xnn_spare_output,
	 	 
  input  	   chip_version,
  input [3:0] 	   soc_version,
  input [2:0] 	   cluster_id,
  input [1:0] 	   acc_index,

  
  input [XNN_AXI::AR_CW-1:0]  	dma_AR_rd_ptr,		
  input [XNN_AXI::AW_CW-1:0]     dma_AW_rd_ptr,		
  input [XNN_AXI::B_SIZE-1:0] 	dma_B_rd_data,		
  input [XNN_AXI::B_CW-1:0]      dma_B_wr_ptr,		
  input [XNN_AXI::R_SIZE-1:0] 	dma_R_rd_data,		
  input [XNN_AXI::R_CW-1:0]      dma_R_wr_ptr,		
  input [XNN_AXI::W_CW-1:0]      dma_W_rd_ptr,		
  input				               dma_sync_clear,	
  output [XNN_AXI::AR_SIZE-1:0]	dma_AR_rd_data,	
  output [XNN_AXI::AR_CW-1:0]	   dma_AR_wr_ptr,		
  output [XNN_AXI::AW_SIZE-1:0]	dma_AW_rd_data,	
  output [XNN_AXI::AW_CW-1:0]	   dma_AW_wr_ptr,		
  output [XNN_AXI::B_CW-1:0]	   dma_B_rd_ptr,		
  output [XNN_AXI::R_CW-1:0]   	dma_R_rd_ptr,		
  output [XNN_AXI::W_SIZE-1:0]	dma_W_rd_data,		
  output [XNN_AXI::W_CW-1:0]	   dma_W_wr_ptr,		
  output			                  dma_m_sync_clear_done,	
  

  input [XNN_AXI::AR_SIZE_SLAVE-1:0]	vmp2xnn_AR_rd_data,	
  input [XNN_AXI::AR_CW-1:0]	   vmp2xnn_AR_wr_ptr,	
  input [XNN_AXI::AW_SIZE_SLAVE-1:0]	vmp2xnn_AW_rd_data,	
  input [XNN_AXI::AW_CW-1:0]	   vmp2xnn_AW_wr_ptr,	
  input [XNN_AXI::B_CW-1:0]	   vmp2xnn_B_rd_ptr,	   
  input [XNN_AXI::R_CW-1:0]	   vmp2xnn_R_rd_ptr,   	
  input [XNN_AXI::W_SIZE-1:0]	   vmp2xnn_W_rd_data,	
  input [XNN_AXI::W_CW-1:0]	   vmp2xnn_W_wr_ptr,	   
  input			               	vmp2xnn_sync_clear,	
  output [XNN_AXI::AR_CW-1:0]   	vmp2xnn_AR_rd_ptr,	
  output [XNN_AXI::AW_CW-1:0]	   vmp2xnn_AW_rd_ptr,	
  output [XNN_AXI::B_SIZE-1:0]	vmp2xnn_B_rd_data,	
  output [XNN_AXI::B_CW-1:0]	   vmp2xnn_B_wr_ptr,	   
  output [XNN_AXI::R_SIZE-1:0]	vmp2xnn_R_rd_data,	
  output [XNN_AXI::R_CW-1:0]	   vmp2xnn_R_wr_ptr,	   
  output [XNN_AXI::W_CW-1:0]	   vmp2xnn_W_rd_ptr,	   
  output	                  		vmp2xnn_s_sync_clear_done,

  
  input			               	xnnx_sp_sync_clear,	     
  output		                  	xnnx_sp_s_sync_clear_done,
  input [XNN_OCP::C_SIZE-1:0]	   OCC_rd_data,	
  input [XNN_OCP::CW-1:0]	      OCC_wr_ptr,		
  input [XNN_OCP::CW-1:0]	      OCR_rd_ptr,		
  output [XNN_OCP::CW-1:0]	      OCC_rd_ptr,		
  output [XNN_OCP::R_SIZE-1:0]   OCR_rd_data,	
  output [XNN_OCP::CW-1:0]	      OCR_wr_ptr,		
  
  input          xnnx_halt_req,
  output         xnnx_halt_ack,
  output         xnnx_int,

  
  output         xnn_fault_integrity,
  output         xnn_fault_transaction_TimeOut,
  output         xnn_fault_status_regs,
  output         xnn_fault_config_regs,
  output         xnn_fault_oprtnl_regs,
  output         xnn_fault_AddrPath,
  output         xnn_fault_DataPath,
  output         xnn_fault_SRAM_Addr,
  output         xnn_fault_SRAM_Data,
  output         xnn_fault_srsp_addr_par, 
  output reg     xnn_fault_srsp_data_par, 
  output         xnn_fault_fwmp_addr_par, 
  output         xnn_fault_mfw_adacc_err, 

  
  input          tst_gated_clk0,
  input          tst_gated_clk1,
  input          tst_gated_clk2,
  input          tst_gated_clk3,
  input          tst_gated_clk4,
  input          g_bist_mode,
  
  input	         isolate, 	        
  input          slow_clk,
  input  [15:0]  lbistpattcnt,
  input  [ 7:0]  lbistshiftlength,
  input  [127:0]  lbistseed,
  input  [127:0]  lbistsignature,
  input          lbisten,
  input          lbiststart,
  input          lbisttestmode1,
  input          lbisttestmode0,
  input          lbistbinenable,
  input          lbistbistoponfail,
  input          lbistlowpower,
  output         lbiststatus1,
  output         lbiststatus0,
  output [127:0]  lbistmisr,
  

		input	[39:0]	scanin,
		output	[39:0]	scanout,

		input	[29:0]	scanin,
		output	[29:0]	scanout,


  input          scan_mode,
  input          test_se,
  input  [ 2:0]  tcr_comp_mode,
  input          tst_gated_clk,
  input          test_point_enable,
  input          tcr_occ_tm,
  input          occ_pll_reset,
  input          occ_pll_bypass,
  
  input 	  test_point_enable_obs,
  input 	  test_point_enable_ctr,
  input 	  tst_spc_en,
  input 	  tst_spc_scanen,
  input 	  wrapper_bypass_n,
  input 	  tst_scan_pipe_clk,
  input   [29:0]  dft_spare_in,
  output  [29:0]  dft_spare_out,



  input                    dm0,
  input                    dm1,
  input                    dm2,
  input                    safe_rr,
  input                    vl_srv_u_sms_sub_server_xnn_WRCK,
  input                    vl_srv_u_sms_sub_server_xnn_WRSTN,
  input                    vl_srv_u_sms_sub_server_xnn_WSI,
  input                    vl_srv_u_sms_sub_server_xnn_SelectWIR,
  input                    vl_srv_u_sms_sub_server_xnn_CaptureWR,
  input                    vl_srv_u_sms_sub_server_xnn_ShiftWR,
  input                    vl_srv_u_sms_sub_server_xnn_UpdateWR,
  input [5:0]              vl_srv_u_sms_sub_server_xnn_ring_bypass,
  input                    vl_srv_u_sms_sub_server_xnn_sfp_dft_mode,
  input                    vl_srv_u_sms_sub_server_xnn_sys_rst_n,
  input                    vl_srv_u_sms_sub_server_xnn_smart,
  input                    vl_srv_u_sms_sub_server_xnn_fast_mode,
  input                    vl_srv_u_sms_sub_server_xnn_bist_run,
  input                    vl_srv_u_sms_sub_server_xnn_bisr_run,
  output                   vl_srv_u_sms_sub_server_xnn_WSO,
  output                   vl_srv_u_sms_sub_server_xnn_sfp_fail,
  output                   vl_srv_u_sms_sub_server_xnn_sfp_ready,
  
  input TSC_start,
  input TSC_freeze,
  input TSC_slow_clk,
  input TSC_OLB_event,
  input TSC_PTP_event,
  
  
  input   [1:0]   WTSEL_1prf,			  
  input   [1:0]   RTSEL_1prf,			  
  input   [1:0]   WTSEL_hsspsb,		  
  input   [1:0]   RTSEL_hsspsb,		  
  input   [1:0]   WTSEL_hdsp,			  
  input   [1:0]   RTSEL_hdsp,			  
  input   [1:0]   WTSEL_hssp,			  
  input   [1:0]   RTSEL_hssp

  
  
  );


assign	     xnn_fault_status_regs=1'b0;
assign 	     xnn_fault_transaction_TimeOut=1'b0;

assign	     xnn_fault_oprtnl_regs=1'b0;

wire [7:0] [19:0]	dir_MAddr;
wire [7:0] [2:0]	dir_MAddr_P;
wire [7:0] [2:0]	dir_MCmd;
wire [7:0]      	dir_SCmdAccept;
wire [7:0] [63:0]	dir_SData;
wire [7:0] [7:0] 	dir_SData_P;
wire [7:0] [1:0]	dir_SResp;
wire [7:0] [19:0]	diw_MAddr;
wire [7:0] [2:0] 	diw_MAddr_P;
wire [7:0] [7:0]	diw_MDataByteEn;
wire [7:0] [2:0]	diw_MCmd;
wire [7:0] [63:0]	diw_MData;
wire [7:0] [7:0] 	diw_MData_P;
wire [7:0]		diw_SCmdAccept;
wire [7:0] 		d_ChBusy; 
wire    		d_ChBusy_decomp; 


wire [11:0] xnn0_rd_req_verifId,xnn1_rd_req_verifId,xnn2_rd_req_verifId,xnn3_rd_req_verifId,xnn4_rd_req_verifId;

   assign   xnn0_rd_req_verifId = 12'd0;
   assign   xnn1_rd_req_verifId = 12'd0;
   assign   xnn2_rd_req_verifId = 12'd0;
   assign   xnn3_rd_req_verifId = 12'd0;
   assign   xnn4_rd_req_verifId = 12'd0;   

   assign   xnn0_rd_req_verifId = 12'd0;
   assign   xnn1_rd_req_verifId = 12'd1;
   assign   xnn2_rd_req_verifId = 12'd2;
   assign   xnn3_rd_req_verifId = 12'd3;
   assign   xnn4_rd_req_verifId = 12'd4;

   

wire       [7:0]	    ssc_prog_DMem_A_0   [0:1];
wire           	    ssc_prog_DMem_WEN_0 [0:1];
wire       [96:0]	    ssc_prog_DMem_D_0   [0:1];
wire           	    ssc_prog_DMem_CEN_0 [0:1];
wire       [96:0]	    ssc_prog_DMem_Q_0   [0:1];
wire      [96:0]	    ssc_prog_DMem_BEN_0   [0:1];

wire       [7:0]	    ssc_prog_DMem_A_1   [0:1];
wire           	    ssc_prog_DMem_WEN_1 [0:1];
wire       [96:0]	    ssc_prog_DMem_D_1   [0:1];
wire           	    ssc_prog_DMem_CEN_1 [0:1];
wire       [96:0]	    ssc_prog_DMem_Q_1   [0:1];
wire      [96:0]	    ssc_prog_DMem_BEN_1   [0:1];

wire       [7:0]	    ssc_prog_DMem_A_2   [0:1];
wire           	    ssc_prog_DMem_WEN_2 [0:1];
wire       [96:0]	    ssc_prog_DMem_D_2   [0:1];
  wire           	    ssc_prog_DMem_CEN_2 [0:1];
wire       [96:0]	    ssc_prog_DMem_Q_2   [0:1];
wire      [96:0]	    ssc_prog_DMem_BEN_2   [0:1];


wire			de_ARREADY;
wire			de_AWREADY;
wire [5:0]		de_BID;
wire [1:0]		de_BUSER;
wire [1:0]		de_BRESP;
wire			de_BVALID;
wire [255:0]		de_RDATA;
wire [5:0]      	de_RID;
wire			de_RLAST;
wire [33:0]		de_RUSER;
wire [1:0]		de_RRESP;
wire			de_RVALID;
wire			de_WREADY;
wire [36:0]		vmp_axi_ARADDR;
wire [1:0]		vmp_axi_ARBURST;
wire [3:0]		vmp_axi_ARCACHE;
wire [5:0]		vmp_axi_ARID;
wire [7:0]		vmp_axi_ARLEN;
wire [9:0]		vmp_axi_ARUSER;
wire [2:0]		vmp_axi_ARPROT;
wire [3:0]		vmp_axi_ARQOS;
wire [2:0]		vmp_axi_ARSIZE;
wire			vmp_axi_ARVALID;
wire [36:0]		vmp_axi_AWADDR;
wire [1:0]		vmp_axi_AWBURST;
wire [3:0]		vmp_axi_AWCACHE;
wire [5:0]		vmp_axi_AWID;
wire [7:0]		vmp_axi_AWLEN;
wire [9:0]		vmp_axi_AWUSER;
wire [2:0] 		vmp_axi_AWPROT;
wire [3:0]		vmp_axi_AWQOS;
wire [2:0]		vmp_axi_AWSIZE;
wire			vmp_axi_AWVALID;
wire			vmp_axi_BREADY;
wire			vmp_axi_RREADY;
wire [255:0]		vmp_axi_WDATA;
wire			vmp_axi_WLAST;
wire [31:0]		vmp_axi_WSTRB;
wire    		vmp_axi_WVALID;
wire			vmp_axi_ARREADY;
wire			vmp_axi_AWREADY;
wire [5:0]		vmp_axi_BID;
wire [1:0]		vmp_axi_BRESP;
wire [1:0]		vmp_axi_BUSER;
wire			vmp_axi_BVALID;
wire [255:0]		vmp_axi_RDATA;
wire [5:0]		vmp_axi_RID;
wire			vmp_axi_RLAST;
wire [1:0]		vmp_axi_RRESP;
wire [33:0]		vmp_axi_RUSER;
wire			vmp_axi_RVALID;
wire			vmp_axi_WREADY;
wire [31:0]     	vmp_axi_WUSER;
wire [31:0]		xnnx_sp_MAddr;
wire [3:0]		xnnx_sp_MByteEn;
wire [2:0]		xnnx_sp_MCmd;
wire 			xnnx_sp_MCmdInfo;
wire [31:0]		xnnx_sp_MData;
wire [3:0]		xnnx_sp_MDataInfo;
wire [3:0]		xnnx_sp_MReqInfo;
wire			xnnx_sp_MRespAccept;
wire			xnnx_sp_SCmdAccept;
wire [31:0]		xnnx_sp_SData;
wire [3:0]		xnnx_sp_SDataInfo;
wire [1:0]		xnnx_sp_SResp;
wire 			xnnx_sp_SRespInfo;
wire [31:0]	        actif_lsRData;
wire [3:0]      	actif_lsRDataPar;
wire			actif_lsSCmdAccept;
wire [1:0]		actif_lsSResp;
wire                    xnn_interrupt;
wire                    clear_sp_busy;
wire                    xpp_busy;
wire [71:0] 		sp2xlmc_RDATA[32];
wire [11:0] 		xlmc2sp_ADDR[32];
wire [71:0] 		xlmc2sp_BITEN[32];
wire			xlmc2sp_CS[32];
wire [71:0] 		xlmc2sp_WDATA[32];
wire			xlmc2sp_WE[32];
wire [24:0]             xnnc_csrErrCheck;
wire [35:0]             slmc_csrErrCheck;
wire [13:0]             xpp_csrErrCheck;
wire			axi2streamBusy;


wire [287:0]		RdHalfVecDataRspConv2SLMC_data;
wire			RdHalfVecDataRspConv2SLMC_ready;
wire			RdHalfVecDataRspConv2SLMC_valid;
wire [2:0]		RdHalfVecRequestsConv2SLMC_data_addr_pty;
wire [16:0]		RdHalfVecRequestsConv2SLMC_data_address;
wire [31:0]		RdHalfVecRequestsConv2SLMC_data_byteEn;
wire [11:0]		RdHalfVecRequestsConv2SLMC_data_verifId;
wire			RdHalfVecRequestsConv2SLMC_data_wrEn;
wire			RdHalfVecRequestsConv2SLMC_ready;
wire			RdHalfVecRequestsConv2SLMC_valid;
wire [1:0]		TSC_events;		
wire [1:0]		TSC_events_start;	
wire [6:0]		Wdata0_A0;		
wire			Wdata0_CE0;		
wire [255:0]		Wdata0_D0;		
wire [255:0]		Wdata0_Q0;		
wire			Wdata0_WE0;		
wire [6:0]		Wdata1_A0;		
wire			Wdata1_CE0;		
wire [255:0]		Wdata1_D0;		
wire [255:0]		Wdata1_Q0;		
wire			Wdata1_WE0;		
wire			WrHalfVecNonPostedRspConv2SLMC_data;
wire			WrHalfVecNonPostedRspConv2SLMC_ready;
wire			WrHalfVecNonPostedRspConv2SLMC_valid;
wire [2:0]		WrHalfVecRequestsConv2SLMC_data_addr_pty;
wire [16:0]		WrHalfVecRequestsConv2SLMC_data_address;
wire [31:0]		WrHalfVecRequestsConv2SLMC_data_byteEn;
wire			WrHalfVecRequestsConv2SLMC_data_nonPosted;
wire [11:0]		WrHalfVecRequestsConv2SLMC_data_verifId;
wire [287:0]		WrHalfVecRequestsConv2SLMC_data_wrData;
wire			WrHalfVecRequestsConv2SLMC_data_wrEn;
wire			WrHalfVecRequestsConv2SLMC_ready;
wire			WrHalfVecRequestsConv2SLMC_valid;
wire [127:0]		asipRequestIn_data;	
wire			asipRequestIn_ready;	
wire			asipRequestIn_valid;	
wire [5:0]		blocks_0_Xcache_Data_A0;
wire			blocks_0_Xcache_Data_CE0;
wire [255:0]		blocks_0_Xcache_Data_D0;
wire [255:0]		blocks_0_Xcache_Data_Q0;
wire			blocks_0_Xcache_Data_WE0;
wire [5:0]		blocks_1_Xcache_Data_A0;
wire			blocks_1_Xcache_Data_CE0;
wire [255:0]		blocks_1_Xcache_Data_D0;
wire [255:0]		blocks_1_Xcache_Data_Q0;
wire			blocks_1_Xcache_Data_WE0;
wire [5:0]		blocks_2_Xcache_Data_A0;
wire			blocks_2_Xcache_Data_CE0;
wire [255:0]		blocks_2_Xcache_Data_D0;
wire [255:0]		blocks_2_Xcache_Data_Q0;
wire			blocks_2_Xcache_Data_WE0;
wire [5:0]		blocks_3_Xcache_Data_A0;
wire			blocks_3_Xcache_Data_CE0;
wire [255:0]		blocks_3_Xcache_Data_D0;
wire [255:0]		blocks_3_Xcache_Data_Q0;
wire			blocks_3_Xcache_Data_WE0;
wire [1:0]		chickenBits_IFM_CACHE_POLICY;
wire [4:0]		chickenBits_IFM_REQ_DELTA;
wire [3:0]		chickenBits_OFM_WRITE_BUBBLES;
wire			chickenBits_OVERRIDE_IFM_CACHE_POLICY;
wire			chickenBits_SECOND_WBUFF_DISABLE;
wire			csr_i_target_SCmdAccept;
wire [63:0]		dc_lsRData;		
wire [7:0]		dc_lsRDataPar;		
wire			dc_lsSCmdAccept;	
wire [1:0]		dc_lsSResp;		
wire [36:0]		de_ARADDR;		
wire [5:0]		de_ARID;		
wire [7:0]		de_ARLEN;		
wire [3:0]		de_ARQOS;		
wire [11:0]		de_ARUSER;		
wire			de_ARVALID;		
wire [36:0]		de_AWADDR;		
wire [5:0]		de_AWID;		
wire [7:0]		de_AWLEN;		
wire [3:0]		de_AWQOS;		
wire [11:0]		de_AWUSER;		
wire			de_AWVALID;		
wire			de_BREADY;		
wire			de_RREADY;		
wire [255:0]		de_WDATA;		
wire			de_WLAST;		
wire [31:0]		de_WSTRB;		
wire [31:0]		de_WUSER;		
wire			de_WVALID;		
wire			deep_reset_n;		
wire [7:0]		dsma_A;			
wire			dsma_CSN;		
wire [287:0]		dsma_D;			
wire [287:0]		dsma_Q;			
wire			dsma_WEN;		
wire [7:0]		dsmb_A;			
wire			dsmb_CSN;		
wire [287:0]		dsmb_D;			
wire [287:0]		dsmb_Q;			
wire			dsmb_WEN;		
wire			eventEvictFull_0;	
wire			eventEvictFull_1;	
wire			eventEvictFull_2;	
wire			eventEvictFull_3;	
wire			eventExecComplex;	
wire			eventExecComplexStart;	
wire			eventExecutionReq;	
wire			eventFull;		
wire			eventIfmBroadCastBubble_0;
wire			eventIfmBroadCastBubble_1;
wire			eventIfmBroadCastBubble_2;
wire			eventIfmBroadCastBubble_3;
wire			eventIfmChannelBusy_0;	
wire			eventIfmChannelBusy_1;	
wire			eventIfmChannelBusy_2;	
wire			eventIfmChannelBusy_3;	
wire			eventIfmHit_0;		
wire			eventIfmHit_1;		
wire			eventIfmHit_2;		
wire			eventIfmHit_3;		
wire			eventIfmRead_0;		
wire			eventIfmRead_1;		
wire			eventIfmRead_2;		
wire			eventIfmRead_3;		
wire			eventStarved;		
wire			eventWeightChannelBusy;	
wire [1:0]		eventWeightChannelHit;	
wire [1:0]		eventWeightChannelRead;	
wire			fault_debug_clear_all_faults_WrPulse;
wire [5:0]		fault_debug_trigger_dummy_fault;
wire [16:0]		fcu_MAddr;		
wire [2:0]		fcu_MAddr_P;		
wire [2:0]		fcu_MCmd;		
wire [63:0]		fcu_MData;		
wire [7:0]		fcu_MDataByteEn;	
wire [7:0]		fcu_MData_P;		
wire			fcu_SCmdAccept;		
wire [63:0]		fcu_SData;		
wire [7:0]		fcu_SData_P;		
wire [1:0]		fcu_SResp;		
wire [31:3]		fcu_su_ls_MAddr;	
wire [3:0]		fcu_su_ls_MAddrPar;	
wire [7:0]		fcu_su_ls_MByteEn;	
wire [2:0]		fcu_su_ls_MCmd;		
wire [63:0]		fcu_su_ls_MData;	
wire [7:0]		fcu_su_ls_MDataPar;	
wire			fcu_su_ls_SCmdAccept;	
wire [63:0]		fcu_su_ls_SData;	
wire [7:0]		fcu_su_ls_SDataPar;	
wire [1:0]		fcu_su_ls_SResp;	
wire [31:0]		fr_siRData;		
wire			gclk0;			
wire			gclk1;			
wire			gclk_mbist;		
wire [20:3]		ls_Add;			
wire [20:2]		ls_Add32;		
wire [2:0]		ls_Add32Par;		
wire [2:0]		ls_AddPar;		
wire [7:0]		ls_ByteEn;		
wire [3:0]		ls_ByteEn32;		
wire [63:0]		ls_WData;		
wire [7:0]		ls_WDataPar;		
wire [3:0]		ls_WDataPar32;		
wire			ls_cfg_src_is_ssc;	
wire			ls_siBusy;		
wire [31:0]		ls_siRData;		
wire			ls_siRDataValid;	
wire			ocp2strm_slave_SCmdAccept;
wire [1:0]		ocp2strm_slave_resp_out_SResp;
wire			p_eventEvictFull_0;	
wire			p_eventEvictFull_1;	
wire			p_eventEvictFull_2;	
wire			p_eventEvictFull_3;	
wire			p_eventExecComplex;	
wire			p_eventExecComplexStart;
wire			p_eventExecutionReq;	
wire			p_eventFull;		
wire			p_eventIfmBroadCastBubble_0;
wire			p_eventIfmBroadCastBubble_1;
wire			p_eventIfmBroadCastBubble_2;
wire			p_eventIfmBroadCastBubble_3;
wire			p_eventIfmChannelBusy_0;
wire			p_eventIfmChannelBusy_1;
wire			p_eventIfmChannelBusy_2;
wire			p_eventIfmChannelBusy_3;
wire			p_eventIfmHit_0;	
wire			p_eventIfmHit_1;	
wire			p_eventIfmHit_2;	
wire			p_eventIfmHit_3;	
wire			p_eventIfmRead_0;	
wire			p_eventIfmRead_1;	
wire			p_eventIfmRead_2;	
wire			p_eventIfmRead_3;	
wire			p_eventStarved;		
wire			p_eventWeightChannelBusy;
wire [1:0]		p_eventWeightChannelHit;
wire [1:0]		p_eventWeightChannelRead;
wire			p_perfEnable;		
wire			perfEnable;		
wire			postProcessorBusy;	
wire			rdStrmRequestInitiator_ready;
wire [287:0]		rdStrmResponseTarget_data;
wire			rdStrmResponseTarget_valid;
wire			reset_n;		
wire [20:0]		si_Add;			
wire [2:0]		si_AddPar;		
wire [3:0]		si_Mask;		
wire			si_Rd;			
wire [31:0]		si_WData;		
wire [3:0]		si_WDataPar;		
wire			si_Wr;			
wire			si_lsSel;		
wire			si_suSel;		
wire			slave_if_idle;		
wire			slmc_gclk;		
wire [287:0]		sp2xppRdResp_data;	
wire			sp2xppRdResp_ready;	
wire			sp2xppRdResp_valid;	
wire			sp2xppWrResp_data;	
wire			sp2xppWrResp_ready;	
wire			sp2xppWrResp_valid;	
wire [63:0]		sp_lsRData;		
wire [7:0]		sp_lsRDataPar;		
wire [14:3]		ssc_local_DMem_A;	
wire			ssc_local_DMem_CSN;	
wire [72:0]		ssc_local_DMem_D;	
wire [72:0]		ssc_local_DMem_M;	
wire [72:0]		ssc_local_DMem_Q;	
wire			ssc_local_DMem_WEN;	
wire			ssc_self_reset;		
wire			ssc_self_reset_ack;	
wire [31:3]		su_ls_MAddr;		
wire [3:0]		su_ls_MAddrPar;		
wire [7:0]		su_ls_MByteEn;		
wire [2:0]		su_ls_MCmd;		
wire [63:0]		su_ls_MData;		
wire [7:0]		su_ls_MDataPar;		
wire			su_ls_SCmdAccept;	
wire [63:0]		su_ls_SData;		
wire [7:0]		su_ls_SDataPar;		
wire [1:0]		su_ls_SResp;		
wire			su_siBusy;		
wire [31:0]		su_siRData;		
wire			su_siRDataValid;	
wire			tensorProcessorBusy;	
wire [4:0]		wCacheCtrl_W_CACHE_BP;	
wire [9:0]		wCacheCtrl_W_CACHE_LIMIT;
wire			wCacheCtrl_W_CACHE_OVERRIDE;
wire [11:0]		wCacheCtrl_W_CACHE_STEP;
wire			wrStrmRequestInitiator_ready;
wire			wrStrmResponseTarget_data;
wire			wrStrmResponseTarget_valid;
wire			xlmc_SCmdAccept;	
wire [31:0]		xlmc_SData;		
wire [3:0]		xlmc_SDataPar;		
wire [1:0]		xlmc_SResp;		
wire [287:0]		xnn0_data_rd_resp_parity;
wire [52:0]		xnn0_rd_req_data;	
wire			xnn0_rd_req_ready;	
wire			xnn0_rd_req_valid;	
wire			xnn0_rd_resp_ready;	
wire			xnn0_rd_resp_valid;	
wire [181:0]		xnn0_wr_req_data;	
wire			xnn0_wr_req_ready;	
wire			xnn0_wr_req_valid;	
wire			xnn0_wr_resp_data;	
wire			xnn0_wr_resp_ready;	
wire			xnn0_wr_resp_valid;	
wire [287:0]		xnn1_data_rd_resp_parity;
wire [52:0]		xnn1_rd_req_data;	
wire			xnn1_rd_req_ready;	
wire			xnn1_rd_req_valid;	
wire			xnn1_rd_resp_ready;	
wire			xnn1_rd_resp_valid;	
wire [181:0]		xnn1_wr_req_data;	
wire			xnn1_wr_req_ready;	
wire			xnn1_wr_req_valid;	
wire			xnn1_wr_resp_data;	
wire			xnn1_wr_resp_ready;	
wire			xnn1_wr_resp_valid;	
wire [287:0]		xnn2_data_rd_resp_parity;
wire [52:0]		xnn2_rd_req_data;	
wire			xnn2_rd_req_ready;	
wire			xnn2_rd_req_valid;	
wire			xnn2_rd_resp_ready;	
wire			xnn2_rd_resp_valid;	
wire [181:0]		xnn2_wr_req_data;	
wire			xnn2_wr_req_ready;	
wire			xnn2_wr_req_valid;	
wire			xnn2_wr_resp_data;	
wire			xnn2_wr_resp_ready;	
wire			xnn2_wr_resp_valid;	
wire [31:0]		xnn2asip_data;		
wire			xnn2asip_ready;		
wire			xnn2asip_valid;		
wire [287:0]		xnn3_data_rd_resp_parity;
wire [52:0]		xnn3_rd_req_data;	
wire			xnn3_rd_req_ready;	
wire			xnn3_rd_req_valid;	
wire			xnn3_rd_resp_ready;	
wire			xnn3_rd_resp_valid;	
wire [181:0]		xnn3_wr_req_data;	
wire			xnn3_wr_req_ready;	
wire			xnn3_wr_req_valid;	
wire			xnn3_wr_resp_data;	
wire			xnn3_wr_resp_ready;	
wire			xnn3_wr_resp_valid;	
wire [287:0]		xnn4_data_rd_resp_parity;
wire [52:0]		xnn4_rd_req_data;	
wire			xnn4_rd_req_ready;	
wire			xnn4_rd_req_valid;	
wire			xnn4_rd_resp_ready;	
wire			xnn4_rd_resp_valid;	
wire [31:0]		xnnException2ctl_data;	
wire			xnnException2ctl_ready;	
wire			xnnException2ctl_valid;	
wire			xnn_eh_haltReq;		
wire			xnn_faults_SCmdAccept;	
wire			xnnc2smm_SCmdAccept;	
wire [63:0]		xnnc_lsRData;		
wire [7:0]		xnnc_lsRDataPar;	
wire			xpp2smm_SCmdAccept;	
wire [63:0]		xpp2smm_SData;		
wire [7:0]		xpp2smm_SDataPAR;	
wire [2:0]		xpp2spRdReq_data_addr_pty;
wire [16:0]		xpp2spRdReq_data_address;
wire [31:0]		xpp2spRdReq_data_byteEn;
wire			xpp2spRdReq_data_wrEn;	
wire			xpp2spRdReq_ready;	
wire			xpp2spRdReq_valid;	
wire [2:0]		xpp2spWrReq_data_addr_pty;
wire [16:0]		xpp2spWrReq_data_address;
wire [31:0]		xpp2spWrReq_data_byteEn;
wire			xpp2spWrReq_data_nonPosted;
wire [287:0]		xpp2spWrReq_data_wrDataWithPar;
wire			xpp2spWrReq_data_wrEn;	
wire			xpp2spWrReq_ready;	
wire			xpp2spWrReq_valid;	

wire slmc_gclk_ctrl, slmc_active, slmc_gclk_block, xnn_gclk_block, xnn_tp_fscan_clkungate, xnn_pp_fscan_clkungate,slmc_fscan_clkungate;
wire fr_siRDataValid;





  wire [
  assign          xnn2eh_fdp[XNN2EH_FDP_MSB:XNN2EH_FDP_SIZE] = 0;
  wire [31:0]     eregs2eh_fdp_enable [XNN2EH_FDP_REGS];
  wire [31:0]     eh2eregs_fdp_status [XNN2EH_FDP_REGS];


  wire [
  assign          xnn2eh_fap[XNN2EH_FAP_MSB:XNN2EH_FAP_SIZE] = 0;
  wire [31:0]     eregs2eh_fap_enable [XNN2EH_FAP_REGS];
  wire [31:0]     eh2eregs_fap_status [XNN2EH_FAP_REGS];


  wire [
  assign          xnn2eh_fcr[XNN2EH_FCR_MSB:XNN2EH_FCR_SIZE] = 0;
  wire [31:0]     eregs2eh_fcr_enable [XNN2EH_FCR_REGS];
  wire [31:0]     eh2eregs_fcr_status [XNN2EH_FCR_REGS];   


  wire [
  assign          xnn2eh_mdpe[XNN2EH_MDPE_MSB:XNN2EH_MDPE_SIZE] = 0;
  wire [31:0]     eregs2eh_mdpe_enable [XNN2EH_MDPE_REGS];
  wire [31:0]     eh2eregs_mdpe_status [XNN2EH_MDPE_REGS];  


  wire [
  assign          xnn2eh_mape[XNN2EH_MAPE_MSB:XNN2EH_MAPE_SIZE] = 0;
  wire [31:0]     eregs2eh_mape_enable [XNN2EH_MAPE_REGS];
  wire [31:0]     eh2eregs_mape_status [XNN2EH_MAPE_REGS];


  wire [
  assign          xnn2eh_ie[XNN2EH_IE_MSB:XNN2EH_IE_SIZE] = 0;
  wire [31:0]     af2eh_ie_enable [XNN2EH_IE_REGS];
  wire [31:0]     eh2af_ie_status [XNN2EH_IE_REGS];

assign xnn2eh_fcr[XNNC_FCR] = |xnnc_csrErrCheck;
assign xnn2eh_fcr[SLMC_FCR] = |slmc_csrErrCheck;
assign xnn2eh_fcr[XPP_FCR]  = |xpp_csrErrCheck;








xnn_EventHandler xnn_EventHandler(
      
				  
				  .eh2eregs_fdp_status	(eh2eregs_fdp_status), 
				  .eh2eregs_fap_status	(eh2eregs_fap_status), 
				  .eh2eregs_fcr_status	(eh2eregs_fcr_status), 
				  .eh2eregs_mdpe_status	(eh2eregs_mdpe_status), 
				  .eh2eregs_mape_status	(eh2eregs_mape_status), 
				  .eh2af_ie_status	(eh2af_ie_status), 
				  .xnn_fault_integrity	(xnn_fault_integrity), 
				  .xnn_fault_SRAM_Data	(xnn_fault_SRAM_Data), 
				  .xnn_fault_SRAM_Addr	(xnn_fault_SRAM_Addr), 
				  .xnn_fault_DataPath	(xnn_fault_DataPath), 
				  .xnn_fault_AddrPath	(xnn_fault_AddrPath), 
				  .xnn_fault_config_regs(xnn_fault_config_regs), 
				  .xnn_eh_haltReq	(xnn_eh_haltReq), 
				  
				  .gclk1		(gclk1),	 
				  .reset_n		(reset_n),	 
				  .eregs2eh_dummy_fault	(fault_debug_trigger_dummy_fault), 
				  .eregs2eh_clear_all_faults_WrPulse(fault_debug_clear_all_faults_WrPulse), 
				  .xnn2eh_fdp		(xnn2eh_fdp),	 
				  .eregs2eh_fdp_enable	(eregs2eh_fdp_enable), 
				  .xnn2eh_fap		(xnn2eh_fap),	 
				  .eregs2eh_fap_enable	(eregs2eh_fap_enable), 
				  .xnn2eh_fcr		(xnn2eh_fcr),	 
				  .eregs2eh_fcr_enable	(eregs2eh_fcr_enable), 
				  .xnn2eh_mdpe		(xnn2eh_mdpe),	 
				  .eregs2eh_mdpe_enable	(eregs2eh_mdpe_enable), 
				  .xnn2eh_mape		(xnn2eh_mape),	 
				  .eregs2eh_mape_enable	(eregs2eh_mape_enable), 
				  .xnn2eh_ie		(xnn2eh_ie),	 
				  .af2eh_ie_enable	(af2eh_ie_enable)); 








 
OCP2MemIf #(
   .SI_ADDR_BITS_20_14_RANGE1(7'h0),      
   .SI_ADDR_BITS_20_14_RANGE2(7'h6),      
   .SSU_ADDR_BITS_20_14_16K_RANGE1(7'h1), 
   .SSU_ADDR_BITS_20_14_16K_RANGE2(7'h2), 
   .SSU_ADDR_BITS_20_14_16K_RANGE3(7'h3), 
   .SSU_ADDR_BITS_20_14_16K_RANGE4(7'h4), 
   .SSU_ADDR_BITS_20_14_16K_RANGE5(7'h5), 
	.FR_ADDR_BITS_20_14_RANGE(7'h7),       
   .XNN_SP_ADDR_BITS_20_20_RANGE(1'h1),
   .ACC("XNN")
   ) xnn_OCP2MemIf(
		   .si_frSel            (si_frSel),
	       
		   
		   .sp_SCmdAccept	(xnnx_sp_SCmdAccept),	 
		   .sp_SResp		(xnnx_sp_SResp[1:0]),	 
		   .sp_SRespInfo	(xnnx_sp_SRespInfo),	 
		   .sp_SData		(xnnx_sp_SData[31:0]),	 
		   .sp_SDataInfo	(xnnx_sp_SDataInfo[3:0]), 
		   .si_suSel		(si_suSel),
		   .si_lsSel		(si_lsSel),
		   .si_Add		(si_Add[20:0]),
		   .si_AddPar		(si_AddPar[2:0]),
		   .si_Mask		(si_Mask[3:0]),
		   .si_WData		(si_WData[31:0]),
		   .si_WDataPar		(si_WDataPar[3:0]),
		   .si_Wr		(si_Wr),
		   .si_Rd		(si_Rd),
		   .slave_if_idle	(slave_if_idle),
		   .ssc_self_reset_ack	(ssc_self_reset_ack),
		   .si_MReqInfoErr	(xnn2eh_fap[SI_FAP]),	 
		   .si_MCmdInfoErr	(xnn2eh_fdp[SI_FDP_MCMD]), 
		   
		   .m_clk		(m_clk),
		   .m_reset_n		(m_reset_n),
		   .sp_MAddr		(xnnx_sp_MAddr[20:0]),	 
		   .sp_MCmd		(xnnx_sp_MCmd[2:0]),	 
		   .sp_MCmdInfo		(xnnx_sp_MCmdInfo),	 
		   .sp_MReqInfo		(xnnx_sp_MReqInfo[2:0]), 
		   .sp_MByteEn		(xnnx_sp_MByteEn[3:0]),	 
		   .sp_MData		(xnnx_sp_MData[31:0]),	 
		   .sp_MDataInfo	(xnnx_sp_MDataInfo[3:0]), 
		   .sp_MRespAccept	(xnnx_sp_MRespAccept),	 
		   .su_siRData		(su_siRData[31:0]),
		   .su_siRDataValid	(su_siRDataValid),
		   .su_siBusy		(su_siBusy),
		   .ls_siRData		(ls_siRData[31:0]),
		   .ls_siRDataValid	(ls_siRDataValid),
		   .ls_siBusy		(ls_siBusy),
		   .fr_siRData		(fr_siRData[31:0]),
		   .fr_siRDataValid	(fr_siRDataValid),
		   .fr_siBusy		(~xnn_faults_SCmdAccept), 
		   .ssc_self_reset	(ssc_self_reset));

   wire [3:0]     acc_rev; 

   assign acc_rev = 4'd0;

   assign acc_rev = 4'd2;

   













 
xnn_core xnn_core_i (
                     .interrupt                      (xnn_interrupt),
		     .bus_parity_err                 ({xnn2eh_fdp[XNN2EH_FDP_RWEIGHT0],xnn2eh_fdp[XNN2EH_FDP_RDATA3],xnn2eh_fdp[XNN2EH_FDP_RDATA2],xnn2eh_fdp[XNN2EH_FDP_RDATA1],xnn2eh_fdp[XNN2EH_FDP_RDATA0]}),
                     
		     
		     .blocks_0_Xcache_Data_CE0(blocks_0_Xcache_Data_CE0),
		     .blocks_0_Xcache_Data_A0(blocks_0_Xcache_Data_A0[5:0]),
		     .blocks_0_Xcache_Data_D0(blocks_0_Xcache_Data_D0[255:0]),
		     .blocks_0_Xcache_Data_WE0(blocks_0_Xcache_Data_WE0),
		     .blocks_1_Xcache_Data_CE0(blocks_1_Xcache_Data_CE0),
		     .blocks_1_Xcache_Data_A0(blocks_1_Xcache_Data_A0[5:0]),
		     .blocks_1_Xcache_Data_D0(blocks_1_Xcache_Data_D0[255:0]),
		     .blocks_1_Xcache_Data_WE0(blocks_1_Xcache_Data_WE0),
		     .blocks_2_Xcache_Data_CE0(blocks_2_Xcache_Data_CE0),
		     .blocks_2_Xcache_Data_A0(blocks_2_Xcache_Data_A0[5:0]),
		     .blocks_2_Xcache_Data_D0(blocks_2_Xcache_Data_D0[255:0]),
		     .blocks_2_Xcache_Data_WE0(blocks_2_Xcache_Data_WE0),
		     .blocks_3_Xcache_Data_CE0(blocks_3_Xcache_Data_CE0),
		     .blocks_3_Xcache_Data_A0(blocks_3_Xcache_Data_A0[5:0]),
		     .blocks_3_Xcache_Data_D0(blocks_3_Xcache_Data_D0[255:0]),
		     .blocks_3_Xcache_Data_WE0(blocks_3_Xcache_Data_WE0),
		     .Wdata0_CE0	(Wdata0_CE0),
		     .Wdata0_A0		(Wdata0_A0[6:0]),
		     .Wdata0_D0		(Wdata0_D0[255:0]),
		     .Wdata0_WE0	(Wdata0_WE0),
		     .Wdata1_CE0	(Wdata1_CE0),
		     .Wdata1_A0		(Wdata1_A0[6:0]),
		     .Wdata1_D0		(Wdata1_D0[255:0]),
		     .Wdata1_WE0	(Wdata1_WE0),
		     .xnn2spWr_0_data	(xnn0_wr_req_data[165+16:0]), 
		     .xnn2spWr_1_data	(xnn1_wr_req_data[165+16:0]), 
		     .xnn2spWr_2_data	(xnn2_wr_req_data[165+16:0]), 
		     .xnn2spWr_3_data	(xnn3_wr_req_data[165+16:0]), 
		     .xnn2spWrdReq_data	(xnn4_rd_req_data[52:0]), 
		     .xnn2spXrdReq_0_data(xnn0_rd_req_data[52:0]), 
		     .xnn2spXrdReq_1_data(xnn1_rd_req_data[52:0]), 
		     .xnn2spXrdReq_2_data(xnn2_rd_req_data[52:0]), 
		     .xnn2spXrdReq_3_data(xnn3_rd_req_data[52:0]), 
		     .tensorProcessorBusy(tensorProcessorBusy),
		     .postProcessorBusy	(postProcessorBusy),
		     .asipRequestIn_ready(asipRequestIn_ready),
		     .eventEvictFull_0	(p_eventEvictFull_0),	 
		     .eventEvictFull_1	(p_eventEvictFull_1),	 
		     .eventEvictFull_2	(p_eventEvictFull_2),	 
		     .eventEvictFull_3	(p_eventEvictFull_3),	 
		     .eventExecComplex	(p_eventExecComplex),	 
		     .eventExecComplexStart(p_eventExecComplexStart), 
		     .eventExecutionReq	(p_eventExecutionReq),	 
		     .eventFull		(p_eventFull),		 
		     .eventIfmBroadCastBubble_0(p_eventIfmBroadCastBubble_0), 
		     .eventIfmBroadCastBubble_1(p_eventIfmBroadCastBubble_1), 
		     .eventIfmBroadCastBubble_2(p_eventIfmBroadCastBubble_2), 
		     .eventIfmBroadCastBubble_3(p_eventIfmBroadCastBubble_3), 
		     .eventIfmChannelBusy_0(p_eventIfmChannelBusy_0), 
		     .eventIfmChannelBusy_1(p_eventIfmChannelBusy_1), 
		     .eventIfmChannelBusy_2(p_eventIfmChannelBusy_2), 
		     .eventIfmChannelBusy_3(p_eventIfmChannelBusy_3), 
		     .eventIfmHit_0	(p_eventIfmHit_0),	 
		     .eventIfmHit_1	(p_eventIfmHit_1),	 
		     .eventIfmHit_2	(p_eventIfmHit_2),	 
		     .eventIfmHit_3	(p_eventIfmHit_3),	 
		     .eventIfmRead_0	(p_eventIfmRead_0),	 
		     .eventIfmRead_1	(p_eventIfmRead_1),	 
		     .eventIfmRead_2	(p_eventIfmRead_2),	 
		     .eventIfmRead_3	(p_eventIfmRead_3),	 
		     .eventStarved	(p_eventStarved),	 
		     .eventWeightChannelBusy(p_eventWeightChannelBusy), 
		     .eventWeightChannelHit(p_eventWeightChannelHit[1:0]), 
		     .eventWeightChannelRead(p_eventWeightChannelRead[1:0]), 
		     .exception_data	(xnnException2ctl_data[31:0]), 
		     .exception_valid	(xnnException2ctl_valid), 
		     .sp2xnnWdataResp_ready(xnn4_rd_resp_ready), 
		     .sp2xnnWrResp_0_ready(xnn0_wr_resp_ready),	 
		     .sp2xnnWrResp_1_ready(xnn1_wr_resp_ready),	 
		     .sp2xnnWrResp_2_ready(xnn2_wr_resp_ready),	 
		     .sp2xnnWrResp_3_ready(xnn3_wr_resp_ready),	 
		     .sp2xnnXdataResp_0_ready(xnn0_rd_resp_ready), 
		     .sp2xnnXdataResp_1_ready(xnn1_rd_resp_ready), 
		     .sp2xnnXdataResp_2_ready(xnn2_rd_resp_ready), 
		     .sp2xnnXdataResp_3_ready(xnn3_rd_resp_ready), 
		     .xnn2asip_data	(xnn2asip_data[31:0]),
		     .xnn2asip_valid	(xnn2asip_valid),
		     .xnn2spWr_0_valid	(xnn0_wr_req_valid),	 
		     .xnn2spWr_1_valid	(xnn1_wr_req_valid),	 
		     .xnn2spWr_2_valid	(xnn2_wr_req_valid),	 
		     .xnn2spWr_3_valid	(xnn3_wr_req_valid),	 
		     .xnn2spWrdReq_valid(xnn4_rd_req_valid),	 
		     .xnn2spXrdReq_0_valid(xnn0_rd_req_valid),	 
		     .xnn2spXrdReq_1_valid(xnn1_rd_req_valid),	 
		     .xnn2spXrdReq_2_valid(xnn2_rd_req_valid),	 
		     .xnn2spXrdReq_3_valid(xnn3_rd_req_valid),	 
		     
		     .blocks_0_Xcache_Data_Q0(blocks_0_Xcache_Data_Q0[255:0]),
		     .blocks_1_Xcache_Data_Q0(blocks_1_Xcache_Data_Q0[255:0]),
		     .blocks_2_Xcache_Data_Q0(blocks_2_Xcache_Data_Q0[255:0]),
		     .blocks_3_Xcache_Data_Q0(blocks_3_Xcache_Data_Q0[255:0]),
		     .Wdata0_Q0		(Wdata0_Q0[255:0]),
		     .Wdata1_Q0		(Wdata1_Q0[255:0]),
		     .xnn_gclk_block	(xnn_gclk_block),
		     .xnn_tp_fscan_clkungate(xnn_tp_fscan_clkungate),
		     .xnn_pp_fscan_clkungate(xnn_pp_fscan_clkungate),
		     .sp2xnnXdataResp_0_data_parity(xnn0_data_rd_resp_parity[255+32:0]), 
		     .sp2xnnXdataResp_1_data_parity(xnn1_data_rd_resp_parity[255+32:0]), 
		     .sp2xnnXdataResp_2_data_parity(xnn2_data_rd_resp_parity[255+32:0]), 
		     .sp2xnnXdataResp_3_data_parity(xnn3_data_rd_resp_parity[255+32:0]), 
		     .sp2xnnWdataResp_data_parity(xnn4_data_rd_resp_parity[255+32:0]), 
		     .tst_gated_clk2	(tst_gated_clk2),
		     .acc_id		(4'b0),			 
		     .acc_rev		(acc_rev[3:0]),
		     .arst_n		(reset_n),		 
		     .asipRequestIn_data(asipRequestIn_data[127:0]),
		     .asipRequestIn_valid(asipRequestIn_valid),
		     .chickenBits_IFM_CACHE_POLICY(chickenBits_IFM_CACHE_POLICY[1:0]),
		     .chickenBits_IFM_REQ_DELTA(chickenBits_IFM_REQ_DELTA[4:0]),
		     .chickenBits_OFM_WRITE_BUBBLES(chickenBits_OFM_WRITE_BUBBLES[3:0]),
		     .chickenBits_OVERRIDE_IFM_CACHE_POLICY(chickenBits_OVERRIDE_IFM_CACHE_POLICY),
		     .chickenBits_SECOND_WBUFF_DISABLE(chickenBits_SECOND_WBUFF_DISABLE),
		     .exception_ready	(xnnException2ctl_ready), 
		     .perfEnable	(perfEnable),
		     .sp2xnnWdataResp_valid(xnn4_rd_resp_valid), 
		     .sp2xnnWrResp_0_data(xnn0_wr_resp_data),	 
		     .sp2xnnWrResp_0_valid(xnn0_wr_resp_valid),	 
		     .sp2xnnWrResp_1_data(xnn1_wr_resp_data),	 
		     .sp2xnnWrResp_1_valid(xnn1_wr_resp_valid),	 
		     .sp2xnnWrResp_2_data(xnn2_wr_resp_data),	 
		     .sp2xnnWrResp_2_valid(xnn2_wr_resp_valid),	 
		     .sp2xnnWrResp_3_data(xnn3_wr_resp_data),	 
		     .sp2xnnWrResp_3_valid(xnn3_wr_resp_valid),	 
		     .sp2xnnXdataResp_0_valid(xnn0_rd_resp_valid), 
		     .sp2xnnXdataResp_1_valid(xnn1_rd_resp_valid), 
		     .sp2xnnXdataResp_2_valid(xnn2_rd_resp_valid), 
		     .sp2xnnXdataResp_3_valid(xnn3_rd_resp_valid), 
		     .wCacheCtrl_W_CACHE_BP(wCacheCtrl_W_CACHE_BP[4:0]),
		     .wCacheCtrl_W_CACHE_LIMIT(wCacheCtrl_W_CACHE_LIMIT[9:0]),
		     .wCacheCtrl_W_CACHE_OVERRIDE(wCacheCtrl_W_CACHE_OVERRIDE),
		     .wCacheCtrl_W_CACHE_STEP(wCacheCtrl_W_CACHE_STEP[11:0]),
		     .xnn2asip_ready	(xnn2asip_ready),
		     .xnn2spWr_0_ready	(xnn0_wr_req_ready),	 
		     .xnn2spWr_1_ready	(xnn1_wr_req_ready),	 
		     .xnn2spWr_2_ready	(xnn2_wr_req_ready),	 
		     .xnn2spWr_3_ready	(xnn3_wr_req_ready),	 
		     .xnn2spWrdReq_ready(xnn4_rd_req_ready),	 
		     .xnn2spXrdReq_0_ready(xnn0_rd_req_ready),	 
		     .xnn2spXrdReq_1_ready(xnn1_rd_req_ready),	 
		     .xnn2spXrdReq_2_ready(xnn2_rd_req_ready),	 
		     .xnn2spXrdReq_3_ready(xnn3_rd_req_ready),	 
		     .xnn_gclk		(gclk1));		 



 
   xnnc_piper xnnc_piper (
                         .clk                       (gclk1),
                         .arst_n                    (reset_n), 
                        
			  
			  .eventExecComplex	(eventExecComplex),
			  .eventExecComplexStart(eventExecComplexStart),
			  .eventExecutionReq	(eventExecutionReq),
			  .eventFull		(eventFull),
			  .eventIfmBroadCastBubble_0(eventIfmBroadCastBubble_0),
			  .eventIfmBroadCastBubble_1(eventIfmBroadCastBubble_1),
			  .eventIfmBroadCastBubble_2(eventIfmBroadCastBubble_2),
			  .eventIfmBroadCastBubble_3(eventIfmBroadCastBubble_3),
			  .eventIfmChannelBusy_0(eventIfmChannelBusy_0),
			  .eventIfmChannelBusy_1(eventIfmChannelBusy_1),
			  .eventIfmChannelBusy_2(eventIfmChannelBusy_2),
			  .eventIfmChannelBusy_3(eventIfmChannelBusy_3),
			  .eventEvictFull_0	(eventEvictFull_0),
			  .eventEvictFull_1	(eventEvictFull_1),
			  .eventEvictFull_2	(eventEvictFull_2),
			  .eventEvictFull_3	(eventEvictFull_3),
			  .eventIfmHit_0	(eventIfmHit_0),
			  .eventIfmHit_1	(eventIfmHit_1),
			  .eventIfmHit_2	(eventIfmHit_2),
			  .eventIfmHit_3	(eventIfmHit_3),
			  .eventIfmRead_0	(eventIfmRead_0),
			  .eventIfmRead_1	(eventIfmRead_1),
			  .eventIfmRead_2	(eventIfmRead_2),
			  .eventIfmRead_3	(eventIfmRead_3),
			  .eventStarved		(eventStarved),
			  .eventWeightChannelBusy(eventWeightChannelBusy),
			  .eventWeightChannelHit(eventWeightChannelHit[1:0]),
			  .eventWeightChannelRead(eventWeightChannelRead[1:0]),
			  .perfEnable		(perfEnable),
			  
			  .p_perfEnable		(p_perfEnable),
			  .p_eventExecComplex	(p_eventExecComplex),
			  .p_eventExecComplexStart(p_eventExecComplexStart),
			  .p_eventExecutionReq	(p_eventExecutionReq),
			  .p_eventFull		(p_eventFull),
			  .p_eventIfmBroadCastBubble_0(p_eventIfmBroadCastBubble_0),
			  .p_eventIfmBroadCastBubble_1(p_eventIfmBroadCastBubble_1),
			  .p_eventIfmBroadCastBubble_2(p_eventIfmBroadCastBubble_2),
			  .p_eventIfmBroadCastBubble_3(p_eventIfmBroadCastBubble_3),
			  .p_eventIfmChannelBusy_0(p_eventIfmChannelBusy_0),
			  .p_eventIfmChannelBusy_1(p_eventIfmChannelBusy_1),
			  .p_eventIfmChannelBusy_2(p_eventIfmChannelBusy_2),
			  .p_eventIfmChannelBusy_3(p_eventIfmChannelBusy_3),
			  .p_eventEvictFull_0	(p_eventEvictFull_0),
			  .p_eventEvictFull_1	(p_eventEvictFull_1),
			  .p_eventEvictFull_2	(p_eventEvictFull_2),
			  .p_eventEvictFull_3	(p_eventEvictFull_3),
			  .p_eventIfmHit_0	(p_eventIfmHit_0),
			  .p_eventIfmHit_1	(p_eventIfmHit_1),
			  .p_eventIfmHit_2	(p_eventIfmHit_2),
			  .p_eventIfmHit_3	(p_eventIfmHit_3),
			  .p_eventIfmRead_0	(p_eventIfmRead_0),
			  .p_eventIfmRead_1	(p_eventIfmRead_1),
			  .p_eventIfmRead_2	(p_eventIfmRead_2),
			  .p_eventIfmRead_3	(p_eventIfmRead_3),
			  .p_eventStarved	(p_eventStarved),
			  .p_eventWeightChannelBusy(p_eventWeightChannelBusy),
			  .p_eventWeightChannelHit(p_eventWeightChannelHit[1:0]),
			  .p_eventWeightChannelRead(p_eventWeightChannelRead[1:0]));
   

   
   wire [2:0] 	xnnc_MCmd, xlmc_MCmd,ocp2strm_slave_req_in_MCmd, dcr_MCmd, xnn_actif_MCmd, xpp_MCmd;
   wire [1:0] 	xnnc2smm_SResp,xpp2smm_SResp;
   assign       xnn2eh_ie[XNNC_OCP_ERR_RESP] = (xnnc2smm_SResp==2'b11);
   assign       xnn2eh_ie[XPP_OCP_ERR_RESP] = (xpp2smm_SResp==2'b11);
   wire         ls_xnncSel,ls_dcSel,ls_slmcSel,ls_xlmcSel,ls_spSel,ls_xppSel,ls_Wr,ls_Rd,ls_actifSel;
   assign       xpp_MCmd = ls_xppSel ? (ls_Wr ? 
   assign       xnnc_MCmd = ls_xnncSel ? (ls_Wr ? 
   assign       dcr_MCmd = ls_dcSel ? (ls_Wr ? 
   wire         dcr_MCmdInfo = ^dcr_MCmd;
   assign       ocp2strm_slave_req_in_MCmd = ls_spSel ? (ls_Wr ? 
   assign       xlmc_MCmd = ls_xlmcSel ? (ls_Wr ? 
   assign       xnn_actif_MCmd = ls_actifSel ? (ls_Wr ? 
   wire [4:0]   xnnc_clk_cntrl; 




















   xnnc xnnc (
                  .clk_cntrl(xnnc_clk_cntrl),
	          .target_resp_out_SResp (xnnc2smm_SResp),
                  .csrErrCheck(xnnc_csrErrCheck[24:0]),
   
	      
	      .target_SCmdAccept	(xnnc2smm_SCmdAccept),	 
	      .target_resp_out_SDataPAR	(xnnc_lsRDataPar[7:0]),	 
	      .target_resp_out_SData	(xnnc_lsRData[63:0]),	 
	      .cmd2xnn_valid		(asipRequestIn_valid),	 
	      .cmd2xnn_data		(asipRequestIn_data[127:0]), 
	      .xnn2ctl_ready		(xnn2asip_ready),	 
	      .xnnException2ctl_ready	(xnnException2ctl_ready),
	      .chickenBits_SECOND_WBUFF_DISABLE(chickenBits_SECOND_WBUFF_DISABLE),
	      .chickenBits_OFM_WRITE_BUBBLES(chickenBits_OFM_WRITE_BUBBLES[3:0]),
	      .chickenBits_IFM_REQ_DELTA(chickenBits_IFM_REQ_DELTA[4:0]),
	      .chickenBits_OVERRIDE_IFM_CACHE_POLICY(chickenBits_OVERRIDE_IFM_CACHE_POLICY),
	      .chickenBits_IFM_CACHE_POLICY(chickenBits_IFM_CACHE_POLICY[1:0]),
	      .perfEnable		(p_perfEnable),		 
	      .wCacheCtrl_W_CACHE_OVERRIDE(wCacheCtrl_W_CACHE_OVERRIDE),
	      .wCacheCtrl_W_CACHE_LIMIT	(wCacheCtrl_W_CACHE_LIMIT[9:0]),
	      .wCacheCtrl_W_CACHE_STEP	(wCacheCtrl_W_CACHE_STEP[11:0]),
	      .wCacheCtrl_W_CACHE_BP	(wCacheCtrl_W_CACHE_BP[4:0]),
	      
	      .clk			(gclk1),		 
	      .rstn			(reset_n),		 
	      .target_req_in_MByteEn	(ls_ByteEn[7:0]),	 
	      .target_req_in_MDataPAR	(ls_WDataPar[7:0]),	 
	      .target_req_in_MAddrPAR	(ls_AddPar[1:0]),	 
	      .target_req_in_MCmd	(xnnc_MCmd[2:0]),	 
	      .target_req_in_MAddr	({ls_Add[9:3],3'b0}),	 
	      .target_req_in_MData	(ls_WData[63:0]),	 
	      .target_req_in_MReset_n	(1'b1),			 
	      .target_req_in_EnableClk	(1'b1),			 
	      .target_MRespAccept	(1'b1),			 
	      .cmd2xnn_ready		(asipRequestIn_ready),	 
	      .xnn2ctl_valid		(xnn2asip_valid),	 
	      .xnn2ctl_data		(xnn2asip_data[31:0]),	 
	      .xnnException2ctl_valid	(xnnException2ctl_valid),
	      .xnnException2ctl_data	(xnnException2ctl_data[31:0]),
	      .deep_reset_n		(deep_reset_n),
	      .eventExecutionReq	(eventExecutionReq),
	      .eventFull		(eventFull),
	      .eventExecComplex		(eventExecComplex),
	      .eventIfmChannelBusy_0	(eventIfmChannelBusy_0),
	      .eventIfmChannelBusy_1	(eventIfmChannelBusy_1),
	      .eventIfmChannelBusy_2	(eventIfmChannelBusy_2),
	      .eventIfmChannelBusy_3	(eventIfmChannelBusy_3),
	      .eventIfmHit_0		(eventIfmHit_0),
	      .eventIfmHit_1		(eventIfmHit_1),
	      .eventIfmHit_2		(eventIfmHit_2),
	      .eventIfmHit_3		(eventIfmHit_3),
	      .eventIfmRead_0		(eventIfmRead_0),
	      .eventIfmRead_1		(eventIfmRead_1),
	      .eventIfmRead_2		(eventIfmRead_2),
	      .eventIfmRead_3		(eventIfmRead_3),
	      .eventIfmBroadCastBubble_0(eventIfmBroadCastBubble_0),
	      .eventIfmBroadCastBubble_1(eventIfmBroadCastBubble_1),
	      .eventIfmBroadCastBubble_2(eventIfmBroadCastBubble_2),
	      .eventIfmBroadCastBubble_3(eventIfmBroadCastBubble_3),
	      .eventEvictFull_0		(eventEvictFull_0),
	      .eventEvictFull_1		(eventEvictFull_1),
	      .eventEvictFull_2		(eventEvictFull_2),
	      .eventEvictFull_3		(eventEvictFull_3),
	      .eventStarved		(eventStarved),
	      .eventWeightChannelBusy	(eventWeightChannelBusy),
	      .eventWeightChannelHit	(eventWeightChannelHit[1:0]),
	      .eventWeightChannelRead	(eventWeightChannelRead[1:0]),
	      .status			({slmc_active,postProcessorBusy,tensorProcessorBusy})); 

















 
xpp_wrapper xpp_wrapper_i (
         .clk(gclk1),
         .rstn(reset_n),
	 .xpp_busy(xpp_busy),
         .csrErrCheck(xpp_csrErrCheck[13:0]),

			   
			   .sp2xppRdResp_ready	(sp2xppRdResp_ready),
			   .sp2xppWrResp_ready	(sp2xppWrResp_ready),
			   .target_SCmdAccept	(xpp2smm_SCmdAccept), 
			   .target_resp_out_SData(xpp2smm_SData[63:0]), 
			   .target_resp_out_SDataPAR(xpp2smm_SDataPAR[7:0]), 
			   .target_resp_out_SResp(xpp2smm_SResp[1:0]), 
			   .xpp2spRdReq_data_addr_pty(xpp2spRdReq_data_addr_pty[2:0]),
			   .xpp2spRdReq_data_address(xpp2spRdReq_data_address[16:0]),
			   .xpp2spRdReq_data_byteEn(xpp2spRdReq_data_byteEn[31:0]),
			   .xpp2spRdReq_data_wrEn(xpp2spRdReq_data_wrEn),
			   .xpp2spRdReq_valid	(xpp2spRdReq_valid),
			   .xpp2spWrReq_data_byteEn(xpp2spWrReq_data_byteEn[31:0]),
			   .xpp2spWrReq_data_wrDataWithPar(xpp2spWrReq_data_wrDataWithPar[255+32:0]),
			   .xpp2spWrReq_data_addr_pty(xpp2spWrReq_data_addr_pty[2:0]),
			   .xpp2spWrReq_data_address(xpp2spWrReq_data_address[16:0]),
			   .xpp2spWrReq_data_nonPosted(xpp2spWrReq_data_nonPosted),
			   .xpp2spWrReq_data_wrEn(xpp2spWrReq_data_wrEn),
			   .xpp2spWrReq_valid	(xpp2spWrReq_valid),
			   .xpp_rdData_parity_err(xnn2eh_fdp[XPP_FDP]), 
			   
			   .sp2xppRdResp_data_dataWithPar(sp2xppRdResp_data[255+32:0]), 
			   .sp2xppRdResp_valid	(sp2xppRdResp_valid),
			   .sp2xppWrResp_data	(sp2xppWrResp_data),
			   .sp2xppWrResp_valid	(sp2xppWrResp_valid),
			   .target_MRespAccept	(1'b1),		 
			   .target_req_in_EnableClk(1'b1),	 
			   .target_req_in_MAddr	({ls_Add[9:3],3'b0}), 
			   .target_req_in_MAddrPAR(ls_AddPar[1:0]), 
			   .target_req_in_MByteEn(ls_ByteEn),	 
			   .target_req_in_MCmd	(xpp_MCmd),	 
			   .target_req_in_MData	(ls_WData),	 
			   .target_req_in_MDataPAR(ls_WDataPar), 
			   .target_req_in_MReset_n(1'b1),	 
			   .xpp2spRdReq_ready	(xpp2spRdReq_ready),
			   .xpp2spWrReq_ready	(xpp2spWrReq_ready));
 

   wire [96:0] csr_i_target_req_in;
   wire [73:0] csr_i_target_resp_out;
   assign xnn2eh_ie[SLMC_OCP_ERR_RESP] = (csr_i_target_resp_out==2'b11);
   assign csr_i_target_req_in[7:0] = ls_ByteEn;
   assign csr_i_target_req_in[15:8] = ls_WDataPar;
   assign csr_i_target_req_in[17:16] = {ls_AddPar[1:0]};
   assign csr_i_target_req_in[20:18] = ls_slmcSel ? (ls_Wr ? 
   assign csr_i_target_req_in[30:21] = {ls_Add[9:3],3'b0};
   assign csr_i_target_req_in[94:31] = ls_WData[63:0];
   assign csr_i_target_req_in[96:95] = 2'b11; 
   

   assign xnn_gclk_block         = xnnc_clk_cntrl[0] ; 
   assign xnn_tp_fscan_clkungate = xnnc_clk_cntrl[1] ;
   assign xnn_pp_fscan_clkungate = xnnc_clk_cntrl[2] ;
   assign slmc_gclk_block        = xnnc_clk_cntrl[3] ;
   assign slmc_fscan_clkungate   = xnnc_clk_cntrl[4] ;

   
   assign xnn_gclk_block         = 1'b1; 
   assign xnn_tp_fscan_clkungate = 1'b1;
   assign xnn_pp_fscan_clkungate = 1'b1;
   assign slmc_gclk_block        = 1'b1;
   assign slmc_fscan_clkungate   = 1'b1;


   assign slmc_gclk_ctrl = slmc_active | slmc_gclk_block;
   
   





   gclk_comp 
     slmc_gclk_gen (
		    
		    .Q			(slmc_gclk),		 
		    
		    .CP			(gclk1),		 
		    .TE			(tst_gated_clk2),	 
		    .E			(slmc_gclk_ctrl || slmc_fscan_clkungate)); 
   


   wire [7:0][11:0] dir_MReqInfo_not_connected;
   wire [7:0][11:0] diw_MReqInfo_not_connected;
   genvar i;        
   generate        
 	for (i = 0; i < 8 ; i++)
        begin : GEN_MReqInfo 
            assign dir_MReqInfo_not_connected[i] = 12'b0;       
            assign diw_MReqInfo_not_connected[i] = 12'b0;        
        end 
  endgenerate

wire         rdStrmRequestInitiator_valid;
wire         rdStrmRequestInitiator_data_wrEn;
wire [31:0]  rdStrmRequestInitiator_data_byteEn;
wire [16:0]  rdStrmRequestInitiator_data_address;
wire [2:0]   rdStrmRequestInitiator_data_addr_pty;
wire [11:0]  rdStrmRequestInitiator_data_verifId;
wire         rdStrmResponseTarget_ready;
wire         wrStrmRequestInitiator_valid;
wire         wrStrmRequestInitiator_data_wrEn;
wire [31:0]  wrStrmRequestInitiator_data_byteEn;
wire [16:0]  wrStrmRequestInitiator_data_address;
wire [2:0]   wrStrmRequestInitiator_data_addr_pty;
wire         wrStrmRequestInitiator_data_nonPosted;
wire [287:0] wrStrmRequestInitiator_data_wrData;
wire [11:0]  wrStrmRequestInitiator_data_verifId;
wire         wrStrmResponseTarget_ready;


assign       rdStrmRequestInitiator_valid = 1'b0;
assign       rdStrmRequestInitiator_data_wrEn = 1'b0;
assign       rdStrmRequestInitiator_data_byteEn = 32'b0;
assign       rdStrmRequestInitiator_data_address = 17'b0;
assign       rdStrmRequestInitiator_data_addr_pty = 3'b0;

   assign       rdStrmRequestInitiator_data_verifId = 12'b0;

   assign       rdStrmRequestInitiator_data_verifId = 12'd10; 

assign       rdStrmResponseTarget_ready = 1'b0;
assign       wrStrmRequestInitiator_valid = 1'b0;
assign       wrStrmRequestInitiator_data_wrEn = 1'b0;
assign       wrStrmRequestInitiator_data_byteEn = 32'b0;
assign       wrStrmRequestInitiator_data_address = 17'b0;
assign       wrStrmRequestInitiator_data_addr_pty = 3'b0;
assign       wrStrmRequestInitiator_data_nonPosted = 1'b0;
assign       wrStrmRequestInitiator_data_wrData = 288'b0;

   assign       wrStrmRequestInitiator_data_verifId = 12'b0;

   assign       wrStrmRequestInitiator_data_verifId = 12'b11;  

assign       wrStrmResponseTarget_ready = 1'b0;

wire         rdStrmRequestInitiator_ready_not_connected;
wire         rdStrmResponseTarget_valid_not_connected;
wire [287:0] rdStrmResponseTarget_data_not_connected;
wire         wrStrmRequestInitiator_ready_not_connected;
wire         wrStrmResponseTarget_valid_not_connected;
wire         wrStrmResponseTarget_data_not_connected;
assign       rdStrmRequestInitiator_ready_not_connected = rdStrmRequestInitiator_ready;
assign       rdStrmResponseTarget_valid_not_connected = rdStrmResponseTarget_valid;
assign       rdStrmResponseTarget_data_not_connected = rdStrmResponseTarget_data;
assign       wrStrmRequestInitiator_ready_not_connected = wrStrmRequestInitiator_ready;
assign       wrStrmResponseTarget_valid_not_connected = wrStrmResponseTarget_valid;
assign       wrStrmResponseTarget_data_not_connected = wrStrmResponseTarget_data_not_connected;

wire [31:0] xlmc_data_path_par_err;
wire [31:0] xlmc_data_mem_par_err;
wire [31:0] xlmc_addr_path_par_err;

assign xnn2eh_fdp[
assign xnn2eh_fap[
assign xnn2eh_mdpe[










































































lmc_wrapper lmc_wrap (
		      .csr_i_target_resp_out(csr_i_target_resp_out[73:0]), 
    		      .csr_i_target_req_in(csr_i_target_req_in[96:0]),
		      .slmc_active(slmc_active),
		      .clear_sp_busy(clear_sp_busy),
                      .csr_i_csrErrCheck(slmc_csrErrCheck[35:0]),
		      .xlmc_addr_path_par_err(xlmc_addr_path_par_err[31:0]),
		      .xlmc_data_path_par_err(xlmc_data_path_par_err[31:0]),
		      .xlmc_data_mem_par_err(xlmc_data_mem_par_err[31:0]),
		      .xlmc_regs_addr_parity_error(xlmc_regs_addr_parity_error),
		      .xlmc_regs_data_parity_error(xlmc_regs_data_parity_error),
		      .xlmc_regs_reg_parity_error(xlmc_regs_reg_parity_error),
       
		      
		      .xnn0_rd_req_ready(xnn0_rd_req_ready),
		      .xnn0_rd_resp_data(xnn0_data_rd_resp_parity[287:0]), 
		      .xnn0_rd_resp_valid(xnn0_rd_resp_valid),
		      .xnn1_rd_req_ready(xnn1_rd_req_ready),
		      .xnn1_rd_resp_data(xnn1_data_rd_resp_parity[287:0]), 
		      .xnn1_rd_resp_valid(xnn1_rd_resp_valid),
		      .xnn2_rd_req_ready(xnn2_rd_req_ready),
		      .xnn2_rd_resp_data(xnn2_data_rd_resp_parity[287:0]), 
		      .xnn2_rd_resp_valid(xnn2_rd_resp_valid),
		      .xnn3_rd_req_ready(xnn3_rd_req_ready),
		      .xnn3_rd_resp_data(xnn3_data_rd_resp_parity[287:0]), 
		      .xnn3_rd_resp_valid(xnn3_rd_resp_valid),
		      .xnn4_rd_req_ready(xnn4_rd_req_ready),
		      .xnn4_rd_resp_data(xnn4_data_rd_resp_parity[287:0]), 
		      .xnn4_rd_resp_valid(xnn4_rd_resp_valid),
		      .xnn0_wr_req_ready(xnn0_wr_req_ready),
		      .xnn0_wr_resp_data(xnn0_wr_resp_data),
		      .xnn0_wr_resp_valid(xnn0_wr_resp_valid),
		      .xnn1_wr_req_ready(xnn1_wr_req_ready),
		      .xnn1_wr_resp_data(xnn1_wr_resp_data),
		      .xnn1_wr_resp_valid(xnn1_wr_resp_valid),
		      .xnn2_wr_req_ready(xnn2_wr_req_ready),
		      .xnn2_wr_resp_data(xnn2_wr_resp_data),
		      .xnn2_wr_resp_valid(xnn2_wr_resp_valid),
		      .xnn3_wr_req_ready(xnn3_wr_req_ready),
		      .xnn3_wr_resp_data(xnn3_wr_resp_data),
		      .xnn3_wr_resp_valid(xnn3_wr_resp_valid),
		      .csr_i_target_SCmdAccept(csr_i_target_SCmdAccept),
		      .xlmc_SCmdAccept	(xlmc_SCmdAccept),
		      .xlmc_SData	(xlmc_SData[31:0]),
		      .xlmc_SDataPar	(xlmc_SDataPar[3:0]),
		      .xlmc_SResp	(xlmc_SResp[1:0]),
		      .rd_SCmdAccept	(dir_SCmdAccept),	 
		      .rd_SData		(dir_SData),		 
		      .rd_SDataPAR	(dir_SData_P),		 
		      .rd_SResp		(dir_SResp),		 
		      .wr_SCmdAccept	(diw_SCmdAccept),	 
		      .wr_SResp		(),			 
		      .xlmc_verifId	(),			 
		      .ssc0_rd_req_ready(RdHalfVecRequestsConv2SLMC_ready), 
		      .ssc0_rd_resp_data(RdHalfVecDataRspConv2SLMC_data[287:0]), 
		      .ssc0_rd_resp_valid(RdHalfVecDataRspConv2SLMC_valid), 
		      .ssc0_wr_req_ready(WrHalfVecRequestsConv2SLMC_ready), 
		      .ssc0_wr_resp_data(WrHalfVecNonPostedRspConv2SLMC_data), 
		      .ssc0_wr_resp_valid(WrHalfVecNonPostedRspConv2SLMC_valid), 
		      .vmp0_rd_req_ready(rdStrmRequestInitiator_ready), 
		      .vmp0_rd_resp_data(rdStrmResponseTarget_data[287:0]), 
		      .vmp0_rd_resp_valid(rdStrmResponseTarget_valid), 
		      .vmp0_wr_req_ready(wrStrmRequestInitiator_ready), 
		      .vmp0_wr_resp_data(wrStrmResponseTarget_data), 
		      .vmp0_wr_resp_valid(wrStrmResponseTarget_valid), 
		      .xpp0_rd_req_ready(xpp2spRdReq_ready),	 
		      .xpp0_rd_resp_data(sp2xppRdResp_data[287:0]), 
		      .xpp0_rd_resp_valid(sp2xppRdResp_valid),	 
		      .xpp0_wr_req_ready(xpp2spWrReq_ready),	 
		      .xpp0_wr_resp_data(sp2xppWrResp_data),	 
		      .xpp0_wr_resp_valid(sp2xppWrResp_valid),	 
		      .xlmc2sp_ADDR	(xlmc2sp_ADDR),		 
		      .xlmc2sp_CS	(xlmc2sp_CS),		 
		      .xlmc2sp_BITEN	(xlmc2sp_BITEN),	 
		      .xlmc2sp_WE	(xlmc2sp_WE),		 
		      .xlmc2sp_WDATA	(xlmc2sp_WDATA),	 
		      
		      .arst_n		(reset_n),		 
		      .deep_reset_n	(deep_reset_n),
		      .clk		(gclk1),		 
		      .gclk		(slmc_gclk),		 
		      .xnn0_rd_req_data	({xnn0_rd_req_verifId[11:0],xnn0_rd_req_data[52:0]}), 
		      .xnn0_rd_req_valid(xnn0_rd_req_valid),
		      .xnn0_rd_resp_ready(xnn0_rd_resp_ready),
		      .xnn1_rd_req_data	({xnn1_rd_req_verifId[11:0],xnn1_rd_req_data[52:0]}), 
		      .xnn1_rd_req_valid(xnn1_rd_req_valid),
		      .xnn1_rd_resp_ready(xnn1_rd_resp_ready),
		      .xnn2_rd_req_data	({xnn2_rd_req_verifId[11:0],xnn2_rd_req_data[52:0]}), 
		      .xnn2_rd_req_valid(xnn2_rd_req_valid),
		      .xnn2_rd_resp_ready(xnn2_rd_resp_ready),
		      .xnn3_rd_req_data	({xnn3_rd_req_verifId[11:0],xnn3_rd_req_data[52:0]}), 
		      .xnn3_rd_req_valid(xnn3_rd_req_valid),
		      .xnn3_rd_resp_ready(xnn3_rd_resp_ready),
		      .xnn4_rd_req_data	({xnn4_rd_req_verifId[11:0],xnn4_rd_req_data[52:0]}), 
		      .xnn4_rd_req_valid(xnn4_rd_req_valid),
		      .xnn4_rd_resp_ready(xnn4_rd_resp_ready),
		      .xnn0_wr_req_data	({12'd0,xnn0_wr_req_data}), 
		      .xnn0_wr_req_valid(xnn0_wr_req_valid),
		      .xnn0_wr_resp_ready(xnn0_wr_resp_ready),
		      .xnn1_wr_req_data	({12'd1,xnn1_wr_req_data}), 
		      .xnn1_wr_req_valid(xnn1_wr_req_valid),
		      .xnn1_wr_resp_ready(xnn1_wr_resp_ready),
		      .xnn2_wr_req_data	({12'd2,xnn2_wr_req_data}), 
		      .xnn2_wr_req_valid(xnn2_wr_req_valid),
		      .xnn2_wr_resp_ready(xnn2_wr_resp_ready),
		      .xnn3_wr_req_data	({12'd3,xnn3_wr_req_data}), 
		      .xnn3_wr_req_valid(xnn3_wr_req_valid),
		      .xnn3_wr_resp_ready(xnn3_wr_resp_ready),
		      .csr_i_target_MRespAccept(1'b1),		 
		      .xlmc_MAddr	({ls_Add32[9:2],2'b0}),	 
		      .xlmc_MAddrPar	({^ls_Add32[9:8],ls_Add32Par[0]}), 
		      .xlmc_MByteEn	(ls_ByteEn32[3:0]),	 
		      .xlmc_MCmd	(xlmc_MCmd[2:0]),
		      .xlmc_MData	(ls_WData[31:0]),	 
		      .xlmc_MDataPar	(ls_WDataPar32[3:0]),	 
		      .rd_MAddr		(dir_MAddr),		 
		      .rd_MAddrPAR	(dir_MAddr_P),		 
		      .rd_MCmd		(dir_MCmd),		 
		      .wr_MAddr		(diw_MAddr),		 
		      .wr_MAddrPAR	(diw_MAddr_P),		 
		      .wr_MByteEn	(diw_MDataByteEn),	 
		      .wr_MCmd		(diw_MCmd),		 
		      .wr_MData		(diw_MData),		 
		      .wr_MDataPAR	(diw_MData_P),		 
		      .rd_MReqInfo	(dir_MReqInfo_not_connected), 
		      .wr_MReqInfo	(diw_MReqInfo_not_connected), 
		      .ssc0_rd_req_data	({RdHalfVecRequestsConv2SLMC_data_verifId,RdHalfVecRequestsConv2SLMC_data_addr_pty,RdHalfVecRequestsConv2SLMC_data_address,RdHalfVecRequestsConv2SLMC_data_byteEn,RdHalfVecRequestsConv2SLMC_data_wrEn}), 
		      .ssc0_rd_req_valid(RdHalfVecRequestsConv2SLMC_valid), 
		      .ssc0_rd_resp_ready(RdHalfVecDataRspConv2SLMC_ready), 
		      .ssc0_wr_req_data	({WrHalfVecRequestsConv2SLMC_data_verifId,WrHalfVecRequestsConv2SLMC_data_wrData,WrHalfVecRequestsConv2SLMC_data_nonPosted,WrHalfVecRequestsConv2SLMC_data_addr_pty,WrHalfVecRequestsConv2SLMC_data_address,WrHalfVecRequestsConv2SLMC_data_byteEn,WrHalfVecRequestsConv2SLMC_data_wrEn}), 
		      .ssc0_wr_req_valid(WrHalfVecRequestsConv2SLMC_valid), 
		      .ssc0_wr_resp_ready(WrHalfVecNonPostedRspConv2SLMC_ready), 
		      .vmp0_rd_req_data	({rdStrmRequestInitiator_data_verifId,rdStrmRequestInitiator_data_addr_pty,rdStrmRequestInitiator_data_address,rdStrmRequestInitiator_data_byteEn,rdStrmRequestInitiator_data_wrEn}), 
		      .vmp0_rd_req_valid(rdStrmRequestInitiator_valid), 
		      .vmp0_rd_resp_ready(rdStrmResponseTarget_ready), 
		      .vmp0_wr_req_data	({wrStrmRequestInitiator_data_verifId,wrStrmRequestInitiator_data_wrData,wrStrmRequestInitiator_data_nonPosted,wrStrmRequestInitiator_data_addr_pty,wrStrmRequestInitiator_data_address,wrStrmRequestInitiator_data_byteEn,wrStrmRequestInitiator_data_wrEn}), 
		      .vmp0_wr_req_valid(wrStrmRequestInitiator_valid), 
		      .vmp0_wr_resp_ready(wrStrmResponseTarget_ready), 
		      .xpp0_rd_req_data	({12'b0,xpp2spRdReq_data_addr_pty,xpp2spRdReq_data_address,xpp2spRdReq_data_byteEn,xpp2spRdReq_data_wrEn}), 
		      .xpp0_rd_req_valid(xpp2spRdReq_valid),	 
		      .xpp0_rd_resp_ready(sp2xppRdResp_ready),	 
		      .xpp0_wr_req_data	({12'b0,xpp2spWrReq_data_wrDataWithPar,xpp2spWrReq_data_nonPosted,xpp2spWrReq_data_addr_pty,xpp2spWrReq_data_address,xpp2spWrReq_data_byteEn,xpp2spWrReq_data_wrEn}), 
		      .xpp0_wr_req_valid(xpp2spWrReq_valid),	 
		      .xpp0_wr_resp_ready(sp2xppWrResp_ready),	 
		      .sp2xlmc_RDATA	(sp2xlmc_RDATA));	 


















 
			
xnn_actif_regs xnn_actif_regs (
                               .clk (gclk1),
                               .reset_n(reset_n),
                               
			       
			       .xnn_actif_SCmdAccept(actif_lsSCmdAccept), 
			       .xnn_actif_SData	(actif_lsRData), 
			       .xnn_actif_SDataInfo(actif_lsRDataPar), 
			       .xnn_actif_SResp	(actif_lsSResp), 
			       .ie_enable	(af2eh_ie_enable), 
			       .reg_parity_error(xnn2eh_fcr[XNN_ACTIF_FCR]), 
			       .addr_parity_error(xnn2eh_fap[XNN_ACTIF_FAP]), 
			       .data_parity_error(xnn2eh_fdp[XNN_ACTIF_FDP]), 
			       
			       .xnn_actif_MAddr	({ls_Add32[3:2],2'b0}), 
			       .xnn_actif_MReqInfo(ls_Add32Par[0]), 
			       .xnn_actif_MCmd	(xnn_actif_MCmd), 
			       .xnn_actif_MData	(ls_WData[31:0]), 
			       .xnn_actif_MDataInfo(ls_WDataPar[3:0]), 
			       .xnn_actif_MByteEn(ls_ByteEn[3:0]), 
			       .xnn_actif_MRespAccept(1'b1),	 
			       .ie_status	(eh2af_ie_status)); 
   
   wire [2:0] 	   xnn_faults_MCmd;
   wire [1:0]      xnn_faults_SResp;
   
   assign xnn_faults_MCmd = si_frSel ? (si_Wr ? 
   assign fr_siRDataValid = (xnn_faults_SResp == 
   




















   
xnn_faults_regs  FaultRegs (
			    .xnn_faults_SResp          (xnn_faults_SResp),

			    
			    .xnn_faults_SCmdAccept(xnn_faults_SCmdAccept), 
			    .xnn_faults_SData	(fr_siRData[31:0]), 
			    .xnn_faults_SDataInfo(),		 
			    .fault_debug_trigger_dummy_fault(fault_debug_trigger_dummy_fault[5:0]),
			    .fault_debug_clear_all_faults_WrPulse(fault_debug_clear_all_faults_WrPulse),
			    .fdp_enable		(eregs2eh_fdp_enable), 
			    .fap_enable		(eregs2eh_fap_enable), 
			    .mdpe_enable	(eregs2eh_mdpe_enable), 
			    .mape_enable	(eregs2eh_mape_enable), 
			    .fcr_enable		(eregs2eh_fcr_enable), 
			    .reg_parity_error	(xnn2eh_fcr[
			    .addr_parity_error	(xnn2eh_fap[XNN_FAULTS_FAP]), 
			    .data_parity_error	(xnn2eh_fdp[XNN_FAULTS_FDP]), 
			    
			    .clk		(m_clk),	 
			    .reset_n		(m_reset_n),	 
			    .xnn_faults_MAddr	(si_Add[5:0]),	 
			    .xnn_faults_MReqInfo(si_AddPar[0:0]), 
			    .xnn_faults_MCmd	(xnn_faults_MCmd), 
			    .xnn_faults_MData	(si_WData[31:0]), 
			    .xnn_faults_MDataInfo(si_WDataPar[3:0]), 
			    .xnn_faults_MByteEn	(si_Mask[3:0]),	 
			    .xnn_faults_MRespAccept(1'b1),	 
			    .fdp_status		(eh2eregs_fdp_status), 
			    .fap_status		(eh2eregs_fap_status), 
			    .mdpe_status	(eh2eregs_mdpe_status), 
			    .mape_status	(eh2eregs_mape_status), 
			    .fcr_status		(eh2eregs_fcr_status)); 


wire          fcu_Busy;        



xnn_fcu_wrapper xnn_fcu_wrapper (                
				 .fcu_Busy		(fcu_Busy),
  
				 
				 .su_ls_SCmdAccept	(su_ls_SCmdAccept),
				 .su_ls_SResp		(su_ls_SResp[1:0]),
				 .su_ls_SData		(su_ls_SData[63:0]),
				 .su_ls_SDataPar	(su_ls_SDataPar[7:0]),
				 .fcu_su_ls_MCmd	(fcu_su_ls_MCmd[2:0]),
				 .fcu_su_ls_MAddr	(fcu_su_ls_MAddr[31:3]),
				 .fcu_su_ls_MAddrPar	(fcu_su_ls_MAddrPar[3:0]),
				 .fcu_su_ls_MByteEn	(fcu_su_ls_MByteEn[7:0]),
				 .fcu_su_ls_MData	(fcu_su_ls_MData[63:0]),
				 .fcu_su_ls_MDataPar	(fcu_su_ls_MDataPar[7:0]),
				 .fcu_MCmd		(fcu_MCmd[2:0]),
				 .fcu_MAddr		(fcu_MAddr[16:0]),
				 .fcu_MAddr_P		(fcu_MAddr_P[2:0]),
				 .fcu_MDataByteEn	(fcu_MDataByteEn[7:0]),
				 .fcu_MData		(fcu_MData[63:0]),
				 .fcu_MData_P		(fcu_MData_P[7:0]),
				 
				 .reset_n		(reset_n),
				 .gclk1			(gclk1),
				 .su_ls_MCmd		(su_ls_MCmd[2:0]),
				 .su_ls_MAddr		(su_ls_MAddr[31:3]),
				 .su_ls_MAddrPar	(su_ls_MAddrPar[3:0]),
				 .su_ls_MByteEn		(su_ls_MByteEn[7:0]),
				 .su_ls_MData		(su_ls_MData[63:0]),
				 .su_ls_MDataPar	(su_ls_MDataPar[7:0]),
				 .fcu_su_ls_SCmdAccept	(fcu_su_ls_SCmdAccept),
				 .fcu_su_ls_SResp	(fcu_su_ls_SResp[1:0]),
				 .fcu_su_ls_SData	(fcu_su_ls_SData[63:0]),
				 .fcu_su_ls_SDataPar	(fcu_su_ls_SDataPar[7:0]),
				 .fcu_SCmdAccept	(fcu_SCmdAccept),
				 .fcu_SResp		(fcu_SResp[1:0]),
				 .fcu_SData		(fcu_SData[63:0]),
				 .fcu_SData_P		(fcu_SData_P[7:0]));






























XNN_sscMemMux ssc_memMux (
			  .ls_dcSel             (ls_dcSel),
			  .ls_xnncSel           (ls_xnncSel),
			  .ls_xlmcSel           (ls_xlmcSel),
			  .ls_slmcSel           (ls_slmcSel),
			  .ls_spSel             (ls_spSel),
			  .ls_xppSel            (ls_xppSel),
			  .ls_actifSel          (ls_actifSel),
  			  .ls_Wr		(ls_Wr),
			  .ls_Rd		(ls_Rd),

			  
			  .su_ls_SCmdAccept	(fcu_su_ls_SCmdAccept), 
			  .su_ls_SResp		(fcu_su_ls_SResp[1:0]), 
			  .su_ls_SData		(fcu_su_ls_SData[63:0]), 
			  .su_ls_SDataPar	(fcu_su_ls_SDataPar[7:0]), 
			  .ls_siBusy		(ls_siBusy),
			  .ls_siRDataValid	(ls_siRDataValid),
			  .ls_siRData		(ls_siRData[31:0]),
			  .ls_Add		(ls_Add[20:3]),
			  .ls_AddPar		(ls_AddPar[2:0]),
			  .ls_Add32		(ls_Add32[20:2]),
			  .ls_Add32Par		(ls_Add32Par[2:0]),
			  .ls_ByteEn		(ls_ByteEn[7:0]),
			  .ls_ByteEn32		(ls_ByteEn32[3:0]),
			  .ls_WData		(ls_WData[63:0]),
			  .ls_WDataPar		(ls_WDataPar[7:0]),
			  .ls_WDataPar32	(ls_WDataPar32[3:0]),
			  .ls_cfg_src_is_ssc	(ls_cfg_src_is_ssc),
			  .ssc_fifo_overflow	(xnn2eh_ie[SMM_FIFO_OVERFLOW]), 
			  .ssc_umpd		(xnn2eh_ie[SMM_SU_UNMAPPED_ADDRESS]), 
			  .ls_MAddr_par_err	(xnn2eh_fap[SMM_FAP_LS_SU]), 
			  .ls_siAddr_par_err	(xnn2eh_fap[SMM_FAP_LS_SI]), 
			  .ls_siWData_par_err	(xnn2eh_fdp[SMM_FDP_SI]), 
			  
			  .gclk1		(gclk1),
			  .reset_n		(reset_n),
			  .su_ls_MAddr		(fcu_su_ls_MAddr[31:3]), 
			  .su_ls_MAddrPar	(fcu_su_ls_MAddrPar[3:0]), 
			  .su_ls_MCmd		(fcu_su_ls_MCmd[2:0]), 
			  .su_ls_MByteEn	(fcu_su_ls_MByteEn[7:0]), 
			  .su_ls_MData		(fcu_su_ls_MData[63:0]), 
			  .su_ls_MDataPar	(fcu_su_ls_MDataPar[7:0]), 
			  .si_Add		(si_Add[20:2]),
			  .si_AddPar		(si_AddPar[2:0]),
			  .si_Mask		(si_Mask[3:0]),
			  .si_WData		(si_WData[31:0]),
			  .si_WDataPar		(si_WDataPar[3:0]),
			  .si_Wr		(si_Wr),
			  .si_Rd		(si_Rd),
			  .si_lsSel		(si_lsSel),
			  .xnnc_lsRData		(xnnc_lsRData[63:0]),
			  .xnnc_lsRDataPar	(xnnc_lsRDataPar[7:0]),
			  .xnnc_lsSResp		(xnnc2smm_SResp), 
			  .xnnc_lsSCmdAccept	(xnnc2smm_SCmdAccept), 
			  .dc_lsRData		(dc_lsRData[63:0]),
			  .dc_lsRDataPar	(dc_lsRDataPar[7:0]),
			  .dc_lsSResp		(dc_lsSResp[1:0]),
			  .dc_lsSCmdAccept	(dc_lsSCmdAccept),
			  .slmc_lsRData		(csr_i_target_resp_out[73:10]), 
			  .slmc_lsRDataPar	(csr_i_target_resp_out[7:0]), 
			  .slmc_lsSResp		(csr_i_target_resp_out[9:8]), 
			  .slmc_lsSCmdAccept	(csr_i_target_SCmdAccept), 
			  .xlmc_lsRData		(xlmc_SData[31:0]), 
			  .xlmc_lsRDataPar	(xlmc_SDataPar[3:0]), 
			  .xlmc_lsSResp		(xlmc_SResp[1:0]), 
			  .xlmc_lsSCmdAccept	(xlmc_SCmdAccept), 
			  .sp_lsRData		(sp_lsRData[63:0]),
			  .sp_lsRDataPar	(sp_lsRDataPar[7:0]),
			  .sp_lsSResp		(ocp2strm_slave_resp_out_SResp), 
			  .sp_lsSCmdAccept	(ocp2strm_slave_SCmdAccept), 
			  .xpp_lsRData		(xpp2smm_SData), 
			  .xpp_lsRDataPar	(xpp2smm_SDataPAR), 
			  .xpp_lsSResp		(xpp2smm_SResp), 
			  .xpp_lsSCmdAccept	(xpp2smm_SCmdAccept), 
			  .actif_lsRData	(actif_lsRData[31:0]),
			  .actif_lsRDataPar	(actif_lsRDataPar[3:0]),
			  .actif_lsSResp	(actif_lsSResp[1:0]),
			  .actif_lsSCmdAccept	(actif_lsSCmdAccept));

   
















   ssc_OCP2StrmConv_vlwrapper ssc_OCP2StrmConv (

   ssc_OCP2StrmConv ssc_OCP2StrmConv (

				      .clk		(gclk1),
				      .rstn		(reset_n),

				      
				      .ocp2strm_slave_SCmdAccept(ocp2strm_slave_SCmdAccept),
				      .ocp2strm_slave_resp_out_SDataPAR(sp_lsRDataPar[7:0]), 
				      .ocp2strm_slave_resp_out_SResp(ocp2strm_slave_resp_out_SResp[1:0]),
				      .ocp2strm_slave_resp_out_SData(sp_lsRData[63:0]), 
				      .WrHalfVecRequestsConv2SLMC_valid(WrHalfVecRequestsConv2SLMC_valid),
				      .WrHalfVecRequestsConv2SLMC_data_wrEn(WrHalfVecRequestsConv2SLMC_data_wrEn),
				      .WrHalfVecRequestsConv2SLMC_data_byteEn(WrHalfVecRequestsConv2SLMC_data_byteEn[31:0]),
				      .WrHalfVecRequestsConv2SLMC_data_address(WrHalfVecRequestsConv2SLMC_data_address[16:0]),
				      .WrHalfVecRequestsConv2SLMC_data_addr_pty(WrHalfVecRequestsConv2SLMC_data_addr_pty[2:0]),
				      .WrHalfVecRequestsConv2SLMC_data_nonPosted(WrHalfVecRequestsConv2SLMC_data_nonPosted),
				      .WrHalfVecRequestsConv2SLMC_data_wrData(WrHalfVecRequestsConv2SLMC_data_wrData[287:0]),
				      .WrHalfVecRequestsConv2SLMC_data_verifId(WrHalfVecRequestsConv2SLMC_data_verifId[11:0]),
				      .WrHalfVecNonPostedRspConv2SLMC_ready(WrHalfVecNonPostedRspConv2SLMC_ready),
				      .RdHalfVecRequestsConv2SLMC_valid(RdHalfVecRequestsConv2SLMC_valid),
				      .RdHalfVecRequestsConv2SLMC_data_wrEn(RdHalfVecRequestsConv2SLMC_data_wrEn),
				      .RdHalfVecRequestsConv2SLMC_data_byteEn(RdHalfVecRequestsConv2SLMC_data_byteEn[31:0]),
				      .RdHalfVecRequestsConv2SLMC_data_address(RdHalfVecRequestsConv2SLMC_data_address[16:0]),
				      .RdHalfVecRequestsConv2SLMC_data_addr_pty(RdHalfVecRequestsConv2SLMC_data_addr_pty[2:0]),
				      .RdHalfVecRequestsConv2SLMC_data_verifId(RdHalfVecRequestsConv2SLMC_data_verifId[11:0]),
				      .RdHalfVecDataRspConv2SLMC_ready(RdHalfVecDataRspConv2SLMC_ready),
				      
				      .ocp2strm_slave_req_in_MByteEn(ls_ByteEn[7:0]), 
				      .ocp2strm_slave_req_in_MDataPAR(ls_WDataPar[7:0]), 
				      .ocp2strm_slave_req_in_MAddrPAR(ls_AddPar[2:0]), 
				      .ocp2strm_slave_req_in_MReqInfo(12'b0), 
				      .ocp2strm_slave_req_in_MCmd(ocp2strm_slave_req_in_MCmd[2:0]), 
				      .ocp2strm_slave_req_in_MAddr({ls_Add[20:3],3'b0}), 
				      .ocp2strm_slave_req_in_MData(ls_WData[63:0]), 
				      .ocp2strm_slave_req_in_MReset_n(1'b1), 
				      .ocp2strm_slave_req_in_EnableClk(1'b1), 
				      .WrHalfVecRequestsConv2SLMC_ready(WrHalfVecRequestsConv2SLMC_ready),
				      .WrHalfVecNonPostedRspConv2SLMC_valid(WrHalfVecNonPostedRspConv2SLMC_valid),
				      .WrHalfVecNonPostedRspConv2SLMC_data(WrHalfVecNonPostedRspConv2SLMC_data),
				      .RdHalfVecRequestsConv2SLMC_ready(RdHalfVecRequestsConv2SLMC_ready),
				      .RdHalfVecDataRspConv2SLMC_valid(RdHalfVecDataRspConv2SLMC_valid),
				      .RdHalfVecDataRspConv2SLMC_data(RdHalfVecDataRspConv2SLMC_data[287:0]));   



 



  xnn_events xnn_events(
                        
			
			.TSC_events_start(TSC_events_start[1:0]),
			.TSC_events	(TSC_events[1:0]),
			
			.gclk1		(gclk1),
			.reset_n	(reset_n),
			.xpp_busy	(xpp_busy),
			.xnn_exec_complex_done(eventExecComplex), 
			.xnn_exec_complex_start(eventExecComplexStart), 
			.asipRequestIn_valid(asipRequestIn_valid),
			.asipRequestIn_ready(asipRequestIn_ready),
			.asipRequestIn_data(asipRequestIn_data[127:0]));
                                                


   wire [31:0] Timer; 

   wire [4:0] ssc_mfw_faults;
   assign   xnn_fault_mfw_adacc_err = ssc_mfw_faults[4];
   assign   xnn_fault_fwmp_addr_par = ssc_mfw_faults[2];
   assign   xnn_fault_srsp_addr_par=1'b0; 
   always @(posedge m_clk or negedge m_reset_n)
   begin
      if(!m_reset_n)
      begin
        xnn_fault_srsp_data_par <=1'b0;
      end
      else 
      begin
         xnn_fault_srsp_data_par <= ssc_mfw_faults[3] || ssc_mfw_faults[1] || ssc_mfw_faults[0];
      end
   end 

   wire xnnc_cmd_q_busy = ~asipRequestIn_ready;
   wire         xnnx_halt_req_s2;
   sync_2dff_clr m_halt_req_sync(.CP(gclk1), .D(xnnx_halt_req), .RN(reset_n), .Q(xnnx_halt_req_s2));
   wire [13:0] event_done = { ~xnnc_cmd_q_busy,
                             ~fcu_Busy,
                             ~xpp_busy,
                             ~d_ChBusy_decomp,
			     ~clear_sp_busy,
                             ~xnn2asip_ready, 
                             ~d_ChBusy};

parameter [31:0]	SSC_FT_ADDR_MASK = ((1<<24)-1); 
parameter [31:0]	SSC_LS_ADDR_MASK = ((1<<21)-1);













































































SSC6_Wrapper #(
    .CHANNELS(8),                   
    .IMP_IDS(IMP_IDS),
    .EXP_IDS(EXP_IDS),
    .ACC("XNN"),                        
    .IMP_DAF_FIFODEPTH(4),         
    .IMP_WBUF_FIFODEPTH(5),        
    .IMP_WSBUF_FIFODEPTH(6),       
    .EXP_ABUF_FIFODEPTH(2),       
    .EXP_CBUF_FIFODEPTH(5),       
    .EXP_CSBUF_FIFODEPTH(6),
    .EXP_TAB_FIFODEPTH(12),    
    .EXP_DAF_FIFODEPTH(4),   
    .EXP_RBUF_FIFODEPTH(9), 
    .EXP_RSBUF_FIFODEPTH(6),
    .IMP_ABUF_FIFODEPTH(2),
    .TIMEOUT(32'h7FFF_FFFF),

    .SSC_GCR0_INIT(16'h000E),
    .SSC_PM_BASE_ADD(32'h0200_0000),
    .SSC_FT_ADDR_MASK(SSC_FT_ADDR_MASK),
    .SSC_LS_ADDR_MASK(SSC_LS_ADDR_MASK),
    .SSC_LM_SIZE_KB(32),
    .SSC_EXT_BP_EN(0),
    .SSC_NP_WR_FORCE(1'b0),
    .SSC_BLOCK(3),
    .MFW_BYPASS    (0),

    .DEC_SRAMDEPTH     (64)

    .DEC_SRAMDEPTH     (128)

    ) ssc (
           .d_ChBusy                    (d_ChBusy),
           .d_ChBusy_decomp             (d_ChBusy_decomp),
	   .acc_type                    (4'h3),  
	   .ssc_mfw_faults		(ssc_mfw_faults[4:0]),

	   .soc_type                    (4'h1),
	   .acc_has_pending_axi_trans	(axi2streamBusy), 

           .soc_type                    (4'h0),
	   .acc_has_pending_axi_trans	(1'b0),	 

	   .acc_index			({2'b0,acc_index[1:0]}),
	   .cluster_id			({1'b0,cluster_id[2:0]}),
           .Timer(Timer),


	   
	   .gclk_mbist			(gclk_mbist),
	   .reset_n			(reset_n),
	   .gclk0			(gclk0),
	   .gclk1			(gclk1),
	   .dma_int			(xnn2eh_ie[DMA_INT         ]), 
	   .ssc_int			(xnnx_int),		 
	   .d_Int_SAF_AddrParity	(xnn2eh_fap[SSC_FAP_DMA        ]), 
	   .d_Int_SAF_Dataparity	(xnn2eh_fdp[SSC_FDP_DMA        ]), 
	   .d_Int_SAF_ConfigReg		(xnn2eh_fcr[DMA_FCR         ]), 
	   .d_Int_SAF_FunctionFail	(xnn2eh_ie[SSC_IE_DMA          ]), 
	   .de_ARVALID			(de_ARVALID),
	   .de_ARADDR			(de_ARADDR[36:0]),
	   .de_ARUSER			(de_ARUSER[11:0]),
	   .de_ARLEN			(de_ARLEN[7:0]),
	   .de_ARQOS			(de_ARQOS[3:0]),
	   .de_ARID			(de_ARID[5:0]),
	   .de_AWVALID			(de_AWVALID),
	   .de_AWADDR			(de_AWADDR[36:0]),
	   .de_AWUSER			(de_AWUSER[11:0]),
	   .de_AWLEN			(de_AWLEN[7:0]),
	   .de_AWQOS			(de_AWQOS[3:0]),
	   .de_AWID			(de_AWID[5:0]),
	   .de_WVALID			(de_WVALID),
	   .de_WSTRB			(de_WSTRB[31:0]),
	   .de_WDATA			(de_WDATA[255:0]),
	   .de_WPAR			(de_WUSER[31:0]),	 
	   .de_WLAST			(de_WLAST),
	   .de_RREADY			(de_RREADY),
	   .de_BREADY			(de_BREADY),
	   .dir_MAddr			(dir_MAddr),
	   .dir_MAddr_P			(dir_MAddr_P),
	   .dir_MCmd			(dir_MCmd),
	   .diw_MAddr			(diw_MAddr),
	   .diw_MAddr_P			(diw_MAddr_P),
	   .diw_MDataByteEn		(diw_MDataByteEn),
	   .diw_MCmd			(diw_MCmd),
	   .diw_MData			(diw_MData),
	   .diw_MData_P			(diw_MData_P),
	   .dcr_SResp			(dc_lsSResp[1:0]),	 
	   .dcr_SResp_P			(xnn2eh_fdp[DMA_FDP_SRESP]), 
	   .dcr_SData			(dc_lsRData[63:0]),	 
	   .dcr_SData_P			(dc_lsRDataPar[7:0]),	 
	   .dcr_SCmdAccept		(dc_lsSCmdAccept),	 
	   .dsma_A			(dsma_A[7:0]),
	   .dsma_D			(dsma_D[287:0]),
	   .dsma_CSN			(dsma_CSN),
	   .dsma_WEN			(dsma_WEN),
	   .dsmb_A			(dsmb_A[7:0]),
	   .dsmb_D			(dsmb_D[287:0]),
	   .dsmb_CSN			(dsmb_CSN),
	   .dsmb_WEN			(dsmb_WEN),
	   .su_ls_MAddr			(su_ls_MAddr[31:3]),
	   .su_ls_MAddrPar		(su_ls_MAddrPar[3:0]),
	   .su_ls_MCmd			(su_ls_MCmd[2:0]),
	   .su_ls_MByteEn		(su_ls_MByteEn[7:0]),
	   .su_ls_MData			(su_ls_MData[63:0]),
	   .su_ls_MDataPar		(su_ls_MDataPar[7:0]),
	   .ssc_local_DMem_A		(ssc_local_DMem_A[14:3]),
	   .ssc_local_DMem_D		(ssc_local_DMem_D[72:0]),
	   .ssc_local_DMem_M		(ssc_local_DMem_M[72:0]),
	   .ssc_local_DMem_CSN		(ssc_local_DMem_CSN),
	   .ssc_local_DMem_WEN		(ssc_local_DMem_WEN),
	   .su_siBusy			(su_siBusy),
	   .su_siRData			(su_siRData[31:0]),
	   .su_siRDataValid		(su_siRDataValid),
	   .ssc_prog_DMem_A_0		(ssc_prog_DMem_A_0),	 
	   .ssc_prog_DMem_WEN_0		(ssc_prog_DMem_WEN_0),	 
	   .ssc_prog_DMem_D_0		(ssc_prog_DMem_D_0),	 
	   .ssc_prog_DMem_CEN_0		(ssc_prog_DMem_CEN_0),	 
	   .ssc_prog_DMem_BEN_0		(ssc_prog_DMem_BEN_0),	 
	   .ssc_prog_DMem_A_1		(ssc_prog_DMem_A_1),	 
	   .ssc_prog_DMem_WEN_1		(ssc_prog_DMem_WEN_1),	 
	   .ssc_prog_DMem_D_1		(ssc_prog_DMem_D_1),	 
	   .ssc_prog_DMem_CEN_1		(ssc_prog_DMem_CEN_1),	 
	   .ssc_prog_DMem_BEN_1		(ssc_prog_DMem_BEN_1),	 
	   .ssc_prog_DMem_A_2		(ssc_prog_DMem_A_2),	 
	   .ssc_prog_DMem_WEN_2		(ssc_prog_DMem_WEN_2),	 
	   .ssc_prog_DMem_D_2		(ssc_prog_DMem_D_2),	 
	   .ssc_prog_DMem_CEN_2		(ssc_prog_DMem_CEN_2),	 
	   .ssc_prog_DMem_BEN_2		(ssc_prog_DMem_BEN_2),	 
	   .flw_ls_arb_lock		(),			 
	   .cmd_cop			(),			 
	   .cmd_cop_args		(),			 
	   .db_halt_cmd			(),			 
	   .db_step_cmd			(),			 
	   .db_continue_cmd		(),			 
	   .bp_Indices			(),			 
	   .ssc_halt_ack		(xnnx_halt_ack),	 
	   .ssc_div0			(xnn2eh_ie [SSC_IE_DIV0        ]), 
	   .ssc_rd_Error		(xnn2eh_ie [SSC_IE_RD          ]), 
	   .ssc_pse			(xnn2eh_fdp[SSC_FDP_PSE        ]), 
	   .ssc_dse			(xnn2eh_fdp[SSC_FDP_DSE        ]), 
	   .ssc_NaN			(xnn2eh_ie [SSC_IE_NAN         ]), 
	   .ssc_overflow		(xnn2eh_ie [SSC_IE_OVERFLOW    ]), 
	   .ssc_intOverflow		(xnn2eh_ie [SSC_IE_INT_OVERFLOW]), 
	   .ssc_zero			(xnn2eh_ie [SSC_IE_ZERO        ]), 
	   .ssc_misli			(xnn2eh_ie [SSC_IE_MISLI       ]), 
	   .ssc_misld			(xnn2eh_ie [SSC_IE_MISLD       ]), 
	   .ssc_sd_DataPar_err		(xnn2eh_fdp[SSC_FDP_SD         ]), 
	   .ssc_sd_AddrPar_err		(xnn2eh_fap[SSC_FAP_SD         ]), 
	   .ssc_ls_SDataParity_err	(xnn2eh_fdp[SSC_FDP_LS         ]), 
	   .ssc_sd_pmRData_par_err	(xnn2eh_fdp[SSC_FDP_SD_PM      ]), 
	   .ssc_sd_dmRData_par_err	(xnn2eh_fdp[SSC_FDP_SD_DM      ]), 
	   .ssc_sd_rdMuxOH_err		(xnn2eh_ie[SSC_IE_SD_RDMUXOH       ]), 
	   .ssc_bp_halt_req		(),			 
	   .deep_reset_n		(deep_reset_n),
	   .sync_reset_n_deasserted_p	(),			 
	   .db_continue_all_cmd_p	(),			 
	   .ssc_self_reset		(ssc_self_reset),
	   .ssc_fault_axi_active_during_reset(xnn2eh_ie[SSC_IE_AXI_ACTIVE_DURING_RESET]), 
	   .ssc_fault_axi_active_during_sleep(xnn2eh_ie[SSC_IE_AXI_ACTIVE_DURING_SLEEP]), 
	   .pma_ssc_SResp		(fcu_SResp[1:0]),	 
	   .pma_ssc_SData		(fcu_SData[63:0]),	 
	   .pma_ssc_SData_P		(fcu_SData_P[7:0]),	 
	   .pma_ssc_SCmdAccept		(fcu_SCmdAccept),	 
	   .TSC_timestamp		(),			 
	   .SSC6_trusted_mode		(),			 
	   .SSC6_job_start_p		(),			 
	   .dbg_power			(xnn_spare_output[31]),	 
	   .ssc_fault_group_integrity_perr(xnn2eh_ie[SSC_FAULT_GROUP_INTEGRITY_PERR]), 
	   .ssc_fault_group_SRAM_Data_perr(xnn2eh_mdpe[SSC_FAULT_GROUP_SRAM_DATA_PERR]), 
	   .ssc_fault_group_SRAM_Addr_perr(xnn2eh_mape[SSC_FAULT_GROUP_SRAM_ADDR_PERR]), 
	   .ssc_fault_group_DataPath_perr(xnn2eh_fdp[SSC_FAULT_GROUP_DATAPATH_PERR]), 
	   .ssc_fault_group_AddrPath_perr(xnn2eh_fap[SSC_FAULT_GROUP_ADDRPATH_PERR]), 
	   .ssc_fault_group_config_regs_perr(xnn2eh_fcr[SSC_FAULT_GROUP_CONFIG_REGS_PERR]), 
	   
	   .m_reset_n			(m_reset_n),
	   .scan_mode			(scan_mode),
	   .g_bist_mode			(g_bist_mode),
	   .tst_gated_clk0		(tst_gated_clk0),
	   .tst_gated_clk1		(tst_gated_clk1),
	   .m_clk			(m_clk),
	   .ext_halt_req		({xnn_interrupt,xnn_eh_haltReq,xnnx_halt_req_s2}), 
	   .event_done			(event_done[13:0]),
	   .de_ARREADY			(de_ARREADY),
	   .de_AWREADY			(de_AWREADY),
	   .de_WREADY			(de_WREADY),
	   .de_RVALID			(de_RVALID),
	   .de_RRESP			(de_RRESP[1:0]),
	   .de_RDATA			(de_RDATA[255:0]),
	   .de_RPAR			(de_RUSER[33:0]),	 
	   .de_BPAR			(de_BUSER[1:0]),	 
	   .de_RLAST			(de_RLAST),
	   .de_RID			(de_RID[5:0]),
	   .de_BVALID			(de_BVALID),
	   .de_BRESP			(de_BRESP[1:0]),
	   .de_BID			(de_BID[5:0]),
	   .dir_SCmdAccept		(dir_SCmdAccept[7:0]),
	   .dir_SData			(dir_SData),
	   .dir_SData_P			(dir_SData_P),
	   .dir_SResp			(dir_SResp),
	   .diw_SCmdAccept		(diw_SCmdAccept[7:0]),
	   .dcr_MCmd			(dcr_MCmd[2:0]),
	   .dcr_MCmdInfo		(dcr_MCmdInfo),
	   .config_src_is_ssc		(ls_cfg_src_is_ssc),	 
	   .dcr_MAddr			({ls_Add[16:3],3'b0}),	 
	   .dcr_MAddr_P			(ls_AddPar[2:0]),	 
	   .dcr_MDataByteEn		(ls_ByteEn[7:0]),	 
	   .dcr_MData			(ls_WData[63:0]),	 
	   .dcr_MData_P			(ls_WDataPar[7:0]),	 
	   .dcr_MAddr32			({ls_Add32[16:2],2'b00}), 
	   .dcr_MDataByteEn32		(ls_ByteEn32),		 
	   .dcr_MData32_P		(ls_WDataPar32),	 
	   .dcr_MAddr32_P		({ls_Add32[16],ls_Add32Par[1:0]}), 
	   .dsma_Q			(dsma_Q[287:0]),
	   .dsmb_Q			(dsmb_Q[287:0]),
	   .d_AccActive			(~xnn2asip_ready),	 
	   .extra_perf_event		(4'b0),			 
	   .su_ls_SCmdAccept		(su_ls_SCmdAccept),
	   .su_ls_SResp			(su_ls_SResp[1:0]),
	   .su_ls_SData			(su_ls_SData[63:0]),
	   .su_ls_SDataPar		(su_ls_SDataPar[7:0]),
	   .ssc_local_DMem_Q		(ssc_local_DMem_Q[72:0]),
	   .si_suSel			(si_suSel),
	   .si_Wr			(si_Wr),
	   .si_Rd			(si_Rd),
	   .si_Add			(si_Add[20:0]),
	   .si_AddPar			(si_AddPar[2:0]),
	   .si_Mask			(si_Mask[3:0]),
	   .si_WData			(si_WData[31:0]),
	   .si_WDataPar			(si_WDataPar[3:0]),
	   .ssc_prog_DMem_Q_0		(ssc_prog_DMem_Q_0),	 
	   .ssc_prog_DMem_Q_1		(ssc_prog_DMem_Q_1),	 
	   .ssc_prog_DMem_Q_2		(ssc_prog_DMem_Q_2),	 
	   .soc_version			(soc_version[3:0]),
	   .slave_if_idle		(slave_if_idle),
	   .ssc_self_reset_ack		(ssc_self_reset_ack),
	   .pma_ssc_MCmd		(fcu_MCmd[2:0]),	 
	   .pma_ssc_MAddr		(fcu_MAddr[16:0]),	 
	   .pma_ssc_MAddr_P		(fcu_MAddr_P[2:0]),	 
	   .pma_ssc_MDataByteEn		(fcu_MDataByteEn[7:0]),	 
	   .pma_ssc_MData		(fcu_MData[63:0]),	 
	   .pma_ssc_MData_P		(fcu_MData_P[7:0]),	 
	   .TSC_clk			(TSC_slow_clk),		 
	   .TSC_load			(TSC_start),		 
	   .TSC_freeze			(TSC_freeze),		 
	   .TSC_PTP_event		(TSC_PTP_event),	 
	   .TSC_OLB_event		(TSC_OLB_event),	 
	   .TSC_accelerator		(TSC_events),		 
	   .TSC_accelerator_info	(TSC_events_start));	 







































AXI_async_bridge_MasterSide #(
	 
											 
											 .m_sync_clear_done	(dma_m_sync_clear_done), 
											 .ARREADY		(de_ARREADY),	 
											 .RID			(de_RID),	 
											 .RDATA			(de_RDATA),	 
											 .RUSER			(de_RUSER),	 
											 .RRESP			(de_RRESP),	 
											 .RLAST			(de_RLAST),	 
											 .RVALID		(de_RVALID),	 
											 .AWREADY		(de_AWREADY),	 
											 .WREADY		(de_WREADY),	 
											 .BID			(de_BID),	 
											 .BRESP			(de_BRESP),	 
											 .BUSER			(de_BUSER),	 
											 .BVALID		(de_BVALID),	 
											 .AR_wr_ptr		(dma_AR_wr_ptr), 
											 .AR_rd_data		(dma_AR_rd_data), 
											 .R_rd_ptr		(dma_R_rd_ptr),	 
											 .AW_wr_ptr		(dma_AW_wr_ptr), 
											 .AW_rd_data		(dma_AW_rd_data), 
											 .W_wr_ptr		(dma_W_wr_ptr),	 
											 .W_rd_data		(dma_W_rd_data), 
											 .B_rd_ptr		(dma_B_rd_ptr),	 
											 
											 .ACLK			(m_clk),	 
											 .ARESETn		(m_reset_n),	 
											 .sync_clear		(dma_sync_clear), 
											 .ARID			(de_ARID),	 
											 .ARADDR		(de_ARADDR),	 
											 .ARLEN			(de_ARLEN),	 
											 .ARUSER		(de_ARUSER),	 
											 .ARSIZE		(3'b101),	 
											 .ARBURST		(2'b1),		 
											 .ARCACHE		(4'b0),		 
											 .ARPROT		(3'b0),		 
											 .ARQOS			(de_ARQOS),	 
											 .ARVALID		(de_ARVALID),	 
											 .RREADY		(de_RREADY),	 
											 .AWID			(de_AWID),	 
											 .AWADDR		(de_AWADDR),	 
											 .AWLEN			(de_AWLEN),	 
											 .AWUSER		(de_AWUSER),	 
											 .AWSIZE		(3'b101),	 
											 .AWBURST		(2'b1),		 
											 .AWCACHE		(4'b0),		 
											 .AWPROT		(3'b0),		 
											 .AWQOS			(de_AWQOS),	 
											 .AWVALID		(de_AWVALID),	 
											 .WDATA			(de_WDATA),	 
											 .WSTRB			(de_WSTRB),	 
											 .WUSER			(de_WUSER),	 
											 .WLAST			(de_WLAST),	 
											 .WVALID		(de_WVALID),	 
											 .BREADY		(de_BREADY),	 
											 .AR_rd_ptr		(dma_AR_rd_ptr), 
											 .R_wr_ptr		(dma_R_wr_ptr),	 
											 .R_rd_data		(dma_R_rd_data), 
											 .AW_rd_ptr		(dma_AW_rd_ptr), 
											 .W_rd_ptr		(dma_W_rd_ptr),	 
											 .B_wr_ptr		(dma_B_wr_ptr),	 
											 .B_rd_data		(dma_B_rd_data)); 













   Axi2StreamBridge_vlwrapper Axi2StreamBridge (

   Axi2StreamBridge Axi2StreamBridge (

                                      .clk                  (m_clk),
				      .axi2streamBusy	(axi2streamBusy),
 
				      
				      .axi_wr_req_addr_par_err(xnn2eh_fap[VMP2XNN_FAP_WR]), 
				      .axi_rd_req_addr_par_err(xnn2eh_fap[VMP2XNN_FAP_RD]), 
				      .axiSlave_AWREADY	(vmp_axi_AWREADY), 
				      .axiSlave_WREADY	(vmp_axi_WREADY), 
				      .axiSlave_BID	(vmp_axi_BID[5:0]), 
				      .axiSlave_BVALID	(vmp_axi_BVALID), 
				      .axiSlave_BRESP	(vmp_axi_BRESP[1:0]), 
				      .axiSlave_BUSER	(vmp_axi_BUSER[1:0]), 
				      .axiSlave_ARREADY	(vmp_axi_ARREADY), 
				      .axiSlave_RVALID	(vmp_axi_RVALID), 
				      .axiSlave_RID	(vmp_axi_RID[5:0]), 
				      .axiSlave_RDATA	(vmp_axi_RDATA[255:0]), 
				      .axiSlave_RRESP	(vmp_axi_RRESP[1:0]), 
				      .axiSlave_RLAST	(vmp_axi_RLAST), 
				      .axiSlave_RUSER	(vmp_axi_RUSER[33:0]), 
				      .rdStrmRequestInitiator_valid(rdStrmRequestInitiator_valid), 
				      .rdStrmRequestInitiator_data_wrEn(rdStrmRequestInitiator_data_wrEn), 
				      .rdStrmRequestInitiator_data_byteEn(rdStrmRequestInitiator_data_byteEn), 
				      .rdStrmRequestInitiator_data_address(rdStrmRequestInitiator_data_address), 
				      .rdStrmRequestInitiator_data_addr_pty(rdStrmRequestInitiator_data_addr_pty), 
				      .rdStrmRequestInitiator_data_verifId(rdStrmRequestInitiator_data_verifId), 
				      .rdStrmResponseTarget_ready(rdStrmResponseTarget_ready), 
				      .wrStrmRequestInitiator_valid(wrStrmRequestInitiator_valid), 
				      .wrStrmRequestInitiator_data_wrEn(wrStrmRequestInitiator_data_wrEn), 
				      .wrStrmRequestInitiator_data_byteEn(wrStrmRequestInitiator_data_byteEn), 
				      .wrStrmRequestInitiator_data_address(wrStrmRequestInitiator_data_address), 
				      .wrStrmRequestInitiator_data_addr_pty(wrStrmRequestInitiator_data_addr_pty), 
				      .wrStrmRequestInitiator_data_nonPosted(wrStrmRequestInitiator_data_nonPosted), 
				      .wrStrmRequestInitiator_data_wrData(wrStrmRequestInitiator_data_wrData), 
				      .wrStrmRequestInitiator_data_verifId(wrStrmRequestInitiator_data_verifId), 
				      .wrStrmResponseTarget_ready(wrStrmResponseTarget_ready), 
				      
				      .nrst		(m_reset_n),	 
				      .axiSlave_AWVALID	(vmp_axi_AWVALID), 
				      .axiSlave_AWLEN	(vmp_axi_AWLEN[7:0]), 
				      .axiSlave_AWSIZE	(vmp_axi_AWSIZE[2:0]), 
				      .axiSlave_AWBURST	(vmp_axi_AWBURST[1:0]), 
				      .axiSlave_AWID	(vmp_axi_AWID[5:0]), 
				      .axiSlave_AWADDR	(vmp_axi_AWADDR[36:0]), 
				      .axiSlave_AWLOCK	(1'b0),		 
				      .axiSlave_AWCACHE	(vmp_axi_AWCACHE[3:0]), 
				      .axiSlave_AWPROT	(vmp_axi_AWPROT[2:0]), 
				      .axiSlave_AWQOS	(vmp_axi_AWQOS[3:0]), 
				      .axiSlave_AWREGION(4'b0),		 
				      .axiSlave_AWUSER	(vmp_axi_AWUSER[9:0]), 
				      .axiSlave_WVALID	(vmp_axi_WVALID), 
				      .axiSlave_WSTRB	(vmp_axi_WSTRB[31:0]), 
				      .axiSlave_WDATA	(vmp_axi_WDATA[255:0]), 
				      .axiSlave_WLAST	(vmp_axi_WLAST), 
				      .axiSlave_WUSER	(vmp_axi_WUSER[31:0]), 
				      .axiSlave_BREADY	(vmp_axi_BREADY), 
				      .axiSlave_ARVALID	(vmp_axi_ARVALID), 
				      .axiSlave_ARLEN	(vmp_axi_ARLEN[7:0]), 
				      .axiSlave_ARSIZE	(vmp_axi_ARSIZE[2:0]), 
				      .axiSlave_ARBURST	(vmp_axi_ARBURST[1:0]), 
				      .axiSlave_ARID	(vmp_axi_ARID[5:0]), 
				      .axiSlave_ARADDR	(vmp_axi_ARADDR[36:0]), 
				      .axiSlave_ARLOCK	(1'b0),		 
				      .axiSlave_ARCACHE	(vmp_axi_ARCACHE[3:0]), 
				      .axiSlave_ARPROT	(vmp_axi_ARPROT[2:0]), 
				      .axiSlave_ARQOS	(vmp_axi_ARQOS[3:0]), 
				      .axiSlave_ARREGION(4'b0),		 
				      .axiSlave_ARUSER	(vmp_axi_ARUSER[9:0]), 
				      .axiSlave_RREADY	(vmp_axi_RREADY), 
				      .rdStrmRequestInitiator_ready(rdStrmRequestInitiator_ready), 
				      .rdStrmResponseTarget_valid(rdStrmResponseTarget_valid), 
				      .rdStrmResponseTarget_data(rdStrmResponseTarget_data), 
				      .wrStrmRequestInitiator_ready(wrStrmRequestInitiator_ready), 
				      .wrStrmResponseTarget_valid(wrStrmResponseTarget_valid), 
				      .wrStrmResponseTarget_data(wrStrmResponseTarget_data)); 



























   AXI_async_bridge_SlaveSide #(
      
												
												.s_sync_clear_done(vmp2xnn_s_sync_clear_done), 
												.ARID		(vmp_axi_ARID),	 
												.ARADDR		(vmp_axi_ARADDR), 
												.ARLEN		(vmp_axi_ARLEN), 
												.ARUSER		(vmp_axi_ARUSER), 
												.ARSIZE		(vmp_axi_ARSIZE), 
												.ARBURST	(vmp_axi_ARBURST), 
												.ARCACHE	(vmp_axi_ARCACHE), 
												.ARPROT		(vmp_axi_ARPROT), 
												.ARQOS		(vmp_axi_ARQOS), 
												.ARVALID	(vmp_axi_ARVALID), 
												.RREADY		(vmp_axi_RREADY), 
												.AWID		(vmp_axi_AWID),	 
												.AWADDR		(vmp_axi_AWADDR), 
												.AWLEN		(vmp_axi_AWLEN), 
												.AWUSER		(vmp_axi_AWUSER), 
												.AWSIZE		(vmp_axi_AWSIZE), 
												.AWBURST	(vmp_axi_AWBURST), 
												.AWCACHE	(vmp_axi_AWCACHE), 
												.AWPROT		(vmp_axi_AWPROT), 
												.AWQOS		(vmp_axi_AWQOS), 
												.AWVALID	(vmp_axi_AWVALID), 
												.WDATA		(vmp_axi_WDATA), 
												.WSTRB		(vmp_axi_WSTRB), 
												.WUSER		(vmp_axi_WUSER), 
												.WLAST		(vmp_axi_WLAST), 
												.WVALID		(vmp_axi_WVALID), 
												.BREADY		(vmp_axi_BREADY), 
												.AR_rd_ptr	(vmp2xnn_AR_rd_ptr), 
												.R_wr_ptr	(vmp2xnn_R_wr_ptr), 
												.R_rd_data	(vmp2xnn_R_rd_data), 
												.AW_rd_ptr	(vmp2xnn_AW_rd_ptr), 
												.W_rd_ptr	(vmp2xnn_W_rd_ptr), 
												.B_wr_ptr	(vmp2xnn_B_wr_ptr), 
												.B_rd_data	(vmp2xnn_B_rd_data), 
												
												.ACLK		(m_clk),	 
												.ARESETn	(m_reset_n),	 
												.sync_clear	(vmp2xnn_sync_clear), 
												.ARREADY	(vmp_axi_ARREADY), 
												.RID		(vmp_axi_RID),	 
												.RDATA		(vmp_axi_RDATA), 
												.RUSER		(vmp_axi_RUSER), 
												.RRESP		(vmp_axi_RRESP), 
												.RLAST		(vmp_axi_RLAST), 
												.RVALID		(vmp_axi_RVALID), 
												.AWREADY	(vmp_axi_AWREADY), 
												.WREADY		(vmp_axi_WREADY), 
												.BID		(vmp_axi_BID),	 
												.BRESP		(vmp_axi_BRESP), 
												.BUSER		(vmp_axi_BUSER), 
												.BVALID		(vmp_axi_BVALID), 
												.AR_wr_ptr	(vmp2xnn_AR_wr_ptr), 
												.AR_rd_data	(vmp2xnn_AR_rd_data), 
												.R_rd_ptr	(vmp2xnn_R_rd_ptr), 
												.AW_wr_ptr	(vmp2xnn_AW_wr_ptr), 
												.AW_rd_data	(vmp2xnn_AW_rd_data), 
												.W_wr_ptr	(vmp2xnn_W_wr_ptr), 
												.W_rd_data	(vmp2xnn_W_rd_data), 
												.B_rd_ptr	(vmp2xnn_B_rd_ptr)); 

										









OCP_sp_async_bridge_SlaveSide #(
											  
											  
											  .s_sync_clear_done	(xnnx_sp_s_sync_clear_done), 
											  .MCmd			(xnnx_sp_MCmd),	 
											  .MCmdInfo		(xnnx_sp_MCmdInfo), 
											  .MAddr		(xnnx_sp_MAddr), 
											  .MReqInfo		(xnnx_sp_MReqInfo), 
											  .MData		(xnnx_sp_MData), 
											  .MByteEn		(xnnx_sp_MByteEn), 
											  .MDataInfo		(xnnx_sp_MDataInfo), 
											  .MRespAccept		(xnnx_sp_MRespAccept), 
											  .OCC_rd_ptr		(OCC_rd_ptr),	 
											  .OCR_wr_ptr		(OCR_wr_ptr),	 
											  .OCR_rd_data		(OCR_rd_data),	 
											  
											  .Clk			(m_clk),	 
											  .Reset_n		(m_reset_n),	 
											  .sync_clear		(xnnx_sp_sync_clear), 
											  .SCmdAccept		(xnnx_sp_SCmdAccept), 
											  .SResp		(xnnx_sp_SResp), 
											  .SRespInfo		(xnnx_sp_SRespInfo), 
											  .SData		(xnnx_sp_SData), 
											  .SDataInfo		(xnnx_sp_SDataInfo), 
											  .OCC_wr_ptr		(OCC_wr_ptr),	 
											  .OCC_rd_data		(OCC_rd_data),	 
											  .OCR_rd_ptr		(OCR_rd_ptr));	 





xnn_mem_module	xnn_mem_module (
                                .rf1p_rtsel_2b10 (RTSEL_1prf),
                                .rf1p_wtsel_2b01 (WTSEL_1prf),

                                .hs_rtsel_2b10   (RTSEL_hssp),
                                .hs_wtsel_2b01   (WTSEL_hssp),

                                .hs_rtsel_2b10   (RTSEL_hdsp),
                                .hs_wtsel_2b01   (WTSEL_hdsp),


                                .vl_proc_u_sms_proc_xnn_par_algo_mode(xnn_spare_input[0]),
                                .vl_proc_u_sms_proc_xnn_par_algo_sel(xnn_spare_input[2:1]),


				
				.sp2xlmc_RDATA	(sp2xlmc_RDATA), 
				.dsma_Q		(dsma_Q[287:0]),
				.dsmb_Q		(dsmb_Q[287:0]),
				.ssc_local_DMem_Q(ssc_local_DMem_Q[72:0]), 
				.ssc_prog_DMem_Q_0(ssc_prog_DMem_Q_0),
				.ssc_prog_DMem_Q_1(ssc_prog_DMem_Q_1),
				.ssc_prog_DMem_Q_2(ssc_prog_DMem_Q_2),
				.Wdata0_Q0	(Wdata0_Q0[255:0]),
				.Wdata1_Q0	(Wdata1_Q0[255:0]),
				.blocks_0_Xcache_Data_Q0(blocks_0_Xcache_Data_Q0[255:0]),
				.blocks_1_Xcache_Data_Q0(blocks_1_Xcache_Data_Q0[255:0]),
				.blocks_2_Xcache_Data_Q0(blocks_2_Xcache_Data_Q0[255:0]),
				.blocks_3_Xcache_Data_Q0(blocks_3_Xcache_Data_Q0[255:0]),
				.lbiststatus1	(lbiststatus1),
				.lbiststatus0	(lbiststatus0),
				.lbistmisr	(lbistmisr[127:0]),
				.vl_srv_u_sms_sub_server_xnn_WSO(vl_srv_u_sms_sub_server_xnn_WSO),
				.vl_srv_u_sms_sub_server_xnn_sfp_fail(vl_srv_u_sms_sub_server_xnn_sfp_fail),
				.vl_srv_u_sms_sub_server_xnn_sfp_ready(vl_srv_u_sms_sub_server_xnn_sfp_ready),
				
				.gclk0		(gclk0),
				.gclk_mbist	(gclk_mbist),
				.xlmc2sp_ADDR	(xlmc2sp_ADDR),	 
				.xlmc2sp_BITEN	(xlmc2sp_BITEN), 
				.xlmc2sp_CS	(xlmc2sp_CS),	 
				.xlmc2sp_WDATA	(xlmc2sp_WDATA), 
				.xlmc2sp_WE	(xlmc2sp_WE),	 
				.dsma_A		(dsma_A[7:0]),
				.dsma_D		(dsma_D[287:0]),
				.dsma_CSN	(dsma_CSN),
				.dsma_WEN	(dsma_WEN),
				.dsmb_A		(dsmb_A[7:0]),
				.dsmb_D		(dsmb_D[287:0]),
				.dsmb_CSN	(dsmb_CSN),
				.dsmb_WEN	(dsmb_WEN),
				.ssc_local_DMem_A(ssc_local_DMem_A[14:3]), 
				.ssc_local_DMem_CSN(ssc_local_DMem_CSN), 
				.ssc_local_DMem_D(ssc_local_DMem_D[72:0]), 
				.ssc_local_DMem_M(ssc_local_DMem_M[72:0]), 
				.ssc_local_DMem_WEN(ssc_local_DMem_WEN), 
				.ssc_prog_DMem_A_0(ssc_prog_DMem_A_0),
				.ssc_prog_DMem_CEN_0(ssc_prog_DMem_CEN_0),
				.ssc_prog_DMem_D_0(ssc_prog_DMem_D_0),
				.ssc_prog_DMem_BEN_0(ssc_prog_DMem_BEN_0),
				.ssc_prog_DMem_WEN_0(ssc_prog_DMem_WEN_0),
				.ssc_prog_DMem_A_1(ssc_prog_DMem_A_1),
				.ssc_prog_DMem_CEN_1(ssc_prog_DMem_CEN_1),
				.ssc_prog_DMem_D_1(ssc_prog_DMem_D_1),
				.ssc_prog_DMem_BEN_1(ssc_prog_DMem_BEN_1),
				.ssc_prog_DMem_WEN_1(ssc_prog_DMem_WEN_1),
				.ssc_prog_DMem_A_2(ssc_prog_DMem_A_2),
				.ssc_prog_DMem_CEN_2(ssc_prog_DMem_CEN_2),
				.ssc_prog_DMem_D_2(ssc_prog_DMem_D_2),
				.ssc_prog_DMem_BEN_2(ssc_prog_DMem_BEN_2),
				.ssc_prog_DMem_WEN_2(ssc_prog_DMem_WEN_2),
				.Wdata0_A0	(Wdata0_A0[6:0]),
				.Wdata0_CE0	(Wdata0_CE0),
				.Wdata0_D0	(Wdata0_D0[255:0]),
				.Wdata0_WE0	(Wdata0_WE0),
				.Wdata1_A0	(Wdata1_A0[6:0]),
				.Wdata1_CE0	(Wdata1_CE0),
				.Wdata1_D0	(Wdata1_D0[255:0]),
				.Wdata1_WE0	(Wdata1_WE0),
				.blocks_0_Xcache_Data_A0(blocks_0_Xcache_Data_A0[5:0]),
				.blocks_0_Xcache_Data_CE0(blocks_0_Xcache_Data_CE0),
				.blocks_0_Xcache_Data_D0(blocks_0_Xcache_Data_D0[255:0]),
				.blocks_0_Xcache_Data_WE0(blocks_0_Xcache_Data_WE0),
				.blocks_1_Xcache_Data_A0(blocks_1_Xcache_Data_A0[5:0]),
				.blocks_1_Xcache_Data_CE0(blocks_1_Xcache_Data_CE0),
				.blocks_1_Xcache_Data_D0(blocks_1_Xcache_Data_D0[255:0]),
				.blocks_1_Xcache_Data_WE0(blocks_1_Xcache_Data_WE0),
				.blocks_2_Xcache_Data_A0(blocks_2_Xcache_Data_A0[5:0]),
				.blocks_2_Xcache_Data_CE0(blocks_2_Xcache_Data_CE0),
				.blocks_2_Xcache_Data_D0(blocks_2_Xcache_Data_D0[255:0]),
				.blocks_2_Xcache_Data_WE0(blocks_2_Xcache_Data_WE0),
				.blocks_3_Xcache_Data_A0(blocks_3_Xcache_Data_A0[5:0]),
				.blocks_3_Xcache_Data_CE0(blocks_3_Xcache_Data_CE0),
				.blocks_3_Xcache_Data_D0(blocks_3_Xcache_Data_D0[255:0]),
				.blocks_3_Xcache_Data_WE0(blocks_3_Xcache_Data_WE0),
				.slow_clk	(slow_clk),
				.lbistpattcnt	(lbistpattcnt[15:0]),
				.lbistshiftlength(lbistshiftlength[7:0]),
				.lbistseed	(lbistseed[127:0]),
				.lbistsignature	(lbistsignature[127:0]),
				.lbisten	(lbisten),
				.lbiststart	(lbiststart),
				.lbisttestmode1	(lbisttestmode1),
				.lbisttestmode0	(lbisttestmode0),
				.lbistbinenable	(lbistbinenable),
				.lbistbistoponfail(lbistbistoponfail),
				.lbistlowpower	(lbistlowpower),
				.dm0		(dm0),
				.dm1		(dm1),
				.dm2		(dm2),
				.safe_rr	(safe_rr),
				.vl_srv_u_sms_sub_server_xnn_WRCK(vl_srv_u_sms_sub_server_xnn_WRCK),
				.vl_srv_u_sms_sub_server_xnn_WRSTN(vl_srv_u_sms_sub_server_xnn_WRSTN),
				.vl_srv_u_sms_sub_server_xnn_WSI(vl_srv_u_sms_sub_server_xnn_WSI),
				.vl_srv_u_sms_sub_server_xnn_SelectWIR(vl_srv_u_sms_sub_server_xnn_SelectWIR),
				.vl_srv_u_sms_sub_server_xnn_CaptureWR(vl_srv_u_sms_sub_server_xnn_CaptureWR),
				.vl_srv_u_sms_sub_server_xnn_ShiftWR(vl_srv_u_sms_sub_server_xnn_ShiftWR),
				.vl_srv_u_sms_sub_server_xnn_UpdateWR(vl_srv_u_sms_sub_server_xnn_UpdateWR),
				.vl_srv_u_sms_sub_server_xnn_ring_bypass(vl_srv_u_sms_sub_server_xnn_ring_bypass[5:0]),
				.vl_srv_u_sms_sub_server_xnn_sfp_dft_mode(vl_srv_u_sms_sub_server_xnn_sfp_dft_mode),
				.vl_srv_u_sms_sub_server_xnn_sys_rst_n(vl_srv_u_sms_sub_server_xnn_sys_rst_n),
				.vl_srv_u_sms_sub_server_xnn_smart(vl_srv_u_sms_sub_server_xnn_smart),
				.vl_srv_u_sms_sub_server_xnn_fast_mode(vl_srv_u_sms_sub_server_xnn_fast_mode),
				.vl_srv_u_sms_sub_server_xnn_bist_run(vl_srv_u_sms_sub_server_xnn_bist_run),
				.vl_srv_u_sms_sub_server_xnn_bisr_run(vl_srv_u_sms_sub_server_xnn_bisr_run));
					
endmodule





