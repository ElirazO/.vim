









































module Snir_phy_top
  (
   
   scan_enable,
   scan_mode,
   sys_reset_n,
   sys_clk,
   ref_clk,
   rcv_clk_scan,
   trn_clk_scan,
 
  
   comp_en,
   sprdr_en,
   comp_clk,
   mask_en,
   edt_channels_in,
   edt_channels_out,
   
   
   
   
   

   
   dsp_rif_add_bus,
   dsp_rif_byte_en,
   dsp_rif_wr, 
   dsp_rif_rd, 
   dsp_rif_data_wr,
   dsp_rif_data_rd,
   dsp_rif_ack,
  
   
   link_rx_tokin_valid,
   link_rx_tokin_data,
  
   
   link_tx_tokout_ready,
   link_tx_tokout_valid,
   link_tx_tokout_data,

   
   link_aux_tokout_data,
   link_aux_tokout_ready,
  
   
   link_aux_tokin_data,
   link_aux_tokin_valid,	
   link_aux_tokin_ready,              
  
  
   
   Dan_retreq_data,
   Dan_pcs_retr_req,
   Dan_pcs_retr_req_rdy,
  
  
   
   
   
   
   

   
   ref25M_sel,
  
   
   snir_afe_if_addr_bus,
   snir_afe_if_data_bus_wr,
   snir_afe_if_bus_wr,
   snir_afe_if_byte_en,
   snir_afe_if_bus_rd,
   snir_afe_if_bus_ack,
   snir_afe_if_data_bus_rd,

   
   cpu_snir_afe_if_ram_bus_add,
   cpu_snir_afe_if_ram_bus_wr,
   cpu_snir_afe_if_ram_bus_rd,
   cpu_snir_afe_if_ram_bus_ack,
   cpu_snir_afe_if_ram_data_bus_wr,
   cpu_snir_afe_if_ram_bus_data_rd,
   cpu_snir_afe_if_ram_byte_en,
  
   hdphy_0_rxadc_dataclk,
   hdphy_0_rxadc_data,
  
   hdphy_1_rxadc_dataclk,
   hdphy_1_rxadc_data,
  
   hdphy_2_rxadc_dataclk,
   hdphy_2_rxadc_data,
  
   hdphy_3_rxadc_dataclk,
   hdphy_3_rxadc_data,

   
   hdphy_0_txdac_dataclk,
   hdphy_0_txdac_data,
   hdphy_1_txdac_dataclk,
   hdphy_1_txdac_data,
   hdphy_2_txdac_dataclk,
   hdphy_2_txdac_data,
   hdphy_3_txdac_dataclk,
   hdphy_3_txdac_data,   

   
   hdphy_0_rxadc_pi_inc,
   hdphy_0_rxadc_pi_dec,
   hdphy_1_rxadc_pi_inc,
   hdphy_1_rxadc_pi_dec,
   hdphy_2_rxadc_pi_inc,
   hdphy_2_rxadc_pi_dec,
   hdphy_3_rxadc_pi_inc,
   hdphy_3_rxadc_pi_dec,
  
   hdphy_cm_rxadc_pi_inc,
   hdphy_cm_rxadc_pi_dec,
  
   hdphy_0_txdac_pi_inc,
   hdphy_0_txdac_pi_dec,
   hdphy_1_txdac_pi_inc,
   hdphy_1_txdac_pi_dec,
   hdphy_2_txdac_pi_inc,
   hdphy_2_txdac_pi_dec,
   hdphy_3_txdac_pi_inc,
   hdphy_3_txdac_pi_dec,
  
   hdphy_0_cndac_pi_inc,
   hdphy_0_cndac_pi_dec,
   hdphy_1_cndac_pi_inc,
   hdphy_1_cndac_pi_dec,
   hdphy_2_cndac_pi_inc,
   hdphy_2_cndac_pi_dec,
   hdphy_3_cndac_pi_inc,
   hdphy_3_cndac_pi_dec,
  
  
   squelch_0_in,
   squelch_1_in,
   squelch_2_in,
   squelch_3_in,
  
   
   hdphy_0_reset,
   hdphy_1_reset,
   hdphy_2_reset,
   hdphy_3_reset,
   hdphy_cm_reset,
   hdphy_cm_reffreq,
   hdphy_0_bias_en,
   hdphy_0_tx_cmnsel,
   hdphy_1_bias_en,
   hdphy_1_tx_cmnsel,
   hdphy_2_bias_en,
   hdphy_2_tx_cmnsel,
   hdphy_3_bias_en,
   hdphy_3_tx_cmnsel,
   hdphy_cm_bias_en,
   hdphy_cm_xosc_stable,
   hdphy_0_rxadc_reset,
   hdphy_0_pi_biastrim,
   hdphy_0_tx_cmnmodeamp_en,
   hdphy_1_rxadc_reset,
   hdphy_1_pi_biastrim,
   hdphy_1_tx_cmnmodeamp_en,
   hdphy_2_rxadc_reset,
   hdphy_2_pi_biastrim,
   hdphy_2_tx_cmnmodeamp_en,
   hdphy_3_rxadc_reset,
   hdphy_3_pi_biastrim,
   hdphy_3_tx_cmnmodeamp_en,
   hdphy_cm_rxadc_reset,
   hdphy_cm_pi_biastrim,
   hdphy_cm_rccal_compout,
   hdphy_0_clkbuf_en,
   hdphy_0_tx_cn_en,
   hdphy_0_tx_rtrim,
   hdphy_1_clkbuf_en,
   hdphy_1_tx_cn_en,
   hdphy_1_tx_rtrim,
   hdphy_2_clkbuf_en,
   hdphy_2_tx_cn_en,
   hdphy_2_tx_rtrim,
   hdphy_3_clkbuf_en,
   hdphy_3_tx_cn_en,
   hdphy_3_tx_rtrim,
   hdphy_cm_rccal_done,
   hdphy_0_txdac_clksel,
   hdphy_0_tx_en,
   hdphy_1_txdac_clksel,
   hdphy_1_tx_en,
   hdphy_2_txdac_clksel,
   hdphy_2_tx_en,
   hdphy_3_txdac_clksel,
   hdphy_3_tx_en,
   hdphy_0_rxadc_biastrim,
   hdphy_0_hyb_repincapvcm,
   hdphy_0_tx_standby,
   hdphy_1_rxadc_biastrim,
   hdphy_1_hyb_repincapvcm,
   hdphy_1_tx_standby,
   hdphy_2_rxadc_biastrim,
   hdphy_2_hyb_repincapvcm,
   hdphy_2_tx_standby,
   hdphy_3_rxadc_biastrim,
   hdphy_3_hyb_repincapvcm,
   hdphy_3_tx_standby,
   hdphy_cm_rxadc_biastrim,
   hdphy_cm_hyb_repincapvcm,
   hdphy_cm_pll_altrefclksel,
   hdphy_0_rxadc_clksel,
   hdphy_0_lpf_amphighbw,
   hdphy_0_txdac_datamuxsel,
   hdphy_1_rxadc_clksel,
   hdphy_1_lpf_amphighbw,
   hdphy_1_txdac_datamuxsel,
   hdphy_2_rxadc_clksel,
   hdphy_2_lpf_amphighbw,
   hdphy_2_txdac_datamuxsel,
   hdphy_3_rxadc_clksel,
   hdphy_3_lpf_amphighbw,
   hdphy_3_txdac_datamuxsel,
   hdphy_cm_rxadc_clksel,
   hdphy_cm_lpf_amphighbw,
   hdphy_cm_pll_bgen,
   hdphy_cm_pll_bypass,
   hdphy_cm_pll_clk3div,
   hdphy_0_rxadc_datamuxsel,
   hdphy_0_lpf_bandsel,
   hdphy_1_rxadc_datamuxsel,
   hdphy_1_lpf_bandsel,
   hdphy_2_rxadc_datamuxsel,
   hdphy_2_lpf_bandsel,
   hdphy_3_rxadc_datamuxsel,
   hdphy_3_lpf_bandsel,
   hdphy_cm_rxadc_datamuxsel,
   hdphy_cm_lpf_bandsel,
   hdphy_0_rxadc_f2isel,
   hdphy_0_cnpi_phase0,
   hdphy_1_rxadc_f2isel,
   hdphy_1_cnpi_phase0,
   hdphy_2_rxadc_f2isel,
   hdphy_2_cnpi_phase0,
   hdphy_3_rxadc_f2isel,
   hdphy_3_cnpi_phase0,
   hdphy_cm_rxadc_f2isel,
   hdphy_cm_pll_vcocalbyp,
   hdphy_0_tx_offset,
   hdphy_0_cnpi_caldone,
   hdphy_1_tx_offset,
   hdphy_1_cnpi_caldone,
   hdphy_2_tx_offset,
   hdphy_2_cnpi_caldone,
   hdphy_3_tx_offset,
   hdphy_3_cnpi_caldone,
   hdphy_cm_pll_cpgain,
   hdphy_cm_pll_vcocalstart,
   hdphy_0_hyb_repincapcors,
   hdphy_1_hyb_repincapcors,
   hdphy_2_hyb_repincapcors,
   hdphy_3_hyb_repincapcors,
   hdphy_cm_hyb_repincapcors,
   hdphy_cm_pll_en,
   hdphy_0_txdac_gain,
   hdphy_1_txdac_gain,
   hdphy_2_txdac_gain,
   hdphy_3_txdac_gain,
   hdphy_0_rxadc_offsetbw,
   hdphy_0_lpf_bwtrimcap,
   hdphy_0_txdac_en,
   hdphy_1_rxadc_offsetbw,
   hdphy_1_lpf_bwtrimcap,
   hdphy_1_txdac_en,
   hdphy_2_rxadc_offsetbw,
   hdphy_2_lpf_bwtrimcap,
   hdphy_2_txdac_en,
   hdphy_3_rxadc_offsetbw,
   hdphy_3_lpf_bwtrimcap,
   hdphy_3_txdac_en,
   hdphy_cm_rxadc_offsetbw,
   hdphy_cm_lpf_bwtrimcap,
   hdphy_0_rxadc_offsetbyp,
   hdphy_0_lpf_bypen,
   hdphy_0_txdac_stby,
   hdphy_1_rxadc_offsetbyp,
   hdphy_1_lpf_bypen,
   hdphy_1_txdac_stby,
   hdphy_2_rxadc_offsetbyp,
   hdphy_2_lpf_bypen,
   hdphy_2_txdac_stby,
   hdphy_3_rxadc_offsetbyp,
   hdphy_3_lpf_bypen,
   hdphy_3_txdac_stby,
   hdphy_cm_rxadc_offsetbyp,
   hdphy_cm_lpf_bypen,
   hdphy_0_rxadc_offsethold,
   hdphy_0_lpf_en,
   hdphy_0_hyb_repincapfine,
   hdphy_0_txdac_clkrcven,
   hdphy_0_tx_cn_offset,
   hdphy_0_cnpi_calcode,
   hdphy_1_rxadc_offsethold,
   hdphy_1_lpf_en,
   hdphy_1_hyb_repincapfine,
   hdphy_1_txdac_clkrcven,
   hdphy_1_tx_cn_offset,
   hdphy_1_cnpi_calcode,
   hdphy_2_rxadc_offsethold,
   hdphy_2_lpf_en,
   hdphy_2_hyb_repincapfine,
   hdphy_2_txdac_clkrcven,
   hdphy_2_tx_cn_offset,
   hdphy_2_cnpi_calcode,
   hdphy_3_rxadc_offsethold,
   hdphy_3_lpf_en,
   hdphy_3_hyb_repincapfine,
   hdphy_3_txdac_clkrcven,
   hdphy_3_tx_cn_offset,
   hdphy_3_cnpi_calcode,
   hdphy_cm_rxadc_offsethold,
   hdphy_cm_lpf_en,
   hdphy_cm_hyb_repincapfine,
   hdphy_cm_pll_vcobandset,
   hdphy_cm_pll_clk4div,
   hdphy_cm_rccal_delay,
   hdphy_0_rxadc_polarity,
   hdphy_0_tx_rep_en,
   hdphy_1_rxadc_polarity,
   hdphy_1_tx_rep_en,
   hdphy_2_rxadc_polarity,
   hdphy_2_tx_rep_en,
   hdphy_3_rxadc_polarity,
   hdphy_3_tx_rep_en,
   hdphy_cm_rxadc_polarity,
   hdphy_cm_pll_frlocked,
   hdphy_0_hyb_amphighbw,
   hdphy_0_rxpi_calstart,
   hdphy_0_txpi_calstart,
   hdphy_0_cnpi_calstart,
   hdphy_0_txpi_phase0,
   hdphy_1_hyb_amphighbw,
   hdphy_1_rxpi_calstart,
   hdphy_1_txpi_calstart,
   hdphy_1_cnpi_calstart,
   hdphy_1_txpi_phase0,
   hdphy_2_hyb_amphighbw,
   hdphy_2_rxpi_calstart,
   hdphy_2_txpi_calstart,
   hdphy_2_cnpi_calstart,
   hdphy_2_txpi_phase0,
   hdphy_3_hyb_amphighbw,
   hdphy_3_rxpi_calstart,
   hdphy_3_txpi_calstart,
   hdphy_3_cnpi_calstart,
   hdphy_3_txpi_phase0,
   hdphy_cm_hyb_amphighbw,
   hdphy_cm_rxpi_calstart,
   hdphy_cm_pll_phlocked,
   hdphy_0_rxadc_refsel,
   hdphy_0_hyb_en,
   hdphy_0_rxpi_calovren,
   hdphy_0_txpi_calovren,
   hdphy_0_cnpi_calovren,
   hdphy_0_txpi_caldone,
   hdphy_1_rxadc_refsel,
   hdphy_1_hyb_en,
   hdphy_1_rxpi_calovren,
   hdphy_1_txpi_calovren,
   hdphy_1_cnpi_calovren,
   hdphy_1_txpi_caldone,
   hdphy_2_rxadc_refsel,
   hdphy_2_hyb_en,
   hdphy_2_rxpi_calovren,
   hdphy_2_txpi_calovren,
   hdphy_2_cnpi_calovren,
   hdphy_2_txpi_caldone,
   hdphy_3_rxadc_refsel,
   hdphy_3_hyb_en,
   hdphy_3_rxpi_calovren,
   hdphy_3_txpi_calovren,
   hdphy_3_cnpi_calovren,
   hdphy_3_txpi_caldone,
   hdphy_cm_rxadc_refsel,
   hdphy_cm_hyb_en,
   hdphy_cm_rxpi_calovren,
   hdphy_cm_pll_vcocaldone,
   hdphy_cm_rccal_start,
   hdphy_cm_pll_fbdiv,
   hdphy_cm_pll_clk5div,
   hdphy_0_cndac_clksel,
   hdphy_1_cndac_clksel,
   hdphy_2_cndac_clksel,
   hdphy_3_cndac_clksel,
   hdphy_cm_pll_filtersel,
   hdphy_0_rxadc_shintrim,
   hdphy_0_hyb_rxincapvcm,
   hdphy_1_rxadc_shintrim,
   hdphy_1_hyb_rxincapvcm,
   hdphy_2_rxadc_shintrim,
   hdphy_2_hyb_rxincapvcm,
   hdphy_3_rxadc_shintrim,
   hdphy_3_hyb_rxincapvcm,
   hdphy_cm_rxadc_shintrim,
   hdphy_cm_hyb_rxincapvcm,
   hdphy_cm_pll_openloop,
   hdphy_0_hyb_fbcap,
   hdphy_0_cndac_datamuxsel,
   hdphy_0_hdsbi_fcsel,
   hdphy_1_hyb_fbcap,
   hdphy_1_cndac_datamuxsel,
   hdphy_1_hdsbi_fcsel,
   hdphy_2_hyb_fbcap,
   hdphy_2_cndac_datamuxsel,
   hdphy_2_hdsbi_fcsel,
   hdphy_3_hyb_fbcap,
   hdphy_3_cndac_datamuxsel,
   hdphy_3_hdsbi_fcsel,
   hdphy_cm_hyb_fbcap,
   hdphy_cm_pll_refclkdiv2,
   hdphy_0_hyb_fbcap2x,
   hdphy_0_rxpi_calovr,
   hdphy_0_txpi_calovr,
   hdphy_0_cnpi_calovr,
   hdphy_0_tx_rep_ctrim,
   hdphy_0_hdsbi_bypass,
   hdphy_0_txpi_calcode,
   hdphy_1_hyb_fbcap2x,
   hdphy_1_rxpi_calovr,
   hdphy_1_txpi_calovr,
   hdphy_1_cnpi_calovr,
   hdphy_1_tx_rep_ctrim,
   hdphy_1_hdsbi_bypass,
   hdphy_1_txpi_calcode,
   hdphy_2_hyb_fbcap2x,
   hdphy_2_rxpi_calovr,
   hdphy_2_txpi_calovr,
   hdphy_2_cnpi_calovr,
   hdphy_2_tx_rep_ctrim,
   hdphy_2_hdsbi_bypass,
   hdphy_2_txpi_calcode,
   hdphy_3_hyb_fbcap2x,
   hdphy_3_rxpi_calovr,
   hdphy_3_txpi_calovr,
   hdphy_3_cnpi_calovr,
   hdphy_3_tx_rep_ctrim,
   hdphy_3_hdsbi_bypass,
   hdphy_3_txpi_calcode,
   hdphy_cm_hyb_fbcap2x,
   hdphy_cm_rxpi_calovr,
   hdphy_cm_rccal_rtrim,
   hdphy_cm_pll_stby,
   hdphy_cm_pll_clk6div,
   hdphy_cm_pll_vcocalband,
   hdphy_0_rxadc_shouttrim,
   hdphy_0_tx_swingboost,
   hdphy_1_rxadc_shouttrim,
   hdphy_1_tx_swingboost,
   hdphy_2_rxadc_shouttrim,
   hdphy_2_tx_swingboost,
   hdphy_3_rxadc_shouttrim,
   hdphy_3_tx_swingboost,
   hdphy_cm_rxadc_shouttrim,
   hdphy_cm_l_refclk_cmlen,
   hdphy_cm_pll_termen,
   hdphy_cm_atbchan,
   hdphy_0_rxadc_termen,
   hdphy_0_rxpi_bypass,
   hdphy_0_txpi_bypass,
   hdphy_0_cnpi_bypass,
   hdphy_0_tx_swingboostpp,
   hdphy_0_rxpi_phase0,
   hdphy_1_rxadc_termen,
   hdphy_1_rxpi_bypass,
   hdphy_1_txpi_bypass,
   hdphy_1_cnpi_bypass,
   hdphy_1_tx_swingboostpp,
   hdphy_1_rxpi_phase0,
   hdphy_2_rxadc_termen,
   hdphy_2_rxpi_bypass,
   hdphy_2_txpi_bypass,
   hdphy_2_cnpi_bypass,
   hdphy_2_tx_swingboostpp,
   hdphy_2_rxpi_phase0,
   hdphy_3_rxadc_termen,
   hdphy_3_rxpi_bypass,
   hdphy_3_txpi_bypass,
   hdphy_3_cnpi_bypass,
   hdphy_3_tx_swingboostpp,
   hdphy_3_rxpi_phase0,
   hdphy_cm_rxadc_termen,
   hdphy_cm_rxpi_bypass,
   hdphy_cm_r_refclk_cmlen,
   hdphy_cm_rxpi_phase0,
   hdphy_0_hyb_hpffreq,
   hdphy_0_tx_wb_en,
   hdphy_0_rxpi_caldone,
   hdphy_1_hyb_hpffreq,
   hdphy_1_tx_wb_en,
   hdphy_1_rxpi_caldone,
   hdphy_2_hyb_hpffreq,
   hdphy_2_tx_wb_en,
   hdphy_2_rxpi_caldone,
   hdphy_3_hyb_hpffreq,
   hdphy_3_tx_wb_en,
   hdphy_3_rxpi_caldone,
   hdphy_cm_hyb_hpffreq,
   hdphy_cm_l_synthclk_cmlen,
   hdphy_cm_pll_clk1en,
   hdphy_cm_atbblk,
   hdphy_cm_rxpi_caldone,
   hdphy_0_hyb_lpfsel,
   hdphy_0_hyb_rxincapcors,
   hdphy_0_rxpi_div1,
   hdphy_0_txpi_div1,
   hdphy_0_cnpi_div1,
   hdphy_0_tx_prescascamp_bw,
   hdphy_0_hdsbi_thresh,
   hdphy_1_hyb_lpfsel,
   hdphy_1_hyb_rxincapcors,
   hdphy_1_rxpi_div1,
   hdphy_1_txpi_div1,
   hdphy_1_cnpi_div1,
   hdphy_1_tx_prescascamp_bw,
   hdphy_1_hdsbi_thresh,
   hdphy_2_hyb_lpfsel,
   hdphy_2_hyb_rxincapcors,
   hdphy_2_rxpi_div1,
   hdphy_2_txpi_div1,
   hdphy_2_cnpi_div1,
   hdphy_2_tx_prescascamp_bw,
   hdphy_2_hdsbi_thresh,
   hdphy_3_hyb_lpfsel,
   hdphy_3_hyb_rxincapcors,
   hdphy_3_rxpi_div1,
   hdphy_3_txpi_div1,
   hdphy_3_cnpi_div1,
   hdphy_3_tx_prescascamp_bw,
   hdphy_3_hdsbi_thresh,
   hdphy_cm_hyb_lpfsel,
   hdphy_cm_hyb_rxincapcors,
   hdphy_cm_rxpi_div1,
   hdphy_cm_r_synthclk_cmlen,
   hdphy_cm_pll_clk2en,
   hdphy_0_rxadc_trim,
   hdphy_0_cndac_gain,
   hdphy_0_tx_rep_prescascamp_bw,
   hdphy_1_rxadc_trim,
   hdphy_1_cndac_gain,
   hdphy_1_tx_rep_prescascamp_bw,
   hdphy_2_rxadc_trim,
   hdphy_2_cndac_gain,
   hdphy_2_tx_rep_prescascamp_bw,
   hdphy_3_rxadc_trim,
   hdphy_3_cndac_gain,
   hdphy_3_tx_rep_prescascamp_bw,
   hdphy_cm_rxadc_trim,
   hdphy_cm_pll_vcoitrim,
   hdphy_cm_pll_clk3en,
   hdphy_0_rxadc_en,
   hdphy_0_cndac_en,
   hdphy_0_tx_rep_prescascamp_en,
   hdphy_1_rxadc_en,
   hdphy_1_cndac_en,
   hdphy_1_tx_rep_prescascamp_en,
   hdphy_2_rxadc_en,
   hdphy_2_cndac_en,
   hdphy_2_tx_rep_prescascamp_en,
   hdphy_3_rxadc_en,
   hdphy_3_cndac_en,
   hdphy_3_tx_rep_prescascamp_en,
   hdphy_cm_rxadc_en,
   hdphy_cm_xosc_clk1_en,
   hdphy_cm_pll_clk4en,
   hdphy_0_rxadc_stby,
   hdphy_0_rxpi_div2,
   hdphy_0_txpi_div2,
   hdphy_0_cnpi_div2,
   hdphy_0_cndac_stby,
   hdphy_0_tx_mirrorbw,
   hdphy_0_hdsbi_ctrim,
   hdphy_1_rxadc_stby,
   hdphy_1_rxpi_div2,
   hdphy_1_txpi_div2,
   hdphy_1_cnpi_div2,
   hdphy_1_cndac_stby,
   hdphy_1_tx_mirrorbw,
   hdphy_1_hdsbi_ctrim,
   hdphy_2_rxadc_stby,
   hdphy_2_rxpi_div2,
   hdphy_2_txpi_div2,
   hdphy_2_cnpi_div2,
   hdphy_2_cndac_stby,
   hdphy_2_tx_mirrorbw,
   hdphy_2_hdsbi_ctrim,
   hdphy_3_rxadc_stby,
   hdphy_3_rxpi_div2,
   hdphy_3_txpi_div2,
   hdphy_3_cnpi_div2,
   hdphy_3_cndac_stby,
   hdphy_3_tx_mirrorbw,
   hdphy_3_hdsbi_ctrim,
   hdphy_cm_rxadc_stby,
   hdphy_cm_rxpi_div2,
   hdphy_cm_xosc_clk2_en,
   hdphy_cm_pll_clk5en,
   hdphy_0_rxadc_clkrcven,
   hdphy_0_hyb_rtrim,
   hdphy_0_hyb_rxincapfine,
   hdphy_0_rxpi_en,
   hdphy_0_txpi_en,
   hdphy_0_cnpi_en,
   hdphy_0_cndac_clkrcven,
   hdphy_0_tx_rep_cassel,
   hdphy_0_hdsbi_en,
   hdphy_0_rxpi_calcode,
   hdphy_1_rxadc_clkrcven,
   hdphy_1_hyb_rtrim,
   hdphy_1_hyb_rxincapfine,
   hdphy_1_rxpi_en,
   hdphy_1_txpi_en,
   hdphy_1_cnpi_en,
   hdphy_1_cndac_clkrcven,
   hdphy_1_tx_rep_cassel,
   hdphy_1_hdsbi_en,
   hdphy_1_rxpi_calcode,
   hdphy_2_rxadc_clkrcven,
   hdphy_2_hyb_rtrim,
   hdphy_2_hyb_rxincapfine,
   hdphy_2_rxpi_en,
   hdphy_2_txpi_en,
   hdphy_2_cnpi_en,
   hdphy_2_cndac_clkrcven,
   hdphy_2_tx_rep_cassel,
   hdphy_2_hdsbi_en,
   hdphy_2_rxpi_calcode,
   hdphy_3_rxadc_clkrcven,
   hdphy_3_hyb_rtrim,
   hdphy_3_hyb_rxincapfine,
   hdphy_3_rxpi_en,
   hdphy_3_txpi_en,
   hdphy_3_cnpi_en,
   hdphy_3_cndac_clkrcven,
   hdphy_3_tx_rep_cassel,
   hdphy_3_hdsbi_en,
   hdphy_3_rxpi_calcode,
   hdphy_cm_rxadc_clkrcven,
   hdphy_cm_hyb_rtrim,
   hdphy_cm_hyb_rxincapfine,
   hdphy_cm_rxpi_en,
   hdphy_cm_xosc_en,
   hdphy_cm_pll_vrefadj,
   hdphy_cm_pll_clk6en,
   hdphy_cm_atbsel,
   hdphy_cm_rxpi_calcode,
   
   
   snir_top_regs_rif_add_bus,
   snir_top_regs_rif_data_wr,
   snir_top_regs_rif_wr,
   snir_top_regs_rif_byte_en,
   snir_top_regs_rif_rd,
   snir_top_regs_rif_ack,
   snir_top_regs_rif_data_rd,
  
   
   reset_regs_add_bus,
   reset_regs_data_wr,
   reset_regs_wr,
   reset_regs_byte_en,
   reset_regs_rd,
   reset_regs_ack,   
   reset_regs_data_rd,
   prel_reset_n,
   sys_clk_pll_enable_int,
   sys_clk_pll_enable,

   
   lppf_symbol_done,
   lppf_tx_bit,
   lppf_tx_del,
   lppf_tx_mode,
   lppf_tx_active,

   
   lppf_rx_active,
   lppf_bit_out,
   lppf_bit_sync,
   lppf_del_on,
   lppf_rx_descr_lock,
   afe_if_squelch_clk,
  
   lppf_link_clk_div_en,

   
   Snir_phy_rcv_clk_in,
   Snir_phy_trn_clk_in,
   Snir_phy_rcv_clk,
   Snir_phy_trn_clk,

   
   snir_phy_int_out,

   
   phy_test_bus_sys,
   phy_test_bus_trn,
   phy_test_bus_rcv,

  
   vl_sms_afe_if_SMS_sms_1_WSO,
   vl_sms_WRCK,
   vl_sms_afe_if_SMS_sms_1_WSI,
   vl_sms_WRSTN,
   vl_sms_afe_if_SMS_sms_1_UpdateWR,
   vl_sms_SelectWIR,
   vl_sms_afe_if_SMS_sms_1_ShiftWR,
   vl_sms_afe_if_SMS_sms_1_CaptureWR,
   bist_clk,    
   bist_reset_n,
   
   VM_probe
   
   );


   
   
   

   parameter TOK_W              = 19;
   parameter DAC_DATA_WIDTH	= 48;


   parameter RXADC_DATA_WIDTH    = 48;
   parameter RXADC_DSP_DATA_WIDTH= 24;      

   parameter RXADC_DATA_WIDTH    = 36;
   parameter RXADC_DSP_DATA_WIDTH= 24;      


   parameter SYS_CLKS_NUM  = 44;
   parameter HDBT_CLKS_NUM = 32;
   parameter LPPF_CLKS_NUM = 3;
   
   parameter w_data_bus    = 32;
   parameter w_add_bus     = 32;

   parameter AUX_TOK_WIDTH = 15;

   parameter FB_ADC_DW     = 10;
   parameter FB_ADC_OFFSET = 2;

   parameter SNIR_PHY_INTR_NUM = 7;
   
   parameter DSP_path      = 2'b01;
   parameter LPPF_path     = 2'b11;

   parameter  SCAN_CHANNELS    = 10;
   
   
   
   

   
   input                    scan_enable;
   input                    scan_mode;
   input                    sys_reset_n;
   input                    sys_clk;
   input                    ref_clk;

   input                    rcv_clk_scan;
   input                    trn_clk_scan;
 
   
   input 		    comp_en; 
   input 		    sprdr_en;
   input 		    comp_clk;
   input 		    mask_en;
   input [SCAN_CHANNELS-1:0] edt_channels_in;
   output [SCAN_CHANNELS-1:0] edt_channels_out;
  
   
   
   
   
   

   
   input [31:0]             dsp_rif_add_bus;
   input [3:0]              dsp_rif_byte_en;
   input                    dsp_rif_wr; 
   input                    dsp_rif_rd; 
   input [31:0]             dsp_rif_data_wr;
   output [31:0]            dsp_rif_data_rd;
   output                   dsp_rif_ack;
   
   
   output                   link_rx_tokin_valid;
   output [2*TOK_W-1:0]     link_rx_tokin_data;
   
   
   output                   link_tx_tokout_ready;
   input                    link_tx_tokout_valid;
   input [2*TOK_W-1:0]      link_tx_tokout_data;

   
   input [AUX_TOK_WIDTH-1:0] link_aux_tokout_data;
   output                    link_aux_tokout_ready;
   
   
   output [AUX_TOK_WIDTH-1:0] link_aux_tokin_data;
   output                     link_aux_tokin_valid;	
   input                      link_aux_tokin_ready;              
   
   output [6:0]              Dan_retreq_data;
   output                    Dan_pcs_retr_req;
   input                     Dan_pcs_retr_req_rdy;
   
   
   
   
   
   
   

   
   input                      ref25M_sel;
   
   
   input [w_add_bus-1:0]      snir_afe_if_addr_bus;
   input [w_data_bus-1:0]     snir_afe_if_data_bus_wr;
   input                      snir_afe_if_bus_wr;
   input [3:0]                snir_afe_if_byte_en;
   input                      snir_afe_if_bus_rd;
   output                     snir_afe_if_bus_ack;
   output [w_data_bus-1:0]    snir_afe_if_data_bus_rd;

   
   input [15:0]               cpu_snir_afe_if_ram_bus_add;
   input                      cpu_snir_afe_if_ram_bus_wr;
   input                      cpu_snir_afe_if_ram_bus_rd;
   input [31:0]               cpu_snir_afe_if_ram_data_bus_wr;
   input [3:0]                cpu_snir_afe_if_ram_byte_en;   
   output                     cpu_snir_afe_if_ram_bus_ack;
   output [31:0]              cpu_snir_afe_if_ram_bus_data_rd;
   
   
   input                      hdphy_0_rxadc_dataclk;
   input [RXADC_DATA_WIDTH-1:0] hdphy_0_rxadc_data;
   
   input                        hdphy_1_rxadc_dataclk;
   input [RXADC_DATA_WIDTH-1:0] hdphy_1_rxadc_data;
   
   input                        hdphy_2_rxadc_dataclk;
   input [RXADC_DATA_WIDTH-1:0] hdphy_2_rxadc_data;
   
   input                        hdphy_3_rxadc_dataclk;
   input [RXADC_DATA_WIDTH-1:0] hdphy_3_rxadc_data;
   
   
   input                        hdphy_0_txdac_dataclk;
   output [47:0]                hdphy_0_txdac_data;
   input                        hdphy_1_txdac_dataclk;
   output [47:0]                hdphy_1_txdac_data;
   input                        hdphy_2_txdac_dataclk;
   output [47:0]                hdphy_2_txdac_data;
   input                        hdphy_3_txdac_dataclk;
   output [47:0]                hdphy_3_txdac_data;

   
   output                       hdphy_0_rxadc_pi_inc;
   output                       hdphy_0_rxadc_pi_dec;
   output                       hdphy_1_rxadc_pi_inc;
   output                       hdphy_1_rxadc_pi_dec;
   output                       hdphy_2_rxadc_pi_inc;
   output                       hdphy_2_rxadc_pi_dec;
   output                       hdphy_3_rxadc_pi_inc;
   output                       hdphy_3_rxadc_pi_dec;
   
   output                       hdphy_cm_rxadc_pi_inc;
   output                       hdphy_cm_rxadc_pi_dec;
   
   output                       hdphy_0_txdac_pi_inc;
   output                       hdphy_0_txdac_pi_dec;
   output                       hdphy_1_txdac_pi_inc;
   output                       hdphy_1_txdac_pi_dec;
   output                       hdphy_2_txdac_pi_inc;
   output                       hdphy_2_txdac_pi_dec;
   output                       hdphy_3_txdac_pi_inc;
   output                       hdphy_3_txdac_pi_dec;
   
   output                       hdphy_0_cndac_pi_inc;
   output                       hdphy_0_cndac_pi_dec;
   output                       hdphy_1_cndac_pi_inc;
   output                       hdphy_1_cndac_pi_dec;
   output                       hdphy_2_cndac_pi_inc;
   output                       hdphy_2_cndac_pi_dec;
   output                       hdphy_3_cndac_pi_inc;
   output                       hdphy_3_cndac_pi_dec;
   
   
   input [3:0]                  squelch_0_in;
   input [3:0]                  squelch_1_in;
   input [3:0]                  squelch_2_in;
   input [3:0]                  squelch_3_in;

   
   output                       hdphy_0_reset;
   output                       hdphy_1_reset;
   output                       hdphy_2_reset;
   output                       hdphy_3_reset;
   output                       hdphy_cm_reset;
   output                       hdphy_cm_reffreq;
   output                       hdphy_0_bias_en;
   output [ 1: 0]               hdphy_0_tx_cmnsel;
   output                       hdphy_1_bias_en;
   output [ 1: 0]               hdphy_1_tx_cmnsel;
   output                       hdphy_2_bias_en;
   output [ 1: 0]               hdphy_2_tx_cmnsel;
   output                       hdphy_3_bias_en;
   output [ 1: 0]               hdphy_3_tx_cmnsel;
   output                       hdphy_cm_bias_en;
   input                        hdphy_cm_xosc_stable;
   output                       hdphy_0_rxadc_reset;
   output [ 2: 0]               hdphy_0_pi_biastrim;
   output                       hdphy_0_tx_cmnmodeamp_en;
   output                       hdphy_1_rxadc_reset;
   output [ 2: 0]               hdphy_1_pi_biastrim;
   output                       hdphy_1_tx_cmnmodeamp_en;
   output                       hdphy_2_rxadc_reset;
   output [ 2: 0]               hdphy_2_pi_biastrim;
   output                       hdphy_2_tx_cmnmodeamp_en;
   output                       hdphy_3_rxadc_reset;
   output [ 2: 0]               hdphy_3_pi_biastrim;
   output                       hdphy_3_tx_cmnmodeamp_en;
   output                       hdphy_cm_rxadc_reset;
   output [ 2: 0]               hdphy_cm_pi_biastrim;
   input                        hdphy_cm_rccal_compout;
   output                       hdphy_0_clkbuf_en;
   output                       hdphy_0_tx_cn_en;
   output [ 3: 0]               hdphy_0_tx_rtrim;
   output                       hdphy_1_clkbuf_en;
   output                       hdphy_1_tx_cn_en;
   output [ 3: 0]               hdphy_1_tx_rtrim;
   output                       hdphy_2_clkbuf_en;
   output                       hdphy_2_tx_cn_en;
   output [ 3: 0]               hdphy_2_tx_rtrim;
   output                       hdphy_3_clkbuf_en;
   output                       hdphy_3_tx_cn_en;
   output [ 3: 0]               hdphy_3_tx_rtrim;
   input                        hdphy_cm_rccal_done;
   output                       hdphy_0_txdac_clksel;
   output                       hdphy_0_tx_en;
   output                       hdphy_1_txdac_clksel;
   output                       hdphy_1_tx_en;
   output                       hdphy_2_txdac_clksel;
   output                       hdphy_2_tx_en;
   output                       hdphy_3_txdac_clksel;
   output                       hdphy_3_tx_en;
   output [ 2: 0]               hdphy_0_rxadc_biastrim;
   output                       hdphy_0_hyb_repincapvcm;
   output                       hdphy_0_tx_standby;
   output [ 2: 0]               hdphy_1_rxadc_biastrim;
   output                       hdphy_1_hyb_repincapvcm;
   output                       hdphy_1_tx_standby;
   output [ 2: 0]               hdphy_2_rxadc_biastrim;
   output                       hdphy_2_hyb_repincapvcm;
   output                       hdphy_2_tx_standby;
   output [ 2: 0]               hdphy_3_rxadc_biastrim;
   output                       hdphy_3_hyb_repincapvcm;
   output                       hdphy_3_tx_standby;
   output [ 2: 0]               hdphy_cm_rxadc_biastrim;
   output                       hdphy_cm_hyb_repincapvcm;
   output                       hdphy_cm_pll_altrefclksel;
   output                       hdphy_0_rxadc_clksel;
   output                       hdphy_0_lpf_amphighbw;
   output [ 1: 0]               hdphy_0_txdac_datamuxsel;
   output                       hdphy_1_rxadc_clksel;
   output                       hdphy_1_lpf_amphighbw;
   output [ 1: 0]               hdphy_1_txdac_datamuxsel;
   output                       hdphy_2_rxadc_clksel;
   output                       hdphy_2_lpf_amphighbw;
   output [ 1: 0]               hdphy_2_txdac_datamuxsel;
   output                       hdphy_3_rxadc_clksel;
   output                       hdphy_3_lpf_amphighbw;
   output [ 1: 0]               hdphy_3_txdac_datamuxsel;
   output                       hdphy_cm_rxadc_clksel;
   output                       hdphy_cm_lpf_amphighbw;
   output                       hdphy_cm_pll_bgen;
   output                       hdphy_cm_pll_bypass;
   output [ 7: 0]               hdphy_cm_pll_clk3div;
   output [ 1: 0]               hdphy_0_rxadc_datamuxsel;
   output [ 1: 0]               hdphy_0_lpf_bandsel;
   output [ 1: 0]               hdphy_1_rxadc_datamuxsel;
   output [ 1: 0]               hdphy_1_lpf_bandsel;
   output [ 1: 0]               hdphy_2_rxadc_datamuxsel;
   output [ 1: 0]               hdphy_2_lpf_bandsel;
   output [ 1: 0]               hdphy_3_rxadc_datamuxsel;
   output [ 1: 0]               hdphy_3_lpf_bandsel;
   output [ 1: 0]               hdphy_cm_rxadc_datamuxsel;
   output [ 1: 0]               hdphy_cm_lpf_bandsel;
   output                       hdphy_0_rxadc_f2isel;
   input                        hdphy_0_cnpi_phase0;
   output                       hdphy_1_rxadc_f2isel;
   input                        hdphy_1_cnpi_phase0;
   output                       hdphy_2_rxadc_f2isel;
   input                        hdphy_2_cnpi_phase0;
   output                       hdphy_3_rxadc_f2isel;
   input                        hdphy_3_cnpi_phase0;
   output                       hdphy_cm_rxadc_f2isel;
   output                       hdphy_cm_pll_vcocalbyp;
   output [ 4: 0]               hdphy_0_tx_offset;
   input                        hdphy_0_cnpi_caldone;
   output [ 4: 0]               hdphy_1_tx_offset;
   input                        hdphy_1_cnpi_caldone;
   output [ 4: 0]               hdphy_2_tx_offset;
   input                        hdphy_2_cnpi_caldone;
   output [ 4: 0]               hdphy_3_tx_offset;
   input                        hdphy_3_cnpi_caldone;
   output [ 2: 0]               hdphy_cm_pll_cpgain;
   output                       hdphy_cm_pll_vcocalstart;
   output [ 5: 0]               hdphy_0_hyb_repincapcors;
   output [ 5: 0]               hdphy_1_hyb_repincapcors;
   output [ 5: 0]               hdphy_2_hyb_repincapcors;
   output [ 5: 0]               hdphy_3_hyb_repincapcors;
   output [ 5: 0]               hdphy_cm_hyb_repincapcors;
   output                       hdphy_cm_pll_en;
   output [ 5: 0]               hdphy_0_txdac_gain;
   output [ 5: 0]               hdphy_1_txdac_gain;
   output [ 5: 0]               hdphy_2_txdac_gain;
   output [ 5: 0]               hdphy_3_txdac_gain;
   output [ 3: 0]               hdphy_0_rxadc_offsetbw;
   output [ 4: 0]               hdphy_0_lpf_bwtrimcap;
   output                       hdphy_0_txdac_en;
   output [ 3: 0]               hdphy_1_rxadc_offsetbw;
   output [ 4: 0]               hdphy_1_lpf_bwtrimcap;
   output                       hdphy_1_txdac_en;
   output [ 3: 0]               hdphy_2_rxadc_offsetbw;
   output [ 4: 0]               hdphy_2_lpf_bwtrimcap;
   output                       hdphy_2_txdac_en;
   output [ 3: 0]               hdphy_3_rxadc_offsetbw;
   output [ 4: 0]               hdphy_3_lpf_bwtrimcap;
   output                       hdphy_3_txdac_en;
   output [ 3: 0]               hdphy_cm_rxadc_offsetbw;
   output [ 4: 0]               hdphy_cm_lpf_bwtrimcap;
   output                       hdphy_0_rxadc_offsetbyp;
   output                       hdphy_0_lpf_bypen;
   output                       hdphy_0_txdac_stby;
   output                       hdphy_1_rxadc_offsetbyp;
   output                       hdphy_1_lpf_bypen;
   output                       hdphy_1_txdac_stby;
   output                       hdphy_2_rxadc_offsetbyp;
   output                       hdphy_2_lpf_bypen;
   output                       hdphy_2_txdac_stby;
   output                       hdphy_3_rxadc_offsetbyp;
   output                       hdphy_3_lpf_bypen;
   output                       hdphy_3_txdac_stby;
   output                       hdphy_cm_rxadc_offsetbyp;
   output                       hdphy_cm_lpf_bypen;
   output                       hdphy_0_rxadc_offsethold;
   output                       hdphy_0_lpf_en;
   output [ 3: 0]               hdphy_0_hyb_repincapfine;
   output                       hdphy_0_txdac_clkrcven;
   output [ 4: 0]               hdphy_0_tx_cn_offset;
   input [ 4: 0]                hdphy_0_cnpi_calcode;
   output                       hdphy_1_rxadc_offsethold;
   output                       hdphy_1_lpf_en;
   output [ 3: 0]               hdphy_1_hyb_repincapfine;
   output                       hdphy_1_txdac_clkrcven;
   output [ 4: 0]               hdphy_1_tx_cn_offset;
   input [ 4: 0]                hdphy_1_cnpi_calcode;
   output                       hdphy_2_rxadc_offsethold;
   output                       hdphy_2_lpf_en;
   output [ 3: 0]               hdphy_2_hyb_repincapfine;
   output                       hdphy_2_txdac_clkrcven;
   output [ 4: 0]               hdphy_2_tx_cn_offset;
   input [ 4: 0]                hdphy_2_cnpi_calcode;
   output                       hdphy_3_rxadc_offsethold;
   output                       hdphy_3_lpf_en;
   output [ 3: 0]               hdphy_3_hyb_repincapfine;
   output                       hdphy_3_txdac_clkrcven;
   output [ 4: 0]               hdphy_3_tx_cn_offset;
   input [ 4: 0]                hdphy_3_cnpi_calcode;
   output                       hdphy_cm_rxadc_offsethold;
   output                       hdphy_cm_lpf_en;
   output [ 3: 0]               hdphy_cm_hyb_repincapfine;
   output [ 4: 0]               hdphy_cm_pll_vcobandset;
   output [ 7: 0]               hdphy_cm_pll_clk4div;
   input [11: 0]                hdphy_cm_rccal_delay;
   output                       hdphy_0_rxadc_polarity;
   output                       hdphy_0_tx_rep_en;
   output                       hdphy_1_rxadc_polarity;
   output                       hdphy_1_tx_rep_en;
   output                       hdphy_2_rxadc_polarity;
   output                       hdphy_2_tx_rep_en;
   output                       hdphy_3_rxadc_polarity;
   output                       hdphy_3_tx_rep_en;
   output                       hdphy_cm_rxadc_polarity;
   input                        hdphy_cm_pll_frlocked;
   output                       hdphy_0_hyb_amphighbw;
   output                       hdphy_0_rxpi_calstart;
   output                       hdphy_0_txpi_calstart;
   output                       hdphy_0_cnpi_calstart;
   input                        hdphy_0_txpi_phase0;
   output                       hdphy_1_hyb_amphighbw;
   output                       hdphy_1_rxpi_calstart;
   output                       hdphy_1_txpi_calstart;
   output                       hdphy_1_cnpi_calstart;
   input                        hdphy_1_txpi_phase0;
   output                       hdphy_2_hyb_amphighbw;
   output                       hdphy_2_rxpi_calstart;
   output                       hdphy_2_txpi_calstart;
   output                       hdphy_2_cnpi_calstart;
   input                        hdphy_2_txpi_phase0;
   output                       hdphy_3_hyb_amphighbw;
   output                       hdphy_3_rxpi_calstart;
   output                       hdphy_3_txpi_calstart;
   output                       hdphy_3_cnpi_calstart;
   input                        hdphy_3_txpi_phase0;
   output                       hdphy_cm_hyb_amphighbw;
   output                       hdphy_cm_rxpi_calstart;
   input                        hdphy_cm_pll_phlocked;
   output [ 1: 0]               hdphy_0_rxadc_refsel;
   output                       hdphy_0_hyb_en;
   output                       hdphy_0_rxpi_calovren;
   output                       hdphy_0_txpi_calovren;
   output                       hdphy_0_cnpi_calovren;
   input                        hdphy_0_txpi_caldone;
   output [ 1: 0]               hdphy_1_rxadc_refsel;
   output                       hdphy_1_hyb_en;
   output                       hdphy_1_rxpi_calovren;
   output                       hdphy_1_txpi_calovren;
   output                       hdphy_1_cnpi_calovren;
   input                        hdphy_1_txpi_caldone;
   output [ 1: 0]               hdphy_2_rxadc_refsel;
   output                       hdphy_2_hyb_en;
   output                       hdphy_2_rxpi_calovren;
   output                       hdphy_2_txpi_calovren;
   output                       hdphy_2_cnpi_calovren;
   input                        hdphy_2_txpi_caldone;
   output [ 1: 0]               hdphy_3_rxadc_refsel;
   output                       hdphy_3_hyb_en;
   output                       hdphy_3_rxpi_calovren;
   output                       hdphy_3_txpi_calovren;
   output                       hdphy_3_cnpi_calovren;
   input                        hdphy_3_txpi_caldone;
   output [ 1: 0]               hdphy_cm_rxadc_refsel;
   output                       hdphy_cm_hyb_en;
   output                       hdphy_cm_rxpi_calovren;
   input                        hdphy_cm_pll_vcocaldone;
   output                       hdphy_cm_rccal_start;
   output [ 7: 0]               hdphy_cm_pll_fbdiv;
   output [ 3: 0]               hdphy_cm_pll_clk5div;
   output                       hdphy_0_cndac_clksel;
   output                       hdphy_1_cndac_clksel;
   output                       hdphy_2_cndac_clksel;
   output                       hdphy_3_cndac_clksel;
   output                       hdphy_cm_pll_filtersel;
   output [ 2: 0]               hdphy_0_rxadc_shintrim;
   output                       hdphy_0_hyb_rxincapvcm;
   output [ 2: 0]               hdphy_1_rxadc_shintrim;
   output                       hdphy_1_hyb_rxincapvcm;
   output [ 2: 0]               hdphy_2_rxadc_shintrim;
   output                       hdphy_2_hyb_rxincapvcm;
   output [ 2: 0]               hdphy_3_rxadc_shintrim;
   output                       hdphy_3_hyb_rxincapvcm;
   output [ 2: 0]               hdphy_cm_rxadc_shintrim;
   output                       hdphy_cm_hyb_rxincapvcm;
   output                       hdphy_cm_pll_openloop;
   output [ 3: 0]               hdphy_0_hyb_fbcap;
   output [ 1: 0]               hdphy_0_cndac_datamuxsel;
   output                       hdphy_0_hdsbi_fcsel;
   output [ 3: 0]               hdphy_1_hyb_fbcap;
   output [ 1: 0]               hdphy_1_cndac_datamuxsel;
   output                       hdphy_1_hdsbi_fcsel;
   output [ 3: 0]               hdphy_2_hyb_fbcap;
   output [ 1: 0]               hdphy_2_cndac_datamuxsel;
   output                       hdphy_2_hdsbi_fcsel;
   output [ 3: 0]               hdphy_3_hyb_fbcap;
   output [ 1: 0]               hdphy_3_cndac_datamuxsel;
   output                       hdphy_3_hdsbi_fcsel;
   output [ 3: 0]               hdphy_cm_hyb_fbcap;
   output                       hdphy_cm_pll_refclkdiv2;
   output                       hdphy_0_hyb_fbcap2x;
   output [ 4: 0]               hdphy_0_rxpi_calovr;
   output [ 4: 0]               hdphy_0_txpi_calovr;
   output [ 4: 0]               hdphy_0_cnpi_calovr;
   output [ 6: 0]               hdphy_0_tx_rep_ctrim;
   output                       hdphy_0_hdsbi_bypass;
   input [ 4: 0]                hdphy_0_txpi_calcode;
   output                       hdphy_1_hyb_fbcap2x;
   output [ 4: 0]               hdphy_1_rxpi_calovr;
   output [ 4: 0]               hdphy_1_txpi_calovr;
   output [ 4: 0]               hdphy_1_cnpi_calovr;
   output [ 6: 0]               hdphy_1_tx_rep_ctrim;
   output                       hdphy_1_hdsbi_bypass;
   input [ 4: 0]                hdphy_1_txpi_calcode;
   output                       hdphy_2_hyb_fbcap2x;
   output [ 4: 0]               hdphy_2_rxpi_calovr;
   output [ 4: 0]               hdphy_2_txpi_calovr;
   output [ 4: 0]               hdphy_2_cnpi_calovr;
   output [ 6: 0]               hdphy_2_tx_rep_ctrim;
   output                       hdphy_2_hdsbi_bypass;
   input [ 4: 0]                hdphy_2_txpi_calcode;
   output                       hdphy_3_hyb_fbcap2x;
   output [ 4: 0]               hdphy_3_rxpi_calovr;
   output [ 4: 0]               hdphy_3_txpi_calovr;
   output [ 4: 0]               hdphy_3_cnpi_calovr;
   output [ 6: 0]               hdphy_3_tx_rep_ctrim;
   output                       hdphy_3_hdsbi_bypass;
   input [ 4: 0]                hdphy_3_txpi_calcode;
   output                       hdphy_cm_hyb_fbcap2x;
   output [ 4: 0]               hdphy_cm_rxpi_calovr;
   output [ 3: 0]               hdphy_cm_rccal_rtrim;
   output                       hdphy_cm_pll_stby;
   output [ 3: 0]               hdphy_cm_pll_clk6div;
   input [ 4: 0]                hdphy_cm_pll_vcocalband;
   output [ 2: 0]               hdphy_0_rxadc_shouttrim;
   output                       hdphy_0_tx_swingboost;
   output [ 2: 0]               hdphy_1_rxadc_shouttrim;
   output                       hdphy_1_tx_swingboost;
   output [ 2: 0]               hdphy_2_rxadc_shouttrim;
   output                       hdphy_2_tx_swingboost;
   output [ 2: 0]               hdphy_3_rxadc_shouttrim;
   output                       hdphy_3_tx_swingboost;
   output [ 2: 0]               hdphy_cm_rxadc_shouttrim;
   output                       hdphy_cm_l_refclk_cmlen;
   output                       hdphy_cm_pll_termen;
   output [ 2: 0]               hdphy_cm_atbchan;
   output                       hdphy_0_rxadc_termen;
   output                       hdphy_0_rxpi_bypass;
   output                       hdphy_0_txpi_bypass;
   output                       hdphy_0_cnpi_bypass;
   output                       hdphy_0_tx_swingboostpp;
   input                        hdphy_0_rxpi_phase0;
   output                       hdphy_1_rxadc_termen;
   output                       hdphy_1_rxpi_bypass;
   output                       hdphy_1_txpi_bypass;
   output                       hdphy_1_cnpi_bypass;
   output                       hdphy_1_tx_swingboostpp;
   input                        hdphy_1_rxpi_phase0;
   output                       hdphy_2_rxadc_termen;
   output                       hdphy_2_rxpi_bypass;
   output                       hdphy_2_txpi_bypass;
   output                       hdphy_2_cnpi_bypass;
   output                       hdphy_2_tx_swingboostpp;
   input                        hdphy_2_rxpi_phase0;
   output                       hdphy_3_rxadc_termen;
   output                       hdphy_3_rxpi_bypass;
   output                       hdphy_3_txpi_bypass;
   output                       hdphy_3_cnpi_bypass;
   output                       hdphy_3_tx_swingboostpp;
   input                        hdphy_3_rxpi_phase0;
   output                       hdphy_cm_rxadc_termen;
   output                       hdphy_cm_rxpi_bypass;
   output                       hdphy_cm_r_refclk_cmlen;
   input                        hdphy_cm_rxpi_phase0;
   output [ 2: 0]               hdphy_0_hyb_hpffreq;
   output                       hdphy_0_tx_wb_en;
   input                        hdphy_0_rxpi_caldone;
   output [ 2: 0]               hdphy_1_hyb_hpffreq;
   output                       hdphy_1_tx_wb_en;
   input                        hdphy_1_rxpi_caldone;
   output [ 2: 0]               hdphy_2_hyb_hpffreq;
   output                       hdphy_2_tx_wb_en;
   input                        hdphy_2_rxpi_caldone;
   output [ 2: 0]               hdphy_3_hyb_hpffreq;
   output                       hdphy_3_tx_wb_en;
   input                        hdphy_3_rxpi_caldone;
   output [ 2: 0]               hdphy_cm_hyb_hpffreq;
   output                       hdphy_cm_l_synthclk_cmlen;
   output                       hdphy_cm_pll_clk1en;
   output [ 1: 0]               hdphy_cm_atbblk;
   input                        hdphy_cm_rxpi_caldone;
   output                       hdphy_0_hyb_lpfsel;
   output [ 5: 0]               hdphy_0_hyb_rxincapcors;
   output [ 1: 0]               hdphy_0_rxpi_div1;
   output [ 1: 0]               hdphy_0_txpi_div1;
   output [ 1: 0]               hdphy_0_cnpi_div1;
   output                       hdphy_0_tx_prescascamp_bw;
   output [ 3: 0]               hdphy_0_hdsbi_thresh;
   output                       hdphy_1_hyb_lpfsel;
   output [ 5: 0]               hdphy_1_hyb_rxincapcors;
   output [ 1: 0]               hdphy_1_rxpi_div1;
   output [ 1: 0]               hdphy_1_txpi_div1;
   output [ 1: 0]               hdphy_1_cnpi_div1;
   output                       hdphy_1_tx_prescascamp_bw;
   output [ 3: 0]               hdphy_1_hdsbi_thresh;
   output                       hdphy_2_hyb_lpfsel;
   output [ 5: 0]               hdphy_2_hyb_rxincapcors;
   output [ 1: 0]               hdphy_2_rxpi_div1;
   output [ 1: 0]               hdphy_2_txpi_div1;
   output [ 1: 0]               hdphy_2_cnpi_div1;
   output                       hdphy_2_tx_prescascamp_bw;
   output [ 3: 0]               hdphy_2_hdsbi_thresh;
   output                       hdphy_3_hyb_lpfsel;
   output [ 5: 0]               hdphy_3_hyb_rxincapcors;
   output [ 1: 0]               hdphy_3_rxpi_div1;
   output [ 1: 0]               hdphy_3_txpi_div1;
   output [ 1: 0]               hdphy_3_cnpi_div1;
   output                       hdphy_3_tx_prescascamp_bw;
   output [ 3: 0]               hdphy_3_hdsbi_thresh;
   output                       hdphy_cm_hyb_lpfsel;
   output [ 5: 0]               hdphy_cm_hyb_rxincapcors;
   output [ 1: 0]               hdphy_cm_rxpi_div1;
   output                       hdphy_cm_r_synthclk_cmlen;
   output                       hdphy_cm_pll_clk2en;
   output [ 2: 0]               hdphy_0_rxadc_trim;
   output [ 5: 0]               hdphy_0_cndac_gain;
   output                       hdphy_0_tx_rep_prescascamp_bw;
   output [ 2: 0]               hdphy_1_rxadc_trim;
   output [ 5: 0]               hdphy_1_cndac_gain;
   output                       hdphy_1_tx_rep_prescascamp_bw;
   output [ 2: 0]               hdphy_2_rxadc_trim;
   output [ 5: 0]               hdphy_2_cndac_gain;
   output                       hdphy_2_tx_rep_prescascamp_bw;
   output [ 2: 0]               hdphy_3_rxadc_trim;
   output [ 5: 0]               hdphy_3_cndac_gain;
   output                       hdphy_3_tx_rep_prescascamp_bw;
   output [ 2: 0]               hdphy_cm_rxadc_trim;
   output [ 3: 0]               hdphy_cm_pll_vcoitrim;
   output                       hdphy_cm_pll_clk3en;
   output                       hdphy_0_rxadc_en;
   output                       hdphy_0_cndac_en;
   output                       hdphy_0_tx_rep_prescascamp_en;
   output                       hdphy_1_rxadc_en;
   output                       hdphy_1_cndac_en;
   output                       hdphy_1_tx_rep_prescascamp_en;
   output                       hdphy_2_rxadc_en;
   output                       hdphy_2_cndac_en;
   output                       hdphy_2_tx_rep_prescascamp_en;
   output                       hdphy_3_rxadc_en;
   output                       hdphy_3_cndac_en;
   output                       hdphy_3_tx_rep_prescascamp_en;
   output                       hdphy_cm_rxadc_en;
   output                       hdphy_cm_xosc_clk1_en;
   output                       hdphy_cm_pll_clk4en;
   output                       hdphy_0_rxadc_stby;
   output [ 2: 0]               hdphy_0_rxpi_div2;
   output [ 2: 0]               hdphy_0_txpi_div2;
   output [ 2: 0]               hdphy_0_cnpi_div2;
   output                       hdphy_0_cndac_stby;
   output                       hdphy_0_tx_mirrorbw;
   output [ 2: 0]               hdphy_0_hdsbi_ctrim;
   output                       hdphy_1_rxadc_stby;
   output [ 2: 0]               hdphy_1_rxpi_div2;
   output [ 2: 0]               hdphy_1_txpi_div2;
   output [ 2: 0]               hdphy_1_cnpi_div2;
   output                       hdphy_1_cndac_stby;
   output                       hdphy_1_tx_mirrorbw;
   output [ 2: 0]               hdphy_1_hdsbi_ctrim;
   output                       hdphy_2_rxadc_stby;
   output [ 2: 0]               hdphy_2_rxpi_div2;
   output [ 2: 0]               hdphy_2_txpi_div2;
   output [ 2: 0]               hdphy_2_cnpi_div2;
   output                       hdphy_2_cndac_stby;
   output                       hdphy_2_tx_mirrorbw;
   output [ 2: 0]               hdphy_2_hdsbi_ctrim;
   output                       hdphy_3_rxadc_stby;
   output [ 2: 0]               hdphy_3_rxpi_div2;
   output [ 2: 0]               hdphy_3_txpi_div2;
   output [ 2: 0]               hdphy_3_cnpi_div2;
   output                       hdphy_3_cndac_stby;
   output                       hdphy_3_tx_mirrorbw;
   output [ 2: 0]               hdphy_3_hdsbi_ctrim;
   output                       hdphy_cm_rxadc_stby;
   output [ 2: 0]               hdphy_cm_rxpi_div2;
   output                       hdphy_cm_xosc_clk2_en;
   output                       hdphy_cm_pll_clk5en;
   output                       hdphy_0_rxadc_clkrcven;
   output [ 3: 0]               hdphy_0_hyb_rtrim;
   output [ 3: 0]               hdphy_0_hyb_rxincapfine;
   output                       hdphy_0_rxpi_en;
   output                       hdphy_0_txpi_en;
   output                       hdphy_0_cnpi_en;
   output                       hdphy_0_cndac_clkrcven;
   output                       hdphy_0_tx_rep_cassel;
   output                       hdphy_0_hdsbi_en;
   input [ 4: 0]                hdphy_0_rxpi_calcode;
   output                       hdphy_1_rxadc_clkrcven;
   output [ 3: 0]               hdphy_1_hyb_rtrim;
   output [ 3: 0]               hdphy_1_hyb_rxincapfine;
   output                       hdphy_1_rxpi_en;
   output                       hdphy_1_txpi_en;
   output                       hdphy_1_cnpi_en;
   output                       hdphy_1_cndac_clkrcven;
   output                       hdphy_1_tx_rep_cassel;
   output                       hdphy_1_hdsbi_en;
   input [ 4: 0]                hdphy_1_rxpi_calcode;
   output                       hdphy_2_rxadc_clkrcven;
   output [ 3: 0]               hdphy_2_hyb_rtrim;
   output [ 3: 0]               hdphy_2_hyb_rxincapfine;
   output                       hdphy_2_rxpi_en;
   output                       hdphy_2_txpi_en;
   output                       hdphy_2_cnpi_en;
   output                       hdphy_2_cndac_clkrcven;
   output                       hdphy_2_tx_rep_cassel;
   output                       hdphy_2_hdsbi_en;
   input [ 4: 0]                hdphy_2_rxpi_calcode;
   output                       hdphy_3_rxadc_clkrcven;
   output [ 3: 0]               hdphy_3_hyb_rtrim;
   output [ 3: 0]               hdphy_3_hyb_rxincapfine;
   output                       hdphy_3_rxpi_en;
   output                       hdphy_3_txpi_en;
   output                       hdphy_3_cnpi_en;
   output                       hdphy_3_cndac_clkrcven;
   output                       hdphy_3_tx_rep_cassel;
   output                       hdphy_3_hdsbi_en;
   input [ 4: 0]                hdphy_3_rxpi_calcode;
   output                       hdphy_cm_rxadc_clkrcven;
   output [ 3: 0]               hdphy_cm_hyb_rtrim;
   output [ 3: 0]               hdphy_cm_hyb_rxincapfine;
   output                       hdphy_cm_rxpi_en;
   output                       hdphy_cm_xosc_en;
   output [ 2: 0]               hdphy_cm_pll_vrefadj;
   output                       hdphy_cm_pll_clk6en;
   output [ 4: 0]               hdphy_cm_atbsel;
   input [ 4: 0]                hdphy_cm_rxpi_calcode;
   
   
   input [31:0]                 snir_top_regs_rif_add_bus;
   input [31:0]                 snir_top_regs_rif_data_wr;
   input                        snir_top_regs_rif_wr;
   input [3:0]                  snir_top_regs_rif_byte_en;
   input                        snir_top_regs_rif_rd;
   output                       snir_top_regs_rif_ack;
   output [31:0]                snir_top_regs_rif_data_rd;


   
   input [31:0]                 reset_regs_add_bus;
   input [31:0]                 reset_regs_data_wr;
   input                        reset_regs_wr;
   input [3:0]                  reset_regs_byte_en;
   input                        reset_regs_rd;
   output                       reset_regs_ack;   
   output [31:0]                reset_regs_data_rd;

   
   input                        prel_reset_n;
   input                        sys_clk_pll_enable_int;
   output                       sys_clk_pll_enable;

   
   output                       lppf_symbol_done;
   input                        lppf_tx_bit;
   input                        lppf_tx_del;
   input                        lppf_tx_mode;
   input                        lppf_tx_active;

   
   output                       lppf_rx_active;
   output                       lppf_bit_out;
   output                       lppf_bit_sync;
   output                       lppf_del_on;
   output                       lppf_rx_descr_lock;
   output                       afe_if_squelch_clk;
   
   input                        lppf_link_clk_div_en; 

   
   input                         Snir_phy_rcv_clk_in;
   input                         Snir_phy_trn_clk_in;
   output                        Snir_phy_rcv_clk;
   output                        Snir_phy_trn_clk;

   
   output                       snir_phy_int_out;

   
   output [63:0]                phy_test_bus_sys;
   output [63:0]                phy_test_bus_trn;
   output [63:0]                phy_test_bus_rcv;
   
   
   output 			 vl_sms_afe_if_SMS_sms_1_WSO;
   input 			 vl_sms_WRCK;
   input 			 vl_sms_afe_if_SMS_sms_1_WSI;
   input 			 vl_sms_WRSTN;
   input 			 vl_sms_afe_if_SMS_sms_1_UpdateWR;
   input 			 vl_sms_SelectWIR;
   input 			 vl_sms_afe_if_SMS_sms_1_ShiftWR;
   input 			 vl_sms_afe_if_SMS_sms_1_CaptureWR;
   input 			 bist_clk;
   input 			 bist_reset_n;

   output 			 VM_probe; 


   assign VM_probe = 1'b1;   
   
   
   


   
   
   


   
   
   


   
   
   




   Snir_phy #(.TOK_W(TOK_W),
              .DAC_DATA_WIDTH(DAC_DATA_WIDTH),
              .RXADC_DATA_WIDTH(RXADC_DATA_WIDTH),
              .RXADC_DSP_DATA_WIDTH(RXADC_DSP_DATA_WIDTH),
              .SYS_CLKS_NUM(SYS_CLKS_NUM),
              .HDBT_CLKS_NUM(HDBT_CLKS_NUM),
              .LPPF_CLKS_NUM(LPPF_CLKS_NUM),
              .w_data_bus(w_data_bus),
              .w_add_bus(w_add_bus),
              .AUX_TOK_WIDTH(AUX_TOK_WIDTH),
              .FB_ADC_DW(FB_ADC_DW),
              .FB_ADC_OFFSET(FB_ADC_OFFSET),
              .SNIR_PHY_INTR_NUM(SNIR_PHY_INTR_NUM),
              .DSP_path(DSP_path),
              .LPPF_path(LPPF_path))
   Snir_phy
     (
      
      .scan_enable(scan_enable),
      .scan_mode(scan_mode),
      .sys_reset_n(sys_reset_n),
      .sys_clk(sys_clk),
      .ref_clk(ref_clk),
      .rcv_clk_scan(rcv_clk_scan),
      .trn_clk_scan(trn_clk_scan),
      
      
      
      
      

      
      .dsp_rif_add_bus(dsp_rif_add_bus),
      .dsp_rif_byte_en(dsp_rif_byte_en),
      .dsp_rif_wr(dsp_rif_wr), 
      .dsp_rif_rd(dsp_rif_rd), 
      .dsp_rif_data_wr(dsp_rif_data_wr),
      .dsp_rif_data_rd(dsp_rif_data_rd),
      .dsp_rif_ack(dsp_rif_ack),
      
      
      .link_rx_tokin_valid(link_rx_tokin_valid),
      .link_rx_tokin_data(link_rx_tokin_data),
      
      
      .link_tx_tokout_ready(link_tx_tokout_ready),
      .link_tx_tokout_valid(link_tx_tokout_valid),
      .link_tx_tokout_data(link_tx_tokout_data),

      
      .link_aux_tokout_data(link_aux_tokout_data),
      .link_aux_tokout_ready(link_aux_tokout_ready),
      
      
      .link_aux_tokin_data(link_aux_tokin_data),
      .link_aux_tokin_valid(link_aux_tokin_valid),	
      .link_aux_tokin_ready(link_aux_tokin_ready),              
      
      .Dan_retreq_data(Dan_retreq_data),
      .Dan_pcs_retr_req(Dan_pcs_retr_req),
      .Dan_pcs_retr_req_rdy(Dan_pcs_retr_req_rdy),
      
      
      
      
      
      
      

      
      .ref25M_sel(ref25M_sel),
      
      
      .snir_afe_if_addr_bus(snir_afe_if_addr_bus),
      .snir_afe_if_data_bus_wr(snir_afe_if_data_bus_wr),
      .snir_afe_if_bus_wr(snir_afe_if_bus_wr),
      .snir_afe_if_byte_en(snir_afe_if_byte_en),
      .snir_afe_if_bus_rd(snir_afe_if_bus_rd),
      .snir_afe_if_bus_ack(snir_afe_if_bus_ack),
      .snir_afe_if_data_bus_rd(snir_afe_if_data_bus_rd),

      
      .cpu_snir_afe_if_ram_bus_add(cpu_snir_afe_if_ram_bus_add),
      .cpu_snir_afe_if_ram_bus_wr(cpu_snir_afe_if_ram_bus_wr),
      .cpu_snir_afe_if_ram_bus_rd(cpu_snir_afe_if_ram_bus_rd),
      .cpu_snir_afe_if_ram_bus_ack(cpu_snir_afe_if_ram_bus_ack),
      .cpu_snir_afe_if_ram_data_bus_wr(cpu_snir_afe_if_ram_data_bus_wr),
      .cpu_snir_afe_if_ram_bus_data_rd(cpu_snir_afe_if_ram_bus_data_rd),
      .cpu_snir_afe_if_ram_byte_en(cpu_snir_afe_if_ram_byte_en),
      
      .hdphy_0_rxadc_dataclk(hdphy_0_rxadc_dataclk),
      .hdphy_0_rxadc_data(hdphy_0_rxadc_data),
      
      .hdphy_1_rxadc_dataclk(hdphy_1_rxadc_dataclk),
      .hdphy_1_rxadc_data(hdphy_1_rxadc_data),
      
      .hdphy_2_rxadc_dataclk(hdphy_2_rxadc_dataclk),
      .hdphy_2_rxadc_data(hdphy_2_rxadc_data),
      
      .hdphy_3_rxadc_dataclk(hdphy_3_rxadc_dataclk),
      .hdphy_3_rxadc_data(hdphy_3_rxadc_data),

      
      .hdphy_0_txdac_dataclk(hdphy_0_txdac_dataclk),
      .hdphy_0_txdac_data(hdphy_0_txdac_data),
      .hdphy_1_txdac_dataclk(hdphy_1_txdac_dataclk),
      .hdphy_1_txdac_data(hdphy_1_txdac_data),
      .hdphy_2_txdac_dataclk(hdphy_2_txdac_dataclk),
      .hdphy_2_txdac_data(hdphy_2_txdac_data),
      .hdphy_3_txdac_dataclk(hdphy_3_txdac_dataclk),
      .hdphy_3_txdac_data(hdphy_3_txdac_data),   
      
      
      .hdphy_0_rxadc_pi_inc(hdphy_0_rxadc_pi_inc),
      .hdphy_0_rxadc_pi_dec(hdphy_0_rxadc_pi_dec),
      .hdphy_1_rxadc_pi_inc(hdphy_1_rxadc_pi_inc),
      .hdphy_1_rxadc_pi_dec(hdphy_1_rxadc_pi_dec),
      .hdphy_2_rxadc_pi_inc(hdphy_2_rxadc_pi_inc),
      .hdphy_2_rxadc_pi_dec(hdphy_2_rxadc_pi_dec),
      .hdphy_3_rxadc_pi_inc(hdphy_3_rxadc_pi_inc),
      .hdphy_3_rxadc_pi_dec(hdphy_3_rxadc_pi_dec),
      
      .hdphy_cm_rxadc_pi_inc(hdphy_cm_rxadc_pi_inc),
      .hdphy_cm_rxadc_pi_dec(hdphy_cm_rxadc_pi_dec),
      
      .hdphy_0_txdac_pi_inc(hdphy_0_txdac_pi_inc),
      .hdphy_0_txdac_pi_dec(hdphy_0_txdac_pi_dec),
      .hdphy_1_txdac_pi_inc(hdphy_1_txdac_pi_inc),
      .hdphy_1_txdac_pi_dec(hdphy_1_txdac_pi_dec),
      .hdphy_2_txdac_pi_inc(hdphy_2_txdac_pi_inc),
      .hdphy_2_txdac_pi_dec(hdphy_2_txdac_pi_dec),
      .hdphy_3_txdac_pi_inc(hdphy_3_txdac_pi_inc),
      .hdphy_3_txdac_pi_dec(hdphy_3_txdac_pi_dec),
      
      .hdphy_0_cndac_pi_inc(hdphy_0_cndac_pi_inc),
      .hdphy_0_cndac_pi_dec(hdphy_0_cndac_pi_dec),
      .hdphy_1_cndac_pi_inc(hdphy_1_cndac_pi_inc),
      .hdphy_1_cndac_pi_dec(hdphy_1_cndac_pi_dec),
      .hdphy_2_cndac_pi_inc(hdphy_2_cndac_pi_inc),
      .hdphy_2_cndac_pi_dec(hdphy_2_cndac_pi_dec),
      .hdphy_3_cndac_pi_inc(hdphy_3_cndac_pi_inc),
      .hdphy_3_cndac_pi_dec(hdphy_3_cndac_pi_dec),
      
      
      .squelch_0_in(squelch_0_in),
      .squelch_1_in(squelch_1_in),
      .squelch_2_in(squelch_2_in),
      .squelch_3_in(squelch_3_in),

      
      .hdphy_0_reset(hdphy_0_reset),
      .hdphy_1_reset(hdphy_1_reset),
      .hdphy_2_reset(hdphy_2_reset),
      .hdphy_3_reset(hdphy_3_reset),
      .hdphy_cm_reset(hdphy_cm_reset),
      .hdphy_cm_reffreq(hdphy_cm_reffreq),
      .ioctrl_pi_pe(),
      .hdphy_0_bias_en(hdphy_0_bias_en),
      .hdphy_0_tx_cmnsel(hdphy_0_tx_cmnsel),
      .hdphy_1_bias_en(hdphy_1_bias_en),
      .hdphy_1_tx_cmnsel(hdphy_1_tx_cmnsel),
      .hdphy_2_bias_en(hdphy_2_bias_en),
      .hdphy_2_tx_cmnsel(hdphy_2_tx_cmnsel),
      .hdphy_3_bias_en(hdphy_3_bias_en),
      .hdphy_3_tx_cmnsel(hdphy_3_tx_cmnsel),
      .hdphy_cm_bias_en(hdphy_cm_bias_en),
      .hdphy_cm_xosc_stable(hdphy_cm_xosc_stable),
      .ioctrl_pi_ps(),
      .hdphy_0_rxadc_reset(hdphy_0_rxadc_reset),
      .hdphy_0_pi_biastrim(hdphy_0_pi_biastrim),
      .hdphy_0_tx_cmnmodeamp_en(hdphy_0_tx_cmnmodeamp_en),
      .hdphy_1_rxadc_reset(hdphy_1_rxadc_reset),
      .hdphy_1_pi_biastrim(hdphy_1_pi_biastrim),
      .hdphy_1_tx_cmnmodeamp_en(hdphy_1_tx_cmnmodeamp_en),
      .hdphy_2_rxadc_reset(hdphy_2_rxadc_reset),
      .hdphy_2_pi_biastrim(hdphy_2_pi_biastrim),
      .hdphy_2_tx_cmnmodeamp_en(hdphy_2_tx_cmnmodeamp_en),
      .hdphy_3_rxadc_reset(hdphy_3_rxadc_reset),
      .hdphy_3_pi_biastrim(hdphy_3_pi_biastrim),
      .hdphy_3_tx_cmnmodeamp_en(hdphy_3_tx_cmnmodeamp_en),
      .hdphy_cm_rxadc_reset(hdphy_cm_rxadc_reset),
      .hdphy_cm_pi_biastrim(hdphy_cm_pi_biastrim),
      .hdphy_cm_rccal_compout(hdphy_cm_rccal_compout),
      .ioctrl_pi_sl(),
      .hdphy_0_clkbuf_en(hdphy_0_clkbuf_en),
      .hdphy_0_tx_cn_en(hdphy_0_tx_cn_en),
      .hdphy_0_tx_rtrim(hdphy_0_tx_rtrim),
      .hdphy_1_clkbuf_en(hdphy_1_clkbuf_en),
      .hdphy_1_tx_cn_en(hdphy_1_tx_cn_en),
      .hdphy_1_tx_rtrim(hdphy_1_tx_rtrim),
      .hdphy_2_clkbuf_en(hdphy_2_clkbuf_en),
      .hdphy_2_tx_cn_en(hdphy_2_tx_cn_en),
      .hdphy_2_tx_rtrim(hdphy_2_tx_rtrim),
      .hdphy_3_clkbuf_en(hdphy_3_clkbuf_en),
      .hdphy_3_tx_cn_en(hdphy_3_tx_cn_en),
      .hdphy_3_tx_rtrim(hdphy_3_tx_rtrim),
      .hdphy_cm_rccal_done(hdphy_cm_rccal_done),
      .spare_0(),
      .ioctrl_pi_st1(),
      .hdphy_0_txdac_clksel(hdphy_0_txdac_clksel),
      .hdphy_0_tx_en(hdphy_0_tx_en),
      .hdphy_1_txdac_clksel(hdphy_1_txdac_clksel),
      .hdphy_1_tx_en(hdphy_1_tx_en),
      .hdphy_2_txdac_clksel(hdphy_2_txdac_clksel),
      .hdphy_2_tx_en(hdphy_2_tx_en),
      .hdphy_3_txdac_clksel(hdphy_3_txdac_clksel),
      .hdphy_3_tx_en(hdphy_3_tx_en),
      .ioctrl_pi_st0(),
      .hdphy_0_rxadc_biastrim(hdphy_0_rxadc_biastrim),
      .hdphy_0_hyb_repincapvcm(hdphy_0_hyb_repincapvcm),
      .hdphy_0_tx_standby(hdphy_0_tx_standby),
      .hdphy_1_rxadc_biastrim(hdphy_1_rxadc_biastrim),
      .hdphy_1_hyb_repincapvcm(hdphy_1_hyb_repincapvcm),
      .hdphy_1_tx_standby(hdphy_1_tx_standby),
      .hdphy_2_rxadc_biastrim(hdphy_2_rxadc_biastrim),
      .hdphy_2_hyb_repincapvcm(hdphy_2_hyb_repincapvcm),
      .hdphy_2_tx_standby(hdphy_2_tx_standby),
      .hdphy_3_rxadc_biastrim(hdphy_3_rxadc_biastrim),
      .hdphy_3_hyb_repincapvcm(hdphy_3_hyb_repincapvcm),
      .hdphy_3_tx_standby(hdphy_3_tx_standby),
      .hdphy_cm_rxadc_biastrim(hdphy_cm_rxadc_biastrim),
      .hdphy_cm_hyb_repincapvcm(hdphy_cm_hyb_repincapvcm),
      .hdphy_cm_pll_altrefclksel(hdphy_cm_pll_altrefclksel),
      .ioctrl_pi_he(),
      .hdphy_0_rxadc_clksel(hdphy_0_rxadc_clksel),
      .hdphy_0_lpf_amphighbw(hdphy_0_lpf_amphighbw),
      .hdphy_0_txdac_datamuxsel(hdphy_0_txdac_datamuxsel),
      .hdphy_1_rxadc_clksel(hdphy_1_rxadc_clksel),
      .hdphy_1_lpf_amphighbw(hdphy_1_lpf_amphighbw),
      .hdphy_1_txdac_datamuxsel(hdphy_1_txdac_datamuxsel),
      .hdphy_2_rxadc_clksel(hdphy_2_rxadc_clksel),
      .hdphy_2_lpf_amphighbw(hdphy_2_lpf_amphighbw),
      .hdphy_2_txdac_datamuxsel(hdphy_2_txdac_datamuxsel),
      .hdphy_3_rxadc_clksel(hdphy_3_rxadc_clksel),
      .hdphy_3_lpf_amphighbw(hdphy_3_lpf_amphighbw),
      .hdphy_3_txdac_datamuxsel(hdphy_3_txdac_datamuxsel),
      .hdphy_cm_rxadc_clksel(hdphy_cm_rxadc_clksel),
      .hdphy_cm_lpf_amphighbw(hdphy_cm_lpf_amphighbw),
      .hdphy_cm_pll_bgen(hdphy_cm_pll_bgen),
      .ioctrl_pi_ds1(),
      .hdphy_cm_pll_bypass(hdphy_cm_pll_bypass),
      .hdphy_cm_pll_clk3div(hdphy_cm_pll_clk3div),
      .gpio_config(),
      .ioctrl_pi_ds0(),
      .hdphy_0_rxadc_datamuxsel(hdphy_0_rxadc_datamuxsel),
      .hdphy_0_lpf_bandsel(hdphy_0_lpf_bandsel),
      .hdphy_1_rxadc_datamuxsel(hdphy_1_rxadc_datamuxsel),
      .hdphy_1_lpf_bandsel(hdphy_1_lpf_bandsel),
      .hdphy_2_rxadc_datamuxsel(hdphy_2_rxadc_datamuxsel),
      .hdphy_2_lpf_bandsel(hdphy_2_lpf_bandsel),
      .hdphy_3_rxadc_datamuxsel(hdphy_3_rxadc_datamuxsel),
      .hdphy_3_lpf_bandsel(hdphy_3_lpf_bandsel),
      .hdphy_cm_rxadc_datamuxsel(hdphy_cm_rxadc_datamuxsel),
      .hdphy_cm_lpf_bandsel(hdphy_cm_lpf_bandsel),
      .ioctrl_hdsbi_pe(),
      .hdphy_0_rxadc_f2isel(hdphy_0_rxadc_f2isel),
      .hdphy_0_cnpi_phase0(hdphy_0_cnpi_phase0),
      .hdphy_1_rxadc_f2isel(hdphy_1_rxadc_f2isel),
      .hdphy_1_cnpi_phase0(hdphy_1_cnpi_phase0),
      .hdphy_2_rxadc_f2isel(hdphy_2_rxadc_f2isel),
      .hdphy_2_cnpi_phase0(hdphy_2_cnpi_phase0),
      .hdphy_3_rxadc_f2isel(hdphy_3_rxadc_f2isel),
      .hdphy_3_cnpi_phase0(hdphy_3_cnpi_phase0),
      .hdphy_cm_rxadc_f2isel(hdphy_cm_rxadc_f2isel),
      .hdphy_cm_pll_vcocalbyp(hdphy_cm_pll_vcocalbyp),
      .ioctrl_hdsbi_ps(),
      .hdphy_0_tx_offset(hdphy_0_tx_offset),
      .hdphy_0_cnpi_caldone(hdphy_0_cnpi_caldone),
      .hdphy_1_tx_offset(hdphy_1_tx_offset),
      .hdphy_1_cnpi_caldone(hdphy_1_cnpi_caldone),
      .hdphy_2_tx_offset(hdphy_2_tx_offset),
      .hdphy_2_cnpi_caldone(hdphy_2_cnpi_caldone),
      .hdphy_3_tx_offset(hdphy_3_tx_offset),
      .hdphy_3_cnpi_caldone(hdphy_3_cnpi_caldone),
      .hdphy_cm_pll_cpgain(hdphy_cm_pll_cpgain),
      .hdphy_cm_pll_vcocalstart(hdphy_cm_pll_vcocalstart),
      .ioctrl_hdsbi_sl(),
      .hdphy_0_hyb_repincapcors(hdphy_0_hyb_repincapcors),
      .hdphy_1_hyb_repincapcors(hdphy_1_hyb_repincapcors),
      .hdphy_2_hyb_repincapcors(hdphy_2_hyb_repincapcors),
      .hdphy_3_hyb_repincapcors(hdphy_3_hyb_repincapcors),
      .hdphy_cm_hyb_repincapcors(hdphy_cm_hyb_repincapcors),
      .hdphy_cm_pll_en(hdphy_cm_pll_en),
      .spare_1(),
      .ioctrl_hdsbi_st1(),
      .hdphy_0_txdac_gain(hdphy_0_txdac_gain),
      .hdphy_1_txdac_gain(hdphy_1_txdac_gain),
      .hdphy_2_txdac_gain(hdphy_2_txdac_gain),
      .hdphy_3_txdac_gain(hdphy_3_txdac_gain),
      .dack_3_en(),
      .ioctrl_hdsbi_st0(),
      .hdphy_0_rxadc_offsetbw(hdphy_0_rxadc_offsetbw),
      .hdphy_0_lpf_bwtrimcap(hdphy_0_lpf_bwtrimcap),
      .hdphy_0_txdac_en(hdphy_0_txdac_en),
      .hdphy_1_rxadc_offsetbw(hdphy_1_rxadc_offsetbw),
      .hdphy_1_lpf_bwtrimcap(hdphy_1_lpf_bwtrimcap),
      .hdphy_1_txdac_en(hdphy_1_txdac_en),
      .hdphy_2_rxadc_offsetbw(hdphy_2_rxadc_offsetbw),
      .hdphy_2_lpf_bwtrimcap(hdphy_2_lpf_bwtrimcap),
      .hdphy_2_txdac_en(hdphy_2_txdac_en),
      .hdphy_3_rxadc_offsetbw(hdphy_3_rxadc_offsetbw),
      .hdphy_3_lpf_bwtrimcap(hdphy_3_lpf_bwtrimcap),
      .hdphy_3_txdac_en(hdphy_3_txdac_en),
      .hdphy_cm_rxadc_offsetbw(hdphy_cm_rxadc_offsetbw),
      .hdphy_cm_lpf_bwtrimcap(hdphy_cm_lpf_bwtrimcap),
      .dack_2_en(),
      .ioctrl_hdsbi_he(),
      .hdphy_0_rxadc_offsetbyp(hdphy_0_rxadc_offsetbyp),
      .hdphy_0_lpf_bypen(hdphy_0_lpf_bypen),
      .hdphy_0_txdac_stby(hdphy_0_txdac_stby),
      .hdphy_1_rxadc_offsetbyp(hdphy_1_rxadc_offsetbyp),
      .hdphy_1_lpf_bypen(hdphy_1_lpf_bypen),
      .hdphy_1_txdac_stby(hdphy_1_txdac_stby),
      .hdphy_2_rxadc_offsetbyp(hdphy_2_rxadc_offsetbyp),
      .hdphy_2_lpf_bypen(hdphy_2_lpf_bypen),
      .hdphy_2_txdac_stby(hdphy_2_txdac_stby),
      .hdphy_3_rxadc_offsetbyp(hdphy_3_rxadc_offsetbyp),
      .hdphy_3_lpf_bypen(hdphy_3_lpf_bypen),
      .hdphy_3_txdac_stby(hdphy_3_txdac_stby),
      .hdphy_cm_rxadc_offsetbyp(hdphy_cm_rxadc_offsetbyp),
      .hdphy_cm_lpf_bypen(hdphy_cm_lpf_bypen),
      .sram_1_full(1'b0),
      .dack_1_en(),
      .ioctrl_hdsbi_ds1(),
      .hdphy_0_rxadc_offsethold(hdphy_0_rxadc_offsethold),
      .hdphy_0_lpf_en(hdphy_0_lpf_en),
      .hdphy_0_hyb_repincapfine(hdphy_0_hyb_repincapfine),
      .hdphy_0_txdac_clkrcven(hdphy_0_txdac_clkrcven),
      .hdphy_0_tx_cn_offset(hdphy_0_tx_cn_offset),
      .hdphy_0_cnpi_calcode(hdphy_0_cnpi_calcode),
      .hdphy_1_rxadc_offsethold(hdphy_1_rxadc_offsethold),
      .hdphy_1_lpf_en(hdphy_1_lpf_en),
      .hdphy_1_hyb_repincapfine(hdphy_1_hyb_repincapfine),
      .hdphy_1_txdac_clkrcven(hdphy_1_txdac_clkrcven),
      .hdphy_1_tx_cn_offset(hdphy_1_tx_cn_offset),
      .hdphy_1_cnpi_calcode(hdphy_1_cnpi_calcode),
      .hdphy_2_rxadc_offsethold(hdphy_2_rxadc_offsethold),
      .hdphy_2_lpf_en(hdphy_2_lpf_en),
      .hdphy_2_hyb_repincapfine(hdphy_2_hyb_repincapfine),
      .hdphy_2_txdac_clkrcven(hdphy_2_txdac_clkrcven),
      .hdphy_2_tx_cn_offset(hdphy_2_tx_cn_offset),
      .hdphy_2_cnpi_calcode(hdphy_2_cnpi_calcode),
      .hdphy_3_rxadc_offsethold(hdphy_3_rxadc_offsethold),
      .hdphy_3_lpf_en(hdphy_3_lpf_en),
      .hdphy_3_hyb_repincapfine(hdphy_3_hyb_repincapfine),
      .hdphy_3_txdac_clkrcven(hdphy_3_txdac_clkrcven),
      .hdphy_3_tx_cn_offset(hdphy_3_tx_cn_offset),
      .hdphy_3_cnpi_calcode(hdphy_3_cnpi_calcode),
      .hdphy_cm_rxadc_offsethold(hdphy_cm_rxadc_offsethold),
      .hdphy_cm_lpf_en(hdphy_cm_lpf_en),
      .hdphy_cm_hyb_repincapfine(hdphy_cm_hyb_repincapfine),
      .hdphy_cm_pll_vcobandset(hdphy_cm_pll_vcobandset),
      .hdphy_cm_pll_clk4div(hdphy_cm_pll_clk4div),
      .hdphy_cm_rccal_delay(hdphy_cm_rccal_delay),
      .sram_0_full(1'b0),
      .dack_0_en(),
      .ioctrl_hdsbi_ds0(),
      .sram_lastaddr(),
      .rxpifg_0_cnt(),
      .rxpifg_1_cnt(),
      .rxpifg_2_cnt(),
      .rxpifg_3_cnt(),
      .rxpifg_cm_cnt(),
      .txpifg_0_cnt(),
      .txpifg_1_cnt(),
      .txpifg_2_cnt(),
      .txpifg_3_cnt(),
      .cnpifg_0_cnt(),
      .cnpifg_1_cnt(),
      .cnpifg_2_cnt(),
      .cnpifg_3_cnt(),
      .txreg_0_lfsr_seed(),
      .txreg_1_lfsr_seed(),
      .txreg_2_lfsr_seed(),
      .txreg_3_lfsr_seed(),
      .cnreg_0_lfsr_seed(),
      .cnreg_1_lfsr_seed(),
      .cnreg_2_lfsr_seed(),
      .cnreg_3_lfsr_seed(),
      .rxreg_train_1(),
      .lfsr_wb_lut_p15(),
      .lfsr_wb_lut_p13(),
      .lfsr_wb_lut_p11(),
      .lfsr_wb_lut_p9(),
      .lfsr_wb_lut_p7(),
      .lfsr_wb_lut_p5(),
      .lfsr_wb_lut_p3(),
      .lfsr_wb_lut_p1(),
      .lfsr_wb_lut_m1(),
      .lfsr_wb_lut_m3(),
      .lfsr_wb_lut_m5(),
      .lfsr_wb_lut_m7(),
      .lfsr_wb_lut_m9(),
      .lfsr_wb_lut_m11(),
      .lfsr_wb_lut_m13(),
      .lfsr_wb_lut_m15(),
      .hdphy_0_rxadc_polarity(hdphy_0_rxadc_polarity),
      .hdphy_0_tx_rep_en(hdphy_0_tx_rep_en),
      .hdphy_1_rxadc_polarity(hdphy_1_rxadc_polarity),
      .hdphy_1_tx_rep_en(hdphy_1_tx_rep_en),
      .hdphy_2_rxadc_polarity(hdphy_2_rxadc_polarity),
      .hdphy_2_tx_rep_en(hdphy_2_tx_rep_en),
      .hdphy_3_rxadc_polarity(hdphy_3_rxadc_polarity),
      .hdphy_3_tx_rep_en(hdphy_3_tx_rep_en),
      .hdphy_cm_rxadc_polarity(hdphy_cm_rxadc_polarity),
      .hdphy_cm_pll_frlocked(hdphy_cm_pll_frlocked),
      .ioctrl_regif_pe(),
      .txck_3_en(),
      .cnck_3_en(),
      .hdphy_0_hyb_amphighbw(hdphy_0_hyb_amphighbw),
      .hdphy_0_rxpi_calstart(hdphy_0_rxpi_calstart),
      .hdphy_0_txpi_calstart(hdphy_0_txpi_calstart),
      .hdphy_0_cnpi_calstart(hdphy_0_cnpi_calstart),
      .hdphy_0_txpi_phase0(hdphy_0_txpi_phase0),
      .hdphy_1_hyb_amphighbw(hdphy_1_hyb_amphighbw),
      .hdphy_1_rxpi_calstart(hdphy_1_rxpi_calstart),
      .hdphy_1_txpi_calstart(hdphy_1_txpi_calstart),
      .hdphy_1_cnpi_calstart(hdphy_1_cnpi_calstart),
      .hdphy_1_txpi_phase0(hdphy_1_txpi_phase0),
      .hdphy_2_hyb_amphighbw(hdphy_2_hyb_amphighbw),
      .hdphy_2_rxpi_calstart(hdphy_2_rxpi_calstart),
      .hdphy_2_txpi_calstart(hdphy_2_txpi_calstart),
      .hdphy_2_cnpi_calstart(hdphy_2_cnpi_calstart),
      .hdphy_2_txpi_phase0(hdphy_2_txpi_phase0),
      .hdphy_3_hyb_amphighbw(hdphy_3_hyb_amphighbw),
      .hdphy_3_rxpi_calstart(hdphy_3_rxpi_calstart),
      .hdphy_3_txpi_calstart(hdphy_3_txpi_calstart),
      .hdphy_3_cnpi_calstart(hdphy_3_cnpi_calstart),
      .hdphy_3_txpi_phase0(hdphy_3_txpi_phase0),
      .hdphy_cm_hyb_amphighbw(hdphy_cm_hyb_amphighbw),
      .hdphy_cm_rxpi_calstart(hdphy_cm_rxpi_calstart),
      .hdphy_cm_pll_phlocked(hdphy_cm_pll_phlocked),
      .ioctrl_regif_ps(),
      .txck_2_en(),
      .cnck_2_en(),
      .hdphy_0_rxadc_refsel(hdphy_0_rxadc_refsel),
      .hdphy_0_hyb_en(hdphy_0_hyb_en),
      .hdphy_0_rxpi_calovren(hdphy_0_rxpi_calovren),
      .hdphy_0_txpi_calovren(hdphy_0_txpi_calovren),
      .hdphy_0_cnpi_calovren(hdphy_0_cnpi_calovren),
      .hdphy_0_txpi_caldone(hdphy_0_txpi_caldone),
      .hdphy_1_rxadc_refsel(hdphy_1_rxadc_refsel),
      .hdphy_1_hyb_en(hdphy_1_hyb_en),
      .hdphy_1_rxpi_calovren(hdphy_1_rxpi_calovren),
      .hdphy_1_txpi_calovren(hdphy_1_txpi_calovren),
      .hdphy_1_cnpi_calovren(hdphy_1_cnpi_calovren),
      .hdphy_1_txpi_caldone(hdphy_1_txpi_caldone),
      .hdphy_2_rxadc_refsel(hdphy_2_rxadc_refsel),
      .hdphy_2_hyb_en(hdphy_2_hyb_en),
      .hdphy_2_rxpi_calovren(hdphy_2_rxpi_calovren),
      .hdphy_2_txpi_calovren(hdphy_2_txpi_calovren),
      .hdphy_2_cnpi_calovren(hdphy_2_cnpi_calovren),
      .hdphy_2_txpi_caldone(hdphy_2_txpi_caldone),
      .hdphy_3_rxadc_refsel(hdphy_3_rxadc_refsel),
      .hdphy_3_hyb_en(hdphy_3_hyb_en),
      .hdphy_3_rxpi_calovren(hdphy_3_rxpi_calovren),
      .hdphy_3_txpi_calovren(hdphy_3_txpi_calovren),
      .hdphy_3_cnpi_calovren(hdphy_3_cnpi_calovren),
      .hdphy_3_txpi_caldone(hdphy_3_txpi_caldone),
      .hdphy_cm_rxadc_refsel(hdphy_cm_rxadc_refsel),
      .hdphy_cm_hyb_en(hdphy_cm_hyb_en),
      .hdphy_cm_rxpi_calovren(hdphy_cm_rxpi_calovren),
      .hdphy_cm_pll_vcocaldone(hdphy_cm_pll_vcocaldone),
      .ioctrl_regif_sl(),
      .sram_1_ce(),
      .txck_1_en(),
      .cnck_1_en(),
      .hdphy_cm_rccal_start(hdphy_cm_rccal_start),
      .hdphy_cm_pll_fbdiv(hdphy_cm_pll_fbdiv),
      .hdphy_cm_pll_clk5div(hdphy_cm_pll_clk5div),
      .ioctrl_regif_st1(),
      .sram_0_ce(),
      .txck_0_en(),
      .cnck_0_en(),
      .hdphy_0_cndac_clksel(hdphy_0_cndac_clksel),
      .hdphy_1_cndac_clksel(hdphy_1_cndac_clksel),
      .hdphy_2_cndac_clksel(hdphy_2_cndac_clksel),
      .hdphy_3_cndac_clksel(hdphy_3_cndac_clksel),
      .hdphy_cm_pll_filtersel(hdphy_cm_pll_filtersel),
      .ioctrl_regif_st0(),
      .rxda_3_en(),
      .txda_3_en(),
      .cnda_3_en(),
      .hdphy_0_rxadc_shintrim(hdphy_0_rxadc_shintrim),
      .hdphy_0_hyb_rxincapvcm(hdphy_0_hyb_rxincapvcm),
      .hdphy_1_rxadc_shintrim(hdphy_1_rxadc_shintrim),
      .hdphy_1_hyb_rxincapvcm(hdphy_1_hyb_rxincapvcm),
      .hdphy_2_rxadc_shintrim(hdphy_2_rxadc_shintrim),
      .hdphy_2_hyb_rxincapvcm(hdphy_2_hyb_rxincapvcm),
      .hdphy_3_rxadc_shintrim(hdphy_3_rxadc_shintrim),
      .hdphy_3_hyb_rxincapvcm(hdphy_3_hyb_rxincapvcm),
      .hdphy_cm_rxadc_shintrim(hdphy_cm_rxadc_shintrim),
      .hdphy_cm_hyb_rxincapvcm(hdphy_cm_hyb_rxincapvcm),
      .hdphy_cm_pll_openloop(hdphy_cm_pll_openloop),
      .ioctrl_regif_he(),
      .rxda_2_en(),
      .txda_2_en(),
      .cnda_2_en(),
      .rxpifg_0_burst(),
      .rxpifg_1_burst(),
      .rxpifg_2_burst(),
      .rxpifg_3_burst(),
      .rxpifg_cm_burst(),
      .txpifg_0_burst(),
      .txpifg_1_burst(),
      .txpifg_2_burst(),
      .txpifg_3_burst(),
      .cnpifg_0_burst(),
      .cnpifg_1_burst(),
      .cnpifg_2_burst(),
      .cnpifg_3_burst(),
      .hdphy_0_hyb_fbcap(hdphy_0_hyb_fbcap),
      .hdphy_0_cndac_datamuxsel(hdphy_0_cndac_datamuxsel),
      .hdphy_0_hdsbi_fcsel(hdphy_0_hdsbi_fcsel),
      .hdphy_1_hyb_fbcap(hdphy_1_hyb_fbcap),
      .hdphy_1_cndac_datamuxsel(hdphy_1_cndac_datamuxsel),
      .hdphy_1_hdsbi_fcsel(hdphy_1_hdsbi_fcsel),
      .hdphy_2_hyb_fbcap(hdphy_2_hyb_fbcap),
      .hdphy_2_cndac_datamuxsel(hdphy_2_cndac_datamuxsel),
      .hdphy_2_hdsbi_fcsel(hdphy_2_hdsbi_fcsel),
      .hdphy_3_hyb_fbcap(hdphy_3_hyb_fbcap),
      .hdphy_3_cndac_datamuxsel(hdphy_3_cndac_datamuxsel),
      .hdphy_3_hdsbi_fcsel(hdphy_3_hdsbi_fcsel),
      .hdphy_cm_hyb_fbcap(hdphy_cm_hyb_fbcap),
      .hdphy_cm_pll_refclkdiv2(hdphy_cm_pll_refclkdiv2),
      .ioctrl_regif_ds1(),
      .rxda_1_en(),
      .txda_1_en(),
      .cnda_1_en(),
      .rxpifg_0_inc(),
      .rxpifg_1_inc(),
      .rxpifg_2_inc(),
      .rxpifg_3_inc(),
      .rxpifg_cm_inc(),
      .txpifg_0_inc(),
      .txpifg_1_inc(),
      .txpifg_2_inc(),
      .txpifg_3_inc(),
      .cnpifg_0_inc(),
      .cnpifg_1_inc(),
      .cnpifg_2_inc(),
      .cnpifg_3_inc(),
      .hdphy_0_hyb_fbcap2x(hdphy_0_hyb_fbcap2x),
      .hdphy_0_rxpi_calovr(hdphy_0_rxpi_calovr),
      .hdphy_0_txpi_calovr(hdphy_0_txpi_calovr),
      .hdphy_0_cnpi_calovr(hdphy_0_cnpi_calovr),
      .hdphy_0_tx_rep_ctrim(hdphy_0_tx_rep_ctrim),
      .hdphy_0_hdsbi_bypass(hdphy_0_hdsbi_bypass),
      .hdphy_0_txpi_calcode(hdphy_0_txpi_calcode),
      .hdphy_1_hyb_fbcap2x(hdphy_1_hyb_fbcap2x),
      .hdphy_1_rxpi_calovr(hdphy_1_rxpi_calovr),
      .hdphy_1_txpi_calovr(hdphy_1_txpi_calovr),
      .hdphy_1_cnpi_calovr(hdphy_1_cnpi_calovr),
      .hdphy_1_tx_rep_ctrim(hdphy_1_tx_rep_ctrim),
      .hdphy_1_hdsbi_bypass(hdphy_1_hdsbi_bypass),
      .hdphy_1_txpi_calcode(hdphy_1_txpi_calcode),
      .hdphy_2_hyb_fbcap2x(hdphy_2_hyb_fbcap2x),
      .hdphy_2_rxpi_calovr(hdphy_2_rxpi_calovr),
      .hdphy_2_txpi_calovr(hdphy_2_txpi_calovr),
      .hdphy_2_cnpi_calovr(hdphy_2_cnpi_calovr),
      .hdphy_2_tx_rep_ctrim(hdphy_2_tx_rep_ctrim),
      .hdphy_2_hdsbi_bypass(hdphy_2_hdsbi_bypass),
      .hdphy_2_txpi_calcode(hdphy_2_txpi_calcode),
      .hdphy_3_hyb_fbcap2x(hdphy_3_hyb_fbcap2x),
      .hdphy_3_rxpi_calovr(hdphy_3_rxpi_calovr),
      .hdphy_3_txpi_calovr(hdphy_3_txpi_calovr),
      .hdphy_3_cnpi_calovr(hdphy_3_cnpi_calovr),
      .hdphy_3_tx_rep_ctrim(hdphy_3_tx_rep_ctrim),
      .hdphy_3_hdsbi_bypass(hdphy_3_hdsbi_bypass),
      .hdphy_3_txpi_calcode(hdphy_3_txpi_calcode),
      .hdphy_cm_hyb_fbcap2x(hdphy_cm_hyb_fbcap2x),
      .hdphy_cm_rxpi_calovr(hdphy_cm_rxpi_calovr),
      .hdphy_cm_rccal_rtrim(hdphy_cm_rccal_rtrim),
      .hdphy_cm_pll_stby(hdphy_cm_pll_stby),
      .hdphy_cm_pll_clk6div(hdphy_cm_pll_clk6div),
      .hdphy_cm_pll_vcocalband(hdphy_cm_pll_vcocalband),
      .spare_2(),
      .ioctrl_regif_ds0(),
      .sram_sel(),
      .rxda_0_en(),
      .txda_0_en(),
      .cnda_0_en(),
      .rxpifg_0_en(),
      .rxpifg_1_en(),
      .rxpifg_2_en(),
      .rxpifg_3_en(),
      .rxpifg_cm_en(),
      .txpifg_0_en(),
      .txpifg_1_en(),
      .txpifg_2_en(),
      .txpifg_3_en(),
      .cnpifg_0_en(),
      .cnpifg_1_en(),
      .cnpifg_2_en(),
      .cnpifg_3_en(),
      .hdphy_0_rxadc_shouttrim(hdphy_0_rxadc_shouttrim),
      .hdphy_0_tx_swingboost(hdphy_0_tx_swingboost),
      .hdphy_1_rxadc_shouttrim(hdphy_1_rxadc_shouttrim),
      .hdphy_1_tx_swingboost(hdphy_1_tx_swingboost),
      .hdphy_2_rxadc_shouttrim(hdphy_2_rxadc_shouttrim),
      .hdphy_2_tx_swingboost(hdphy_2_tx_swingboost),
      .hdphy_3_rxadc_shouttrim(hdphy_3_rxadc_shouttrim),
      .hdphy_3_tx_swingboost(hdphy_3_tx_swingboost),
      .hdphy_cm_rxadc_shouttrim(hdphy_cm_rxadc_shouttrim),
      .hdphy_cm_l_refclk_cmlen(hdphy_cm_l_refclk_cmlen),
      .hdphy_cm_pll_termen(hdphy_cm_pll_termen),
      .hdphy_cm_atbchan(hdphy_cm_atbchan),
      .ioctrl_gpio_pe(),
      .ioctrl_refclk_pe(),
      .sram_1_start(),
      .rxda_ddr(),
      .txda_ddr(),
      .cnda_ddr(),
      .hdphy_0_rxadc_termen(hdphy_0_rxadc_termen),
      .hdphy_0_rxpi_bypass(hdphy_0_rxpi_bypass),
      .hdphy_0_txpi_bypass(hdphy_0_txpi_bypass),
      .hdphy_0_cnpi_bypass(hdphy_0_cnpi_bypass),
      .hdphy_0_tx_swingboostpp(hdphy_0_tx_swingboostpp),
      .hdphy_0_rxpi_phase0(hdphy_0_rxpi_phase0),
      .hdphy_1_rxadc_termen(hdphy_1_rxadc_termen),
      .hdphy_1_rxpi_bypass(hdphy_1_rxpi_bypass),
      .hdphy_1_txpi_bypass(hdphy_1_txpi_bypass),
      .hdphy_1_cnpi_bypass(hdphy_1_cnpi_bypass),
      .hdphy_1_tx_swingboostpp(hdphy_1_tx_swingboostpp),
      .hdphy_1_rxpi_phase0(hdphy_1_rxpi_phase0),
      .hdphy_2_rxadc_termen(hdphy_2_rxadc_termen),
      .hdphy_2_rxpi_bypass(hdphy_2_rxpi_bypass),
      .hdphy_2_txpi_bypass(hdphy_2_txpi_bypass),
      .hdphy_2_cnpi_bypass(hdphy_2_cnpi_bypass),
      .hdphy_2_tx_swingboostpp(hdphy_2_tx_swingboostpp),
      .hdphy_2_rxpi_phase0(hdphy_2_rxpi_phase0),
      .hdphy_3_rxadc_termen(hdphy_3_rxadc_termen),
      .hdphy_3_rxpi_bypass(hdphy_3_rxpi_bypass),
      .hdphy_3_txpi_bypass(hdphy_3_txpi_bypass),
      .hdphy_3_cnpi_bypass(hdphy_3_cnpi_bypass),
      .hdphy_3_tx_swingboostpp(hdphy_3_tx_swingboostpp),
      .hdphy_3_rxpi_phase0(hdphy_3_rxpi_phase0),
      .hdphy_cm_rxadc_termen(hdphy_cm_rxadc_termen),
      .hdphy_cm_rxpi_bypass(hdphy_cm_rxpi_bypass),
      .hdphy_cm_r_refclk_cmlen(hdphy_cm_r_refclk_cmlen),
      .hdphy_cm_rxpi_phase0(hdphy_cm_rxpi_phase0),
      .ioctrl_gpio_ps(),
      .ioctrl_refclk_ps(),
      .rxda_ddrdiv4(),
      .txda_ddrdiv4(),
      .cnda_ddrdiv4(),
      .hdphy_0_hyb_hpffreq(hdphy_0_hyb_hpffreq),
      .hdphy_0_tx_wb_en(hdphy_0_tx_wb_en),
      .hdphy_0_rxpi_caldone(hdphy_0_rxpi_caldone),
      .hdphy_1_hyb_hpffreq(hdphy_1_hyb_hpffreq),
      .hdphy_1_tx_wb_en(hdphy_1_tx_wb_en),
      .hdphy_1_rxpi_caldone(hdphy_1_rxpi_caldone),
      .hdphy_2_hyb_hpffreq(hdphy_2_hyb_hpffreq),
      .hdphy_2_tx_wb_en(hdphy_2_tx_wb_en),
      .hdphy_2_rxpi_caldone(hdphy_2_rxpi_caldone),
      .hdphy_3_hyb_hpffreq(hdphy_3_hyb_hpffreq),
      .hdphy_3_tx_wb_en(hdphy_3_tx_wb_en),
      .hdphy_3_rxpi_caldone(hdphy_3_rxpi_caldone),
      .hdphy_cm_hyb_hpffreq(hdphy_cm_hyb_hpffreq),
      .hdphy_cm_l_synthclk_cmlen(hdphy_cm_l_synthclk_cmlen),
      .hdphy_cm_pll_clk1en(hdphy_cm_pll_clk1en),
      .hdphy_cm_atbblk(hdphy_cm_atbblk),
      .hdphy_cm_rxpi_caldone(hdphy_cm_rxpi_caldone),
      .ioctrl_gpio_sl(),
      .ioctrl_refclk_sl(),
      .hdphy_0_hyb_lpfsel(hdphy_0_hyb_lpfsel),
      .hdphy_0_hyb_rxincapcors(hdphy_0_hyb_rxincapcors),
      .hdphy_0_rxpi_div1(hdphy_0_rxpi_div1),
      .hdphy_0_txpi_div1(hdphy_0_txpi_div1),
      .hdphy_0_cnpi_div1(hdphy_0_cnpi_div1),
      .hdphy_0_tx_prescascamp_bw(hdphy_0_tx_prescascamp_bw),
      .hdphy_0_hdsbi_thresh(hdphy_0_hdsbi_thresh),
      .hdphy_1_hyb_lpfsel(hdphy_1_hyb_lpfsel),
      .hdphy_1_hyb_rxincapcors(hdphy_1_hyb_rxincapcors),
      .hdphy_1_rxpi_div1(hdphy_1_rxpi_div1),
      .hdphy_1_txpi_div1(hdphy_1_txpi_div1),
      .hdphy_1_cnpi_div1(hdphy_1_cnpi_div1),
      .hdphy_1_tx_prescascamp_bw(hdphy_1_tx_prescascamp_bw),
      .hdphy_1_hdsbi_thresh(hdphy_1_hdsbi_thresh),
      .hdphy_2_hyb_lpfsel(hdphy_2_hyb_lpfsel),
      .hdphy_2_hyb_rxincapcors(hdphy_2_hyb_rxincapcors),
      .hdphy_2_rxpi_div1(hdphy_2_rxpi_div1),
      .hdphy_2_txpi_div1(hdphy_2_txpi_div1),
      .hdphy_2_cnpi_div1(hdphy_2_cnpi_div1),
      .hdphy_2_tx_prescascamp_bw(hdphy_2_tx_prescascamp_bw),
      .hdphy_2_hdsbi_thresh(hdphy_2_hdsbi_thresh),
      .hdphy_3_hyb_lpfsel(hdphy_3_hyb_lpfsel),
      .hdphy_3_hyb_rxincapcors(hdphy_3_hyb_rxincapcors),
      .hdphy_3_rxpi_div1(hdphy_3_rxpi_div1),
      .hdphy_3_txpi_div1(hdphy_3_txpi_div1),
      .hdphy_3_cnpi_div1(hdphy_3_cnpi_div1),
      .hdphy_3_tx_prescascamp_bw(hdphy_3_tx_prescascamp_bw),
      .hdphy_3_hdsbi_thresh(hdphy_3_hdsbi_thresh),
      .hdphy_cm_hyb_lpfsel(hdphy_cm_hyb_lpfsel),
      .hdphy_cm_hyb_rxincapcors(hdphy_cm_hyb_rxincapcors),
      .hdphy_cm_rxpi_div1(hdphy_cm_rxpi_div1),
      .hdphy_cm_r_synthclk_cmlen(hdphy_cm_r_synthclk_cmlen),
      .hdphy_cm_pll_clk2en(hdphy_cm_pll_clk2en),
      .chipid(12'h0),
      .ioctrl_gpio_st1(),
      .ioctrl_refclk_st1(),
      .sram_1_mode(),
      .hdphy_0_rxadc_trim(hdphy_0_rxadc_trim),
      .hdphy_0_cndac_gain(hdphy_0_cndac_gain),
      .hdphy_0_tx_rep_prescascamp_bw(hdphy_0_tx_rep_prescascamp_bw),
      .hdphy_1_rxadc_trim(hdphy_1_rxadc_trim),
      .hdphy_1_cndac_gain(hdphy_1_cndac_gain),
      .hdphy_1_tx_rep_prescascamp_bw(hdphy_1_tx_rep_prescascamp_bw),
      .hdphy_2_rxadc_trim(hdphy_2_rxadc_trim),
      .hdphy_2_cndac_gain(hdphy_2_cndac_gain),
      .hdphy_2_tx_rep_prescascamp_bw(hdphy_2_tx_rep_prescascamp_bw),
      .hdphy_3_rxadc_trim(hdphy_3_rxadc_trim),
      .hdphy_3_cndac_gain(hdphy_3_cndac_gain),
      .hdphy_3_tx_rep_prescascamp_bw(hdphy_3_tx_rep_prescascamp_bw),
      .hdphy_cm_rxadc_trim(hdphy_cm_rxadc_trim),
      .hdphy_cm_pll_vcoitrim(hdphy_cm_pll_vcoitrim),
      .hdphy_cm_pll_clk3en(hdphy_cm_pll_clk3en),
      .ioctrl_gpio_st0(),
      .ioctrl_refclk_st0(),
      .sram_0_start(),
      .rxreg_0_train_sel(),
      .rxreg_1_train_sel(),
      .rxreg_2_train_sel(),
      .rxreg_3_train_sel(),
      .rxreg_cm_train_sel(),
      .hdphy_0_rxadc_en(hdphy_0_rxadc_en),
      .hdphy_0_cndac_en(hdphy_0_cndac_en),
      .hdphy_0_tx_rep_prescascamp_en(hdphy_0_tx_rep_prescascamp_en),
      .hdphy_1_rxadc_en(hdphy_1_rxadc_en),
      .hdphy_1_cndac_en(hdphy_1_cndac_en),
      .hdphy_1_tx_rep_prescascamp_en(hdphy_1_tx_rep_prescascamp_en),
      .hdphy_2_rxadc_en(hdphy_2_rxadc_en),
      .hdphy_2_cndac_en(hdphy_2_cndac_en),
      .hdphy_2_tx_rep_prescascamp_en(hdphy_2_tx_rep_prescascamp_en),
      .hdphy_3_rxadc_en(hdphy_3_rxadc_en),
      .hdphy_3_cndac_en(hdphy_3_cndac_en),
      .hdphy_3_tx_rep_prescascamp_en(hdphy_3_tx_rep_prescascamp_en),
      .hdphy_cm_rxadc_en(hdphy_cm_rxadc_en),
      .hdphy_cm_xosc_clk1_en(hdphy_cm_xosc_clk1_en),
      .hdphy_cm_pll_clk4en(hdphy_cm_pll_clk4en),
      .ioctrl_gpio_he(),
      .ioctrl_refclk_he(),
      .hdphy_0_rxadc_stby(hdphy_0_rxadc_stby),
      .hdphy_0_rxpi_div2(hdphy_0_rxpi_div2),
      .hdphy_0_txpi_div2(hdphy_0_txpi_div2),
      .hdphy_0_cnpi_div2(hdphy_0_cnpi_div2),
      .hdphy_0_cndac_stby(hdphy_0_cndac_stby),
      .hdphy_0_tx_mirrorbw(hdphy_0_tx_mirrorbw),
      .hdphy_0_hdsbi_ctrim(hdphy_0_hdsbi_ctrim),
      .hdphy_1_rxadc_stby(hdphy_1_rxadc_stby),
      .hdphy_1_rxpi_div2(hdphy_1_rxpi_div2),
      .hdphy_1_txpi_div2(hdphy_1_txpi_div2),
      .hdphy_1_cnpi_div2(hdphy_1_cnpi_div2),
      .hdphy_1_cndac_stby(hdphy_1_cndac_stby),
      .hdphy_1_tx_mirrorbw(hdphy_1_tx_mirrorbw),
      .hdphy_1_hdsbi_ctrim(hdphy_1_hdsbi_ctrim),
      .hdphy_2_rxadc_stby(hdphy_2_rxadc_stby),
      .hdphy_2_rxpi_div2(hdphy_2_rxpi_div2),
      .hdphy_2_txpi_div2(hdphy_2_txpi_div2),
      .hdphy_2_cnpi_div2(hdphy_2_cnpi_div2),
      .hdphy_2_cndac_stby(hdphy_2_cndac_stby),
      .hdphy_2_tx_mirrorbw(hdphy_2_tx_mirrorbw),
      .hdphy_2_hdsbi_ctrim(hdphy_2_hdsbi_ctrim),
      .hdphy_3_rxadc_stby(hdphy_3_rxadc_stby),
      .hdphy_3_rxpi_div2(hdphy_3_rxpi_div2),
      .hdphy_3_txpi_div2(hdphy_3_txpi_div2),
      .hdphy_3_cnpi_div2(hdphy_3_cnpi_div2),
      .hdphy_3_cndac_stby(hdphy_3_cndac_stby),
      .hdphy_3_tx_mirrorbw(hdphy_3_tx_mirrorbw),
      .hdphy_3_hdsbi_ctrim(hdphy_3_hdsbi_ctrim),
      .hdphy_cm_rxadc_stby(hdphy_cm_rxadc_stby),
      .hdphy_cm_rxpi_div2(hdphy_cm_rxpi_div2),
      .hdphy_cm_xosc_clk2_en(hdphy_cm_xosc_clk2_en),
      .hdphy_cm_pll_clk5en(hdphy_cm_pll_clk5en),
      .ioctrl_gpio_ds1(),
      .ioctrl_refclk_ds1(),
      .hdphy_0_rxadc_clkrcven(hdphy_0_rxadc_clkrcven),
      .hdphy_0_hyb_rtrim(hdphy_0_hyb_rtrim),
      .hdphy_0_hyb_rxincapfine(hdphy_0_hyb_rxincapfine),
      .hdphy_0_rxpi_en(hdphy_0_rxpi_en),
      .hdphy_0_txpi_en(hdphy_0_txpi_en),
      .hdphy_0_cnpi_en(hdphy_0_cnpi_en),
      .hdphy_0_cndac_clkrcven(hdphy_0_cndac_clkrcven),
      .hdphy_0_tx_rep_cassel(hdphy_0_tx_rep_cassel),
      .hdphy_0_hdsbi_en(hdphy_0_hdsbi_en),
      .hdphy_0_rxpi_calcode(hdphy_0_rxpi_calcode),
      .hdphy_1_rxadc_clkrcven(hdphy_1_rxadc_clkrcven),
      .hdphy_1_hyb_rtrim(hdphy_1_hyb_rtrim),
      .hdphy_1_hyb_rxincapfine(hdphy_1_hyb_rxincapfine),
      .hdphy_1_rxpi_en(hdphy_1_rxpi_en),
      .hdphy_1_txpi_en(hdphy_1_txpi_en),
      .hdphy_1_cnpi_en(hdphy_1_cnpi_en),
      .hdphy_1_cndac_clkrcven(hdphy_1_cndac_clkrcven),
      .hdphy_1_tx_rep_cassel(hdphy_1_tx_rep_cassel),
      .hdphy_1_hdsbi_en(hdphy_1_hdsbi_en),
      .hdphy_1_rxpi_calcode(hdphy_1_rxpi_calcode),
      .hdphy_2_rxadc_clkrcven(hdphy_2_rxadc_clkrcven),
      .hdphy_2_hyb_rtrim(hdphy_2_hyb_rtrim),
      .hdphy_2_hyb_rxincapfine(hdphy_2_hyb_rxincapfine),
      .hdphy_2_rxpi_en(hdphy_2_rxpi_en),
      .hdphy_2_txpi_en(hdphy_2_txpi_en),
      .hdphy_2_cnpi_en(hdphy_2_cnpi_en),
      .hdphy_2_cndac_clkrcven(hdphy_2_cndac_clkrcven),
      .hdphy_2_tx_rep_cassel(hdphy_2_tx_rep_cassel),
      .hdphy_2_hdsbi_en(hdphy_2_hdsbi_en),
      .hdphy_2_rxpi_calcode(hdphy_2_rxpi_calcode),
      .hdphy_3_rxadc_clkrcven(hdphy_3_rxadc_clkrcven),
      .hdphy_3_hyb_rtrim(hdphy_3_hyb_rtrim),
      .hdphy_3_hyb_rxincapfine(hdphy_3_hyb_rxincapfine),
      .hdphy_3_rxpi_en(hdphy_3_rxpi_en),
      .hdphy_3_txpi_en(hdphy_3_txpi_en),
      .hdphy_3_cnpi_en(hdphy_3_cnpi_en),
      .hdphy_3_cndac_clkrcven(hdphy_3_cndac_clkrcven),
      .hdphy_3_tx_rep_cassel(hdphy_3_tx_rep_cassel),
      .hdphy_3_hdsbi_en(hdphy_3_hdsbi_en),
      .hdphy_3_rxpi_calcode(hdphy_3_rxpi_calcode),
      .hdphy_cm_rxadc_clkrcven(hdphy_cm_rxadc_clkrcven),
      .hdphy_cm_hyb_rtrim(hdphy_cm_hyb_rtrim),
      .hdphy_cm_hyb_rxincapfine(hdphy_cm_hyb_rxincapfine),
      .hdphy_cm_rxpi_en(hdphy_cm_rxpi_en),
      .hdphy_cm_xosc_en(hdphy_cm_xosc_en),
      .hdphy_cm_pll_vrefadj(hdphy_cm_pll_vrefadj),
      .hdphy_cm_pll_clk6en(hdphy_cm_pll_clk6en),
      .hdphy_cm_atbsel(hdphy_cm_atbsel),
      .hdphy_cm_rxpi_calcode(hdphy_cm_rxpi_calcode),
      .revision(4'h0),
      .ioctrl_gpio_ds0(),
      .ioctrl_refclk_ds0(),
      .sram_0_mode(),
      .rxda_muxsel(),
      .txda_muxsel(),
      .cnda_muxsel(),
      .rxreg_0_mode(),
      .rxreg_1_mode(),
      .rxreg_2_mode(),
      .rxreg_3_mode(),
      .rxreg_cm_mode(),
      .txreg_0_mode(),
      .txreg_1_mode(),
      .txreg_2_mode(),
      .txreg_3_mode(),
      .cnreg_0_mode(),
      .cnreg_1_mode(),
      .cnreg_2_mode(),
      .cnreg_3_mode(),
      .txreg_0_lfsr_div(),
      .txreg_1_lfsr_div(),
      .txreg_2_lfsr_div(),
      .txreg_3_lfsr_div(),
      .cnreg_0_lfsr_div(),
      .cnreg_1_lfsr_div(),
      .cnreg_2_lfsr_div(),
      .cnreg_3_lfsr_div(),
      .rxreg_train_0(),
      .txreg_0_fgen_freqa(),
      .txreg_0_fgen_freqb(),
      .txreg_1_fgen_freqa(),
      .txreg_1_fgen_freqb(),
      .txreg_2_fgen_freqa(),
      .txreg_2_fgen_freqb(),
      .txreg_3_fgen_freqa(),
      .txreg_3_fgen_freqb(),
      .cnreg_0_fgen_freqa(),
      .cnreg_0_fgen_freqb(),
      .cnreg_1_fgen_freqa(),
      .cnreg_1_fgen_freqb(),
      .cnreg_2_fgen_freqa(),
      .cnreg_2_fgen_freqb(),
      .cnreg_3_fgen_freqa(),
      .cnreg_3_fgen_freqb(),
      .lfsr_nb_lut_p15(),
      .lfsr_nb_lut_p13(),
      .lfsr_nb_lut_p11(),
      .lfsr_nb_lut_p9(),
      .lfsr_nb_lut_p7(),
      .lfsr_nb_lut_p5(),
      .lfsr_nb_lut_p3(),
      .lfsr_nb_lut_p1(),
      .lfsr_nb_lut_m1(),
      .lfsr_nb_lut_m3(),
      .lfsr_nb_lut_m5(),
      .lfsr_nb_lut_m7(),
      .lfsr_nb_lut_m9(),
      .lfsr_nb_lut_m11(),
      .lfsr_nb_lut_m13(),
      .lfsr_nb_lut_m15(),

      
      .snir_top_regs_rif_add_bus(snir_top_regs_rif_add_bus),
      .snir_top_regs_rif_data_wr(snir_top_regs_rif_data_wr),
      .snir_top_regs_rif_wr(snir_top_regs_rif_wr),
      .snir_top_regs_rif_byte_en(snir_top_regs_rif_byte_en),
      .snir_top_regs_rif_rd(snir_top_regs_rif_rd),
      .snir_top_regs_rif_ack(snir_top_regs_rif_ack),
      .snir_top_regs_rif_data_rd(snir_top_regs_rif_data_rd),

      .fpga_status_0(32'h0),
      .fpga_status_1(32'h0),
      .fpga_status_2(32'h0),
      .fpga_status_3(32'h0),
      .fpga_status_4(32'h0),
      .fpga_status_5(32'h0),
      .fpga_status_6(32'h0),
      .fpga_status_7(32'h0),
      .fpga_status_8(32'h0),
      .fpga_status_9(32'h0),
      .fpga_status_10(32'h0),
      .fpga_status_11(32'h0),
      .fpga_status_12(32'h0),
      .fpga_status_13(32'h0),
      .fpga_status_14(32'h0),
      .fpga_status_15(32'h0),
      .fpga_status_16(32'h0),
      .fpga_status_17(32'h0),
      .fpga_status_18(32'h0),
      .fpga_status_19(32'h0),
      .fpga_config_0(),
      .fpga_config_1(),
      .fpga_config_2(),
      .fpga_config_3(),
      .fpga_config_4(),
      .fpga_config_5(),
      .fpga_config_6(),
      .fpga_config_7(),
      .fpga_config_8(),
      .fpga_config_9(),
      .fpga_config_10(),
      .fpga_config_11(),
      .fpga_config_12(),
      .fpga_config_13(),
      .fpga_config_14(),
      .fpga_config_15(),
      .fpga_config_16(),
      .fpga_config_17(),
      .fpga_config_18(),
      .fpga_config_19(),
      .fpga_version_data(32'h0),
      
      
      .reset_regs_add_bus(reset_regs_add_bus),
      .reset_regs_data_wr(reset_regs_data_wr),
      .reset_regs_wr(reset_regs_wr),
      .reset_regs_byte_en(reset_regs_byte_en),
      .reset_regs_rd(reset_regs_rd),
      .reset_regs_ack(reset_regs_ack),   
      .reset_regs_data_rd(reset_regs_data_rd),
      .prel_reset_n(prel_reset_n),
      .sys_clk_pll_enable_int(sys_clk_pll_enable_int),
      .sys_clk_pll_enable(sys_clk_pll_enable),

      
      .lppf_symbol_done(lppf_symbol_done),
      .lppf_tx_bit(lppf_tx_bit),
      .lppf_tx_del(lppf_tx_del),
      .lppf_tx_mode(lppf_tx_mode),
      .lppf_tx_active(lppf_tx_active),

      
      .lppf_rx_active(lppf_rx_active),
      .lppf_bit_out(lppf_bit_out),
      .lppf_bit_sync(lppf_bit_sync),
      .lppf_del_on(lppf_del_on),
      .lppf_rx_descr_lock(lppf_rx_descr_lock),
      .afe_if_squelch_clk(afe_if_squelch_clk),
      
      .lppf_link_clk_div_en(lppf_link_clk_div_en),

      
      .Snir_phy_rcv_clk_in(Snir_phy_rcv_clk_in),
      .Snir_phy_trn_clk_in(Snir_phy_trn_clk_in),
      .Snir_phy_rcv_clk(Snir_phy_rcv_clk),
      .Snir_phy_trn_clk(Snir_phy_trn_clk),                                         
      
      
      .snir_phy_int_out(snir_phy_int_out),

      
      .phy_test_bus_sys(phy_test_bus_sys),
      .phy_test_bus_trn(phy_test_bus_trn),
      .phy_test_bus_rcv(phy_test_bus_rcv),
      
      
      .vl_sms_afe_if_SMS_sms_1_WSO       (vl_sms_afe_if_SMS_sms_1_WSO      ),
      .vl_sms_WRCK                       (vl_sms_WRCK                      ),
      .vl_sms_afe_if_SMS_sms_1_WSI       (vl_sms_afe_if_SMS_sms_1_WSI      ),
      .vl_sms_WRSTN                      (vl_sms_WRSTN                     ),
      .vl_sms_afe_if_SMS_sms_1_UpdateWR  (vl_sms_afe_if_SMS_sms_1_UpdateWR ),
      .vl_sms_SelectWIR                  (vl_sms_SelectWIR                 ),
      .vl_sms_afe_if_SMS_sms_1_ShiftWR   (vl_sms_afe_if_SMS_sms_1_ShiftWR  ),
      .vl_sms_afe_if_SMS_sms_1_CaptureWR (vl_sms_afe_if_SMS_sms_1_CaptureWR),
      .bist_clk           (bist_clk      ),    
      .bist_reset_n       (bist_reset_n  )
      );      



endmodule 



