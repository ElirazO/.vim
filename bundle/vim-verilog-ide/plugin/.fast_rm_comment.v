

























































































 



module Snir_phy
  (
   
   scan_enable,
   scan_mode,
   sys_reset_n,
   sys_clk,
   ref_clk,
   rcv_clk_scan,
   trn_clk_scan,
   
   
   
   
   

   
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
   ioctrl_pi_pe,
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
   ioctrl_pi_ps,
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
   ioctrl_pi_sl,
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
   spare_0,
   ioctrl_pi_st1,
   hdphy_0_txdac_clksel,
   hdphy_0_tx_en,
   hdphy_1_txdac_clksel,
   hdphy_1_tx_en,
   hdphy_2_txdac_clksel,
   hdphy_2_tx_en,
   hdphy_3_txdac_clksel,
   hdphy_3_tx_en,
   ioctrl_pi_st0,
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
   ioctrl_pi_he,
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
   ioctrl_pi_ds1,
   hdphy_cm_pll_bypass,
   hdphy_cm_pll_clk3div,
   gpio_config,
   ioctrl_pi_ds0,
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
   ioctrl_hdsbi_pe,
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
   ioctrl_hdsbi_ps,
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
   ioctrl_hdsbi_sl,
   hdphy_0_hyb_repincapcors,
   hdphy_1_hyb_repincapcors,
   hdphy_2_hyb_repincapcors,
   hdphy_3_hyb_repincapcors,
   hdphy_cm_hyb_repincapcors,
   hdphy_cm_pll_en,
   spare_1,
   ioctrl_hdsbi_st1,
   hdphy_0_txdac_gain,
   hdphy_1_txdac_gain,
   hdphy_2_txdac_gain,
   hdphy_3_txdac_gain,
   dack_3_en,
   ioctrl_hdsbi_st0,
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
   dack_2_en,
   ioctrl_hdsbi_he,
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
   sram_1_full,
   dack_1_en,
   ioctrl_hdsbi_ds1,
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
   sram_0_full,
   dack_0_en,
   ioctrl_hdsbi_ds0,
   sram_lastaddr,
   rxpifg_0_cnt,
   rxpifg_1_cnt,
   rxpifg_2_cnt,
   rxpifg_3_cnt,
   rxpifg_cm_cnt,
   txpifg_0_cnt,
   txpifg_1_cnt,
   txpifg_2_cnt,
   txpifg_3_cnt,
   cnpifg_0_cnt,
   cnpifg_1_cnt,
   cnpifg_2_cnt,
   cnpifg_3_cnt,
   txreg_0_lfsr_seed,
   txreg_1_lfsr_seed,
   txreg_2_lfsr_seed,
   txreg_3_lfsr_seed,
   cnreg_0_lfsr_seed,
   cnreg_1_lfsr_seed,
   cnreg_2_lfsr_seed,
   cnreg_3_lfsr_seed,
   rxreg_train_1,
   lfsr_wb_lut_p15,
   lfsr_wb_lut_p13,
   lfsr_wb_lut_p11,
   lfsr_wb_lut_p9,
   lfsr_wb_lut_p7,
   lfsr_wb_lut_p5,
   lfsr_wb_lut_p3,
   lfsr_wb_lut_p1,
   lfsr_wb_lut_m1,
   lfsr_wb_lut_m3,
   lfsr_wb_lut_m5,
   lfsr_wb_lut_m7,
   lfsr_wb_lut_m9,
   lfsr_wb_lut_m11,
   lfsr_wb_lut_m13,
   lfsr_wb_lut_m15,
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
   ioctrl_regif_pe,
   txck_3_en,
   cnck_3_en,
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
   ioctrl_regif_ps,
   txck_2_en,
   cnck_2_en,
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
   ioctrl_regif_sl,
   sram_1_ce,
   txck_1_en,
   cnck_1_en,
   hdphy_cm_rccal_start,
   hdphy_cm_pll_fbdiv,
   hdphy_cm_pll_clk5div,
   ioctrl_regif_st1,
   sram_0_ce,
   txck_0_en,
   cnck_0_en,
   hdphy_0_cndac_clksel,
   hdphy_1_cndac_clksel,
   hdphy_2_cndac_clksel,
   hdphy_3_cndac_clksel,
   hdphy_cm_pll_filtersel,
   ioctrl_regif_st0,
   rxda_3_en,
   txda_3_en,
   cnda_3_en,
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
   ioctrl_regif_he,
   rxda_2_en,
   txda_2_en,
   cnda_2_en,
   rxpifg_0_burst,
   rxpifg_1_burst,
   rxpifg_2_burst,
   rxpifg_3_burst,
   rxpifg_cm_burst,
   txpifg_0_burst,
   txpifg_1_burst,
   txpifg_2_burst,
   txpifg_3_burst,
   cnpifg_0_burst,
   cnpifg_1_burst,
   cnpifg_2_burst,
   cnpifg_3_burst,
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
   ioctrl_regif_ds1,
   rxda_1_en,
   txda_1_en,
   cnda_1_en,
   rxpifg_0_inc,
   rxpifg_1_inc,
   rxpifg_2_inc,
   rxpifg_3_inc,
   rxpifg_cm_inc,
   txpifg_0_inc,
   txpifg_1_inc,
   txpifg_2_inc,
   txpifg_3_inc,
   cnpifg_0_inc,
   cnpifg_1_inc,
   cnpifg_2_inc,
   cnpifg_3_inc,
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
   spare_2,
   ioctrl_regif_ds0,
   sram_sel,
   rxda_0_en,
   txda_0_en,
   cnda_0_en,
   rxpifg_0_en,
   rxpifg_1_en,
   rxpifg_2_en,
   rxpifg_3_en,
   rxpifg_cm_en,
   txpifg_0_en,
   txpifg_1_en,
   txpifg_2_en,
   txpifg_3_en,
   cnpifg_0_en,
   cnpifg_1_en,
   cnpifg_2_en,
   cnpifg_3_en,
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
   ioctrl_gpio_pe,
   ioctrl_refclk_pe,
   sram_1_start,
   rxda_ddr,
   txda_ddr,
   cnda_ddr,
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
   ioctrl_gpio_ps,
   ioctrl_refclk_ps,
   rxda_ddrdiv4,
   txda_ddrdiv4,
   cnda_ddrdiv4,
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
   ioctrl_gpio_sl,
   ioctrl_refclk_sl,
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
   chipid,
   ioctrl_gpio_st1,
   ioctrl_refclk_st1,
   sram_1_mode,
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
   ioctrl_gpio_st0,
   ioctrl_refclk_st0,
   sram_0_start,
   rxreg_0_train_sel,
   rxreg_1_train_sel,
   rxreg_2_train_sel,
   rxreg_3_train_sel,
   rxreg_cm_train_sel,
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
   ioctrl_gpio_he,
   ioctrl_refclk_he,
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
   ioctrl_gpio_ds1,
   ioctrl_refclk_ds1,
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
   revision,
   ioctrl_gpio_ds0,
   ioctrl_refclk_ds0,
   sram_0_mode,
   rxda_muxsel,
   txda_muxsel,
   cnda_muxsel,
   rxreg_0_mode,
   rxreg_1_mode,
   rxreg_2_mode,
   rxreg_3_mode,
   rxreg_cm_mode,
   txreg_0_mode,
   txreg_1_mode,
   txreg_2_mode,
   txreg_3_mode,
   cnreg_0_mode,
   cnreg_1_mode,
   cnreg_2_mode,
   cnreg_3_mode,
   txreg_0_lfsr_div,
   txreg_1_lfsr_div,
   txreg_2_lfsr_div,
   txreg_3_lfsr_div,
   cnreg_0_lfsr_div,
   cnreg_1_lfsr_div,
   cnreg_2_lfsr_div,
   cnreg_3_lfsr_div,
   rxreg_train_0,
   txreg_0_fgen_freqa,
   txreg_0_fgen_freqb,
   txreg_1_fgen_freqa,
   txreg_1_fgen_freqb,
   txreg_2_fgen_freqa,
   txreg_2_fgen_freqb,
   txreg_3_fgen_freqa,
   txreg_3_fgen_freqb,
   cnreg_0_fgen_freqa,
   cnreg_0_fgen_freqb,
   cnreg_1_fgen_freqa,
   cnreg_1_fgen_freqb,
   cnreg_2_fgen_freqa,
   cnreg_2_fgen_freqb,
   cnreg_3_fgen_freqa,
   cnreg_3_fgen_freqb,
   lfsr_nb_lut_p15,
   lfsr_nb_lut_p13,
   lfsr_nb_lut_p11,
   lfsr_nb_lut_p9,
   lfsr_nb_lut_p7,
   lfsr_nb_lut_p5,
   lfsr_nb_lut_p3,
   lfsr_nb_lut_p1,
   lfsr_nb_lut_m1,
   lfsr_nb_lut_m3,
   lfsr_nb_lut_m5,
   lfsr_nb_lut_m7,
   lfsr_nb_lut_m9,
   lfsr_nb_lut_m11,
   lfsr_nb_lut_m13,
   lfsr_nb_lut_m15,

   
   snir_top_regs_rif_add_bus,
   snir_top_regs_rif_data_wr,
   snir_top_regs_rif_wr,
   snir_top_regs_rif_byte_en,
   snir_top_regs_rif_rd,
   snir_top_regs_rif_ack,
   snir_top_regs_rif_data_rd,

   fpga_status_0,
   fpga_status_1,
   fpga_status_2,
   fpga_status_3,
   fpga_status_4,
   fpga_status_5,
   fpga_status_6,
   fpga_status_7,
   fpga_status_8,
   fpga_status_9,
   fpga_status_10,
   fpga_status_11,
   fpga_status_12,
   fpga_status_13,
   fpga_status_14,
   fpga_status_15,
   fpga_status_16,
   fpga_status_17,
   fpga_status_18,
   fpga_status_19,
   fpga_config_0,
   fpga_config_1,
   fpga_config_2,
   fpga_config_3,
   fpga_config_4,
   fpga_config_5,
   fpga_config_6,
   fpga_config_7,
   fpga_config_8,
   fpga_config_9,
   fpga_config_10,
   fpga_config_11,
   fpga_config_12,
   fpga_config_13,
   fpga_config_14,
   fpga_config_15,
   fpga_config_16,
   fpga_config_17,
   fpga_config_18,
   fpga_config_19,
   fpga_version_data,
   
   
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
   bist_reset_n

    
   );


   
   
   

   parameter TOK_W              = 19;
   parameter DAC_DATA_WIDTH	= 48;


   parameter RXADC_DATA_WIDTH     = 48;
   parameter RXADC_DSP_DATA_WIDTH = 24;
  

   parameter RXADC_DATA_WIDTH     = 36;
   parameter RXADC_DSP_DATA_WIDTH = 24;         


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


   parameter TEST_BUS_WIDTH     = 64;
   parameter TEST_CHAIN_LEN_SYS = 4;
   parameter TEST_CHAIN_LEN_RCV = 8;
   parameter TEST_CHAIN_LEN_TRN = 2;
   
   
   
   
   
   
   input                    scan_enable;
   input                    scan_mode;
   input                    sys_reset_n;
   input                    sys_clk;
   input                    ref_clk;

   input 		    rcv_clk_scan;
   input 		    trn_clk_scan;
   
   
   
   
   
   

   
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
   

   
   
   
   
   
   
   

   input                    eth_fb_bus_rd;
   input                    eth_fb_bus_wr;
   input [31:0]             eth_fb_add_bus;
   input [31:0]             eth_fb_data_bus_wr;
   input [3:0]              eth_fb_byte_en;
   output                   eth_fb_bus_ack;
   output [31:0]            eth_fb_data_bus_rd;

      
   
   
   
   
   

   
   input                    ref25M_sel;
   
   
   input [w_add_bus-1:0]    snir_afe_if_addr_bus;
   input [w_data_bus-1:0]   snir_afe_if_data_bus_wr;
   input                    snir_afe_if_bus_wr;
   input [3:0]              snir_afe_if_byte_en;
   input                    snir_afe_if_bus_rd;
   output                   snir_afe_if_bus_ack;
   output [w_data_bus-1:0]  snir_afe_if_data_bus_rd;

   
   input [15:0]          cpu_snir_afe_if_ram_bus_add;
   input                 cpu_snir_afe_if_ram_bus_wr;
   input                 cpu_snir_afe_if_ram_bus_rd;
   input [31:0]          cpu_snir_afe_if_ram_data_bus_wr;
   input [3:0]           cpu_snir_afe_if_ram_byte_en;   
   output                cpu_snir_afe_if_ram_bus_ack;
   output [31:0]         cpu_snir_afe_if_ram_bus_data_rd;
   
   
   input                    hdphy_0_rxadc_dataclk;
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
   
   
   output                        hdphy_0_rxadc_pi_inc;
   output                        hdphy_0_rxadc_pi_dec;
   output                        hdphy_1_rxadc_pi_inc;
   output                        hdphy_1_rxadc_pi_dec;
   output                        hdphy_2_rxadc_pi_inc;
   output                        hdphy_2_rxadc_pi_dec;
   output                        hdphy_3_rxadc_pi_inc;
   output                        hdphy_3_rxadc_pi_dec;
   
   output                        hdphy_cm_rxadc_pi_inc;
   output                        hdphy_cm_rxadc_pi_dec;
   
   output                        hdphy_0_txdac_pi_inc;
   output                        hdphy_0_txdac_pi_dec;
   output                        hdphy_1_txdac_pi_inc;
   output                        hdphy_1_txdac_pi_dec;
   output                        hdphy_2_txdac_pi_inc;
   output                        hdphy_2_txdac_pi_dec;
   output                        hdphy_3_txdac_pi_inc;
   output                        hdphy_3_txdac_pi_dec;
   
   output                        hdphy_0_cndac_pi_inc;
   output                        hdphy_0_cndac_pi_dec;
   output                        hdphy_1_cndac_pi_inc;
   output                        hdphy_1_cndac_pi_dec;
   output                        hdphy_2_cndac_pi_inc;
   output                        hdphy_2_cndac_pi_dec;
   output                        hdphy_3_cndac_pi_inc;
   output                        hdphy_3_cndac_pi_dec;
   
   
   input [3:0]                   squelch_0_in;
   input [3:0]                   squelch_1_in;
   input [3:0]                   squelch_2_in;
   input [3:0]                   squelch_3_in;

   
   output                        hdphy_0_reset;
   output                        hdphy_1_reset;
   output                        hdphy_2_reset;
   output                        hdphy_3_reset;
   output                        hdphy_cm_reset;
   output                        hdphy_cm_reffreq;
   output                        ioctrl_pi_pe;
   output                        hdphy_0_bias_en;
   output [ 1: 0]                hdphy_0_tx_cmnsel;
   output                        hdphy_1_bias_en;
   output [ 1: 0]                hdphy_1_tx_cmnsel;
   output                        hdphy_2_bias_en;
   output [ 1: 0]                hdphy_2_tx_cmnsel;
   output                        hdphy_3_bias_en;
   output [ 1: 0]                hdphy_3_tx_cmnsel;
   output                        hdphy_cm_bias_en;
   input                         hdphy_cm_xosc_stable;
   output                        ioctrl_pi_ps;
   output                        hdphy_0_rxadc_reset;
   output [ 2: 0]                hdphy_0_pi_biastrim;
   output                        hdphy_0_tx_cmnmodeamp_en;
   output                        hdphy_1_rxadc_reset;
   output [ 2: 0]                hdphy_1_pi_biastrim;
   output                        hdphy_1_tx_cmnmodeamp_en;
   output                        hdphy_2_rxadc_reset;
   output [ 2: 0]                hdphy_2_pi_biastrim;
   output                        hdphy_2_tx_cmnmodeamp_en;
   output                        hdphy_3_rxadc_reset;
   output [ 2: 0]                hdphy_3_pi_biastrim;
   output                        hdphy_3_tx_cmnmodeamp_en;
   output                        hdphy_cm_rxadc_reset;
   output [ 2: 0]                hdphy_cm_pi_biastrim;
   input                         hdphy_cm_rccal_compout;
   output                        ioctrl_pi_sl;
   output                        hdphy_0_clkbuf_en;
   output                        hdphy_0_tx_cn_en;
   output [ 3: 0]                hdphy_0_tx_rtrim;
   output                        hdphy_1_clkbuf_en;
   output                        hdphy_1_tx_cn_en;
   output [ 3: 0]                hdphy_1_tx_rtrim;
   output                        hdphy_2_clkbuf_en;
   output                        hdphy_2_tx_cn_en;
   output [ 3: 0]                hdphy_2_tx_rtrim;
   output                        hdphy_3_clkbuf_en;
   output                        hdphy_3_tx_cn_en;
   output [ 3: 0]                hdphy_3_tx_rtrim;
   input                         hdphy_cm_rccal_done;
   output [ 3: 0]                spare_0;
   output                        ioctrl_pi_st1;
   output                        hdphy_0_txdac_clksel;
   output                        hdphy_0_tx_en;
   output                        hdphy_1_txdac_clksel;
   output                        hdphy_1_tx_en;
   output                        hdphy_2_txdac_clksel;
   output                        hdphy_2_tx_en;
   output                        hdphy_3_txdac_clksel;
   output                        hdphy_3_tx_en;
   output                        ioctrl_pi_st0;
   output [ 2: 0]                hdphy_0_rxadc_biastrim;
   output                        hdphy_0_hyb_repincapvcm;
   output                        hdphy_0_tx_standby;
   output [ 2: 0]                hdphy_1_rxadc_biastrim;
   output                        hdphy_1_hyb_repincapvcm;
   output                        hdphy_1_tx_standby;
   output [ 2: 0]                hdphy_2_rxadc_biastrim;
   output                        hdphy_2_hyb_repincapvcm;
   output                        hdphy_2_tx_standby;
   output [ 2: 0]                hdphy_3_rxadc_biastrim;
   output                        hdphy_3_hyb_repincapvcm;
   output                        hdphy_3_tx_standby;
   output [ 2: 0]                hdphy_cm_rxadc_biastrim;
   output                        hdphy_cm_hyb_repincapvcm;
   output                        hdphy_cm_pll_altrefclksel;
   output                        ioctrl_pi_he;
   output                        hdphy_0_rxadc_clksel;
   output                        hdphy_0_lpf_amphighbw;
   output [ 1: 0]                hdphy_0_txdac_datamuxsel;
   output                        hdphy_1_rxadc_clksel;
   output                        hdphy_1_lpf_amphighbw;
   output [ 1: 0]                hdphy_1_txdac_datamuxsel;
   output                        hdphy_2_rxadc_clksel;
   output                        hdphy_2_lpf_amphighbw;
   output [ 1: 0]                hdphy_2_txdac_datamuxsel;
   output                        hdphy_3_rxadc_clksel;
   output                        hdphy_3_lpf_amphighbw;
   output [ 1: 0]                hdphy_3_txdac_datamuxsel;
   output                        hdphy_cm_rxadc_clksel;
   output                        hdphy_cm_lpf_amphighbw;
   output                        hdphy_cm_pll_bgen;
   output                        ioctrl_pi_ds1;
   output                        hdphy_cm_pll_bypass;
   output [ 7: 0]                hdphy_cm_pll_clk3div;
   output [ 3: 0]                gpio_config;
   output                        ioctrl_pi_ds0;
   output [ 1: 0]                hdphy_0_rxadc_datamuxsel;
   output [ 1: 0]                hdphy_0_lpf_bandsel;
   output [ 1: 0]                hdphy_1_rxadc_datamuxsel;
   output [ 1: 0]                hdphy_1_lpf_bandsel;
   output [ 1: 0]                hdphy_2_rxadc_datamuxsel;
   output [ 1: 0]                hdphy_2_lpf_bandsel;
   output [ 1: 0]                hdphy_3_rxadc_datamuxsel;
   output [ 1: 0]                hdphy_3_lpf_bandsel;
   output [ 1: 0]                hdphy_cm_rxadc_datamuxsel;
   output [ 1: 0]                hdphy_cm_lpf_bandsel;
   output                        ioctrl_hdsbi_pe;
   output                        hdphy_0_rxadc_f2isel;
   input                         hdphy_0_cnpi_phase0;
   output                        hdphy_1_rxadc_f2isel;
   input                         hdphy_1_cnpi_phase0;
   output                        hdphy_2_rxadc_f2isel;
   input                         hdphy_2_cnpi_phase0;
   output                        hdphy_3_rxadc_f2isel;
   input                         hdphy_3_cnpi_phase0;
   output                        hdphy_cm_rxadc_f2isel;
   output                        hdphy_cm_pll_vcocalbyp;
   output                        ioctrl_hdsbi_ps;
   output [ 4: 0]                hdphy_0_tx_offset;
   input                         hdphy_0_cnpi_caldone;
   output [ 4: 0]                hdphy_1_tx_offset;
   input                         hdphy_1_cnpi_caldone;
   output [ 4: 0]                hdphy_2_tx_offset;
   input                         hdphy_2_cnpi_caldone;
   output [ 4: 0]                hdphy_3_tx_offset;
   input                         hdphy_3_cnpi_caldone;
   output [ 2: 0]                hdphy_cm_pll_cpgain;
   output                        hdphy_cm_pll_vcocalstart;
   output                        ioctrl_hdsbi_sl;
   output [ 5: 0]                hdphy_0_hyb_repincapcors;
   output [ 5: 0]                hdphy_1_hyb_repincapcors;
   output [ 5: 0]                hdphy_2_hyb_repincapcors;
   output [ 5: 0]                hdphy_3_hyb_repincapcors;
   output [ 5: 0]                hdphy_cm_hyb_repincapcors;
   output                        hdphy_cm_pll_en;
   output [ 3: 0]                spare_1;
   output                        ioctrl_hdsbi_st1;
   output [ 5: 0]                hdphy_0_txdac_gain;
   output [ 5: 0]                hdphy_1_txdac_gain;
   output [ 5: 0]                hdphy_2_txdac_gain;
   output [ 5: 0]                hdphy_3_txdac_gain;
   output                        dack_3_en;
   output                        ioctrl_hdsbi_st0;
   output [ 3: 0]                hdphy_0_rxadc_offsetbw;
   output [ 4: 0]                hdphy_0_lpf_bwtrimcap;
   output                        hdphy_0_txdac_en;
   output [ 3: 0]                hdphy_1_rxadc_offsetbw;
   output [ 4: 0]                hdphy_1_lpf_bwtrimcap;
   output                        hdphy_1_txdac_en;
   output [ 3: 0]                hdphy_2_rxadc_offsetbw;
   output [ 4: 0]                hdphy_2_lpf_bwtrimcap;
   output                        hdphy_2_txdac_en;
   output [ 3: 0]                hdphy_3_rxadc_offsetbw;
   output [ 4: 0]                hdphy_3_lpf_bwtrimcap;
   output                        hdphy_3_txdac_en;
   output [ 3: 0]                hdphy_cm_rxadc_offsetbw;
   output [ 4: 0]                hdphy_cm_lpf_bwtrimcap;
   output                        dack_2_en;
   output                        ioctrl_hdsbi_he;
   output                        hdphy_0_rxadc_offsetbyp;
   output                        hdphy_0_lpf_bypen;
   output                        hdphy_0_txdac_stby;
   output                        hdphy_1_rxadc_offsetbyp;
   output                        hdphy_1_lpf_bypen;
   output                        hdphy_1_txdac_stby;
   output                        hdphy_2_rxadc_offsetbyp;
   output                        hdphy_2_lpf_bypen;
   output                        hdphy_2_txdac_stby;
   output                        hdphy_3_rxadc_offsetbyp;
   output                        hdphy_3_lpf_bypen;
   output                        hdphy_3_txdac_stby;
   output                        hdphy_cm_rxadc_offsetbyp;
   output                        hdphy_cm_lpf_bypen;
   input                         sram_1_full;
   output                        dack_1_en;
   output                        ioctrl_hdsbi_ds1;
   output                        hdphy_0_rxadc_offsethold;
   output                        hdphy_0_lpf_en;
   output [ 3: 0]                hdphy_0_hyb_repincapfine;
   output                        hdphy_0_txdac_clkrcven;
   output [ 4: 0]                hdphy_0_tx_cn_offset;
   input [ 4: 0]                 hdphy_0_cnpi_calcode;
   output                        hdphy_1_rxadc_offsethold;
   output                        hdphy_1_lpf_en;
   output [ 3: 0]                hdphy_1_hyb_repincapfine;
   output                        hdphy_1_txdac_clkrcven;
   output [ 4: 0]                hdphy_1_tx_cn_offset;
   input [ 4: 0]                 hdphy_1_cnpi_calcode;
   output                        hdphy_2_rxadc_offsethold;
   output                        hdphy_2_lpf_en;
   output [ 3: 0]                hdphy_2_hyb_repincapfine;
   output                        hdphy_2_txdac_clkrcven;
   output [ 4: 0]                hdphy_2_tx_cn_offset;
   input [ 4: 0]                 hdphy_2_cnpi_calcode;
   output                        hdphy_3_rxadc_offsethold;
   output                        hdphy_3_lpf_en;
   output [ 3: 0]                hdphy_3_hyb_repincapfine;
   output                        hdphy_3_txdac_clkrcven;
   output [ 4: 0]                hdphy_3_tx_cn_offset;
   input [ 4: 0]                 hdphy_3_cnpi_calcode;
   output                        hdphy_cm_rxadc_offsethold;
   output                        hdphy_cm_lpf_en;
   output [ 3: 0]                hdphy_cm_hyb_repincapfine;
   output [ 4: 0]                hdphy_cm_pll_vcobandset;
   output [ 7: 0]                hdphy_cm_pll_clk4div;
   input [11: 0]                 hdphy_cm_rccal_delay;
   input                         sram_0_full;
   output                        dack_0_en;
   output                        ioctrl_hdsbi_ds0;
   output [14: 0]                sram_lastaddr;
   output [15: 0]                rxpifg_0_cnt;
   output [15: 0]                rxpifg_1_cnt;
   output [15: 0]                rxpifg_2_cnt;
   output [15: 0]                rxpifg_3_cnt;
   output [15: 0]                rxpifg_cm_cnt;
   output [15: 0]                txpifg_0_cnt;
   output [15: 0]                txpifg_1_cnt;
   output [15: 0]                txpifg_2_cnt;
   output [15: 0]                txpifg_3_cnt;
   output [15: 0]                cnpifg_0_cnt;
   output [15: 0]                cnpifg_1_cnt;
   output [15: 0]                cnpifg_2_cnt;
   output [15: 0]                cnpifg_3_cnt;
   output [10: 0]                txreg_0_lfsr_seed;
   output [10: 0]                txreg_1_lfsr_seed;
   output [10: 0]                txreg_2_lfsr_seed;
   output [10: 0]                txreg_3_lfsr_seed;
   output [10: 0]                cnreg_0_lfsr_seed;
   output [10: 0]                cnreg_1_lfsr_seed;
   output [10: 0]                cnreg_2_lfsr_seed;
   output [10: 0]                cnreg_3_lfsr_seed;
   output [11: 0]                rxreg_train_1;
   output [11: 0]                lfsr_wb_lut_p15;
   output [11: 0]                lfsr_wb_lut_p13;
   output [11: 0]                lfsr_wb_lut_p11;
   output [11: 0]                lfsr_wb_lut_p9;
   output [11: 0]                lfsr_wb_lut_p7;
   output [11: 0]                lfsr_wb_lut_p5;
   output [11: 0]                lfsr_wb_lut_p3;
   output [11: 0]                lfsr_wb_lut_p1;
   output [11: 0]                lfsr_wb_lut_m1;
   output [11: 0]                lfsr_wb_lut_m3;
   output [11: 0]                lfsr_wb_lut_m5;
   output [11: 0]                lfsr_wb_lut_m7;
   output [11: 0]                lfsr_wb_lut_m9;
   output [11: 0]                lfsr_wb_lut_m11;
   output [11: 0]                lfsr_wb_lut_m13;
   output [11: 0]                lfsr_wb_lut_m15;
   output                        hdphy_0_rxadc_polarity;
   output                        hdphy_0_tx_rep_en;
   output                        hdphy_1_rxadc_polarity;
   output                        hdphy_1_tx_rep_en;
   output                        hdphy_2_rxadc_polarity;
   output                        hdphy_2_tx_rep_en;
   output                        hdphy_3_rxadc_polarity;
   output                        hdphy_3_tx_rep_en;
   output                        hdphy_cm_rxadc_polarity;
   input                         hdphy_cm_pll_frlocked;
   output                        ioctrl_regif_pe;
   output                        txck_3_en;
   output                        cnck_3_en;
   output                        hdphy_0_hyb_amphighbw;
   output                        hdphy_0_rxpi_calstart;
   output                        hdphy_0_txpi_calstart;
   output                        hdphy_0_cnpi_calstart;
   input                         hdphy_0_txpi_phase0;
   output                        hdphy_1_hyb_amphighbw;
   output                        hdphy_1_rxpi_calstart;
   output                        hdphy_1_txpi_calstart;
   output                        hdphy_1_cnpi_calstart;
   input                         hdphy_1_txpi_phase0;
   output                        hdphy_2_hyb_amphighbw;
   output                        hdphy_2_rxpi_calstart;
   output                        hdphy_2_txpi_calstart;
   output                        hdphy_2_cnpi_calstart;
   input                         hdphy_2_txpi_phase0;
   output                        hdphy_3_hyb_amphighbw;
   output                        hdphy_3_rxpi_calstart;
   output                        hdphy_3_txpi_calstart;
   output                        hdphy_3_cnpi_calstart;
   input                         hdphy_3_txpi_phase0;
   output                        hdphy_cm_hyb_amphighbw;
   output                        hdphy_cm_rxpi_calstart;
   input                         hdphy_cm_pll_phlocked;
   output                        ioctrl_regif_ps;
   output                        txck_2_en;
   output                        cnck_2_en;
   output [ 1: 0]                hdphy_0_rxadc_refsel;
   output                        hdphy_0_hyb_en;
   output                        hdphy_0_rxpi_calovren;
   output                        hdphy_0_txpi_calovren;
   output                        hdphy_0_cnpi_calovren;
   input                         hdphy_0_txpi_caldone;
   output [ 1: 0]                hdphy_1_rxadc_refsel;
   output                        hdphy_1_hyb_en;
   output                        hdphy_1_rxpi_calovren;
   output                        hdphy_1_txpi_calovren;
   output                        hdphy_1_cnpi_calovren;
   input                         hdphy_1_txpi_caldone;
   output [ 1: 0]                hdphy_2_rxadc_refsel;
   output                        hdphy_2_hyb_en;
   output                        hdphy_2_rxpi_calovren;
   output                        hdphy_2_txpi_calovren;
   output                        hdphy_2_cnpi_calovren;
   input                         hdphy_2_txpi_caldone;
   output [ 1: 0]                hdphy_3_rxadc_refsel;
   output                        hdphy_3_hyb_en;
   output                        hdphy_3_rxpi_calovren;
   output                        hdphy_3_txpi_calovren;
   output                        hdphy_3_cnpi_calovren;
   input                         hdphy_3_txpi_caldone;
   output [ 1: 0]                hdphy_cm_rxadc_refsel;
   output                        hdphy_cm_hyb_en;
   output                        hdphy_cm_rxpi_calovren;
   input                         hdphy_cm_pll_vcocaldone;
   output                        ioctrl_regif_sl;
   output                        sram_1_ce;
   output                        txck_1_en;
   output                        cnck_1_en;
   output                        hdphy_cm_rccal_start;
   output [ 7: 0]                hdphy_cm_pll_fbdiv;
   output [ 3: 0]                hdphy_cm_pll_clk5div;
   output                        ioctrl_regif_st1;
   output                        sram_0_ce;
   output                        txck_0_en;
   output                        cnck_0_en;
   output                        hdphy_0_cndac_clksel;
   output                        hdphy_1_cndac_clksel;
   output                        hdphy_2_cndac_clksel;
   output                        hdphy_3_cndac_clksel;
   output                        hdphy_cm_pll_filtersel;
   output                        ioctrl_regif_st0;
   output                        rxda_3_en;
   output                        txda_3_en;
   output                        cnda_3_en;
   output [ 2: 0]                hdphy_0_rxadc_shintrim;
   output                        hdphy_0_hyb_rxincapvcm;
   output [ 2: 0]                hdphy_1_rxadc_shintrim;
   output                        hdphy_1_hyb_rxincapvcm;
   output [ 2: 0]                hdphy_2_rxadc_shintrim;
   output                        hdphy_2_hyb_rxincapvcm;
   output [ 2: 0]                hdphy_3_rxadc_shintrim;
   output                        hdphy_3_hyb_rxincapvcm;
   output [ 2: 0]                hdphy_cm_rxadc_shintrim;
   output                        hdphy_cm_hyb_rxincapvcm;
   output                        hdphy_cm_pll_openloop;
   output                        ioctrl_regif_he;
   output                        rxda_2_en;
   output                        txda_2_en;
   output                        cnda_2_en;
   output                        rxpifg_0_burst;
   output                        rxpifg_1_burst;
   output                        rxpifg_2_burst;
   output                        rxpifg_3_burst;
   output                        rxpifg_cm_burst;
   output                        txpifg_0_burst;
   output                        txpifg_1_burst;
   output                        txpifg_2_burst;
   output                        txpifg_3_burst;
   output                        cnpifg_0_burst;
   output                        cnpifg_1_burst;
   output                        cnpifg_2_burst;
   output                        cnpifg_3_burst;
   output [ 3: 0]                hdphy_0_hyb_fbcap;
   output [ 1: 0]                hdphy_0_cndac_datamuxsel;
   output                        hdphy_0_hdsbi_fcsel;
   output [ 3: 0]                hdphy_1_hyb_fbcap;
   output [ 1: 0]                hdphy_1_cndac_datamuxsel;
   output                        hdphy_1_hdsbi_fcsel;
   output [ 3: 0]                hdphy_2_hyb_fbcap;
   output [ 1: 0]                hdphy_2_cndac_datamuxsel;
   output                        hdphy_2_hdsbi_fcsel;
   output [ 3: 0]                hdphy_3_hyb_fbcap;
   output [ 1: 0]                hdphy_3_cndac_datamuxsel;
   output                        hdphy_3_hdsbi_fcsel;
   output [ 3: 0]                hdphy_cm_hyb_fbcap;
   output                        hdphy_cm_pll_refclkdiv2;
   output                        ioctrl_regif_ds1;
   output                        rxda_1_en;
   output                        txda_1_en;
   output                        cnda_1_en;
   output                        rxpifg_0_inc;
   output                        rxpifg_1_inc;
   output                        rxpifg_2_inc;
   output                        rxpifg_3_inc;
   output                        rxpifg_cm_inc;
   output                        txpifg_0_inc;
   output                        txpifg_1_inc;
   output                        txpifg_2_inc;
   output                        txpifg_3_inc;
   output                        cnpifg_0_inc;
   output                        cnpifg_1_inc;
   output                        cnpifg_2_inc;
   output                        cnpifg_3_inc;
   output                        hdphy_0_hyb_fbcap2x;
   output [ 4: 0]                hdphy_0_rxpi_calovr;
   output [ 4: 0]                hdphy_0_txpi_calovr;
   output [ 4: 0]                hdphy_0_cnpi_calovr;
   output [ 6: 0]                hdphy_0_tx_rep_ctrim;
   output                        hdphy_0_hdsbi_bypass;
   input [ 4: 0]                 hdphy_0_txpi_calcode;
   output                        hdphy_1_hyb_fbcap2x;
   output [ 4: 0]                hdphy_1_rxpi_calovr;
   output [ 4: 0]                hdphy_1_txpi_calovr;
   output [ 4: 0]                hdphy_1_cnpi_calovr;
   output [ 6: 0]                hdphy_1_tx_rep_ctrim;
   output                        hdphy_1_hdsbi_bypass;
   input [ 4: 0]                 hdphy_1_txpi_calcode;
   output                        hdphy_2_hyb_fbcap2x;
   output [ 4: 0]                hdphy_2_rxpi_calovr;
   output [ 4: 0]                hdphy_2_txpi_calovr;
   output [ 4: 0]                hdphy_2_cnpi_calovr;
   output [ 6: 0]                hdphy_2_tx_rep_ctrim;
   output                        hdphy_2_hdsbi_bypass;
   input [ 4: 0]                 hdphy_2_txpi_calcode;
   output                        hdphy_3_hyb_fbcap2x;
   output [ 4: 0]                hdphy_3_rxpi_calovr;
   output [ 4: 0]                hdphy_3_txpi_calovr;
   output [ 4: 0]                hdphy_3_cnpi_calovr;
   output [ 6: 0]                hdphy_3_tx_rep_ctrim;
   output                        hdphy_3_hdsbi_bypass;
   input [ 4: 0]                 hdphy_3_txpi_calcode;
   output                        hdphy_cm_hyb_fbcap2x;
   output [ 4: 0]                hdphy_cm_rxpi_calovr;
   output [ 3: 0]                hdphy_cm_rccal_rtrim;
   output                        hdphy_cm_pll_stby;
   output [ 3: 0]                hdphy_cm_pll_clk6div;
   input [ 4: 0]                 hdphy_cm_pll_vcocalband;
   output [ 7: 0]                spare_2;
   output                        ioctrl_regif_ds0;
   output                        sram_sel;
   output                        rxda_0_en;
   output                        txda_0_en;
   output                        cnda_0_en;
   output                        rxpifg_0_en;
   output                        rxpifg_1_en;
   output                        rxpifg_2_en;
   output                        rxpifg_3_en;
   output                        rxpifg_cm_en;
   output                        txpifg_0_en;
   output                        txpifg_1_en;
   output                        txpifg_2_en;
   output                        txpifg_3_en;
   output                        cnpifg_0_en;
   output                        cnpifg_1_en;
   output                        cnpifg_2_en;
   output                        cnpifg_3_en;
   output [ 2: 0]                hdphy_0_rxadc_shouttrim;
   output                        hdphy_0_tx_swingboost;
   output [ 2: 0]                hdphy_1_rxadc_shouttrim;
   output                        hdphy_1_tx_swingboost;
   output [ 2: 0]                hdphy_2_rxadc_shouttrim;
   output                        hdphy_2_tx_swingboost;
   output [ 2: 0]                hdphy_3_rxadc_shouttrim;
   output                        hdphy_3_tx_swingboost;
   output [ 2: 0]                hdphy_cm_rxadc_shouttrim;
   output                        hdphy_cm_l_refclk_cmlen;
   output                        hdphy_cm_pll_termen;
   output [ 2: 0]                hdphy_cm_atbchan;
   output                        ioctrl_gpio_pe;
   output                        ioctrl_refclk_pe;
   output                        sram_1_start;
   output                        rxda_ddr;
   output                        txda_ddr;
   output                        cnda_ddr;
   output                        hdphy_0_rxadc_termen;
   output                        hdphy_0_rxpi_bypass;
   output                        hdphy_0_txpi_bypass;
   output                        hdphy_0_cnpi_bypass;
   output                        hdphy_0_tx_swingboostpp;
   input                         hdphy_0_rxpi_phase0;
   output                        hdphy_1_rxadc_termen;
   output                        hdphy_1_rxpi_bypass;
   output                        hdphy_1_txpi_bypass;
   output                        hdphy_1_cnpi_bypass;
   output                        hdphy_1_tx_swingboostpp;
   input                         hdphy_1_rxpi_phase0;
   output                        hdphy_2_rxadc_termen;
   output                        hdphy_2_rxpi_bypass;
   output                        hdphy_2_txpi_bypass;
   output                        hdphy_2_cnpi_bypass;
   output                        hdphy_2_tx_swingboostpp;
   input                         hdphy_2_rxpi_phase0;
   output                        hdphy_3_rxadc_termen;
   output                        hdphy_3_rxpi_bypass;
   output                        hdphy_3_txpi_bypass;
   output                        hdphy_3_cnpi_bypass;
   output                        hdphy_3_tx_swingboostpp;
   input                         hdphy_3_rxpi_phase0;
   output                        hdphy_cm_rxadc_termen;
   output                        hdphy_cm_rxpi_bypass;
   output                        hdphy_cm_r_refclk_cmlen;
   input                         hdphy_cm_rxpi_phase0;
   output                        ioctrl_gpio_ps;
   output                        ioctrl_refclk_ps;
   output                        rxda_ddrdiv4;
   output                        txda_ddrdiv4;
   output                        cnda_ddrdiv4;
   output [ 2: 0]                hdphy_0_hyb_hpffreq;
   output                        hdphy_0_tx_wb_en;
   input                         hdphy_0_rxpi_caldone;
   output [ 2: 0]                hdphy_1_hyb_hpffreq;
   output                        hdphy_1_tx_wb_en;
   input                         hdphy_1_rxpi_caldone;
   output [ 2: 0]                hdphy_2_hyb_hpffreq;
   output                        hdphy_2_tx_wb_en;
   input                         hdphy_2_rxpi_caldone;
   output [ 2: 0]                hdphy_3_hyb_hpffreq;
   output                        hdphy_3_tx_wb_en;
   input                         hdphy_3_rxpi_caldone;
   output [ 2: 0]                hdphy_cm_hyb_hpffreq;
   output                        hdphy_cm_l_synthclk_cmlen;
   output                        hdphy_cm_pll_clk1en;
   output [ 1: 0]                hdphy_cm_atbblk;
   input                         hdphy_cm_rxpi_caldone;
   output                        ioctrl_gpio_sl;
   output                        ioctrl_refclk_sl;
   output                        hdphy_0_hyb_lpfsel;
   output [ 5: 0]                hdphy_0_hyb_rxincapcors;
   output [ 1: 0]                hdphy_0_rxpi_div1;
   output [ 1: 0]                hdphy_0_txpi_div1;
   output [ 1: 0]                hdphy_0_cnpi_div1;
   output                        hdphy_0_tx_prescascamp_bw;
   output [ 3: 0]                hdphy_0_hdsbi_thresh;
   output                        hdphy_1_hyb_lpfsel;
   output [ 5: 0]                hdphy_1_hyb_rxincapcors;
   output [ 1: 0]                hdphy_1_rxpi_div1;
   output [ 1: 0]                hdphy_1_txpi_div1;
   output [ 1: 0]                hdphy_1_cnpi_div1;
   output                        hdphy_1_tx_prescascamp_bw;
   output [ 3: 0]                hdphy_1_hdsbi_thresh;
   output                        hdphy_2_hyb_lpfsel;
   output [ 5: 0]                hdphy_2_hyb_rxincapcors;
   output [ 1: 0]                hdphy_2_rxpi_div1;
   output [ 1: 0]                hdphy_2_txpi_div1;
   output [ 1: 0]                hdphy_2_cnpi_div1;
   output                        hdphy_2_tx_prescascamp_bw;
   output [ 3: 0]                hdphy_2_hdsbi_thresh;
   output                        hdphy_3_hyb_lpfsel;
   output [ 5: 0]                hdphy_3_hyb_rxincapcors;
   output [ 1: 0]                hdphy_3_rxpi_div1;
   output [ 1: 0]                hdphy_3_txpi_div1;
   output [ 1: 0]                hdphy_3_cnpi_div1;
   output                        hdphy_3_tx_prescascamp_bw;
   output [ 3: 0]                hdphy_3_hdsbi_thresh;
   output                        hdphy_cm_hyb_lpfsel;
   output [ 5: 0]                hdphy_cm_hyb_rxincapcors;
   output [ 1: 0]                hdphy_cm_rxpi_div1;
   output                        hdphy_cm_r_synthclk_cmlen;
   output                        hdphy_cm_pll_clk2en;
   input [11: 0]                 chipid;
   output                        ioctrl_gpio_st1;
   output                        ioctrl_refclk_st1;
   output [ 2: 0]                sram_1_mode;
   output [ 2: 0]                hdphy_0_rxadc_trim;
   output [ 5: 0]                hdphy_0_cndac_gain;
   output                        hdphy_0_tx_rep_prescascamp_bw;
   output [ 2: 0]                hdphy_1_rxadc_trim;
   output [ 5: 0]                hdphy_1_cndac_gain;
   output                        hdphy_1_tx_rep_prescascamp_bw;
   output [ 2: 0]                hdphy_2_rxadc_trim;
   output [ 5: 0]                hdphy_2_cndac_gain;
   output                        hdphy_2_tx_rep_prescascamp_bw;
   output [ 2: 0]                hdphy_3_rxadc_trim;
   output [ 5: 0]                hdphy_3_cndac_gain;
   output                        hdphy_3_tx_rep_prescascamp_bw;
   output [ 2: 0]                hdphy_cm_rxadc_trim;
   output [ 3: 0]                hdphy_cm_pll_vcoitrim;
   output                        hdphy_cm_pll_clk3en;
   output                        ioctrl_gpio_st0;
   output                        ioctrl_refclk_st0;
   output                        sram_0_start;
   output                        rxreg_0_train_sel;
   output                        rxreg_1_train_sel;
   output                        rxreg_2_train_sel;
   output                        rxreg_3_train_sel;
   output                        rxreg_cm_train_sel;
   output                        hdphy_0_rxadc_en;
   output                        hdphy_0_cndac_en;
   output                        hdphy_0_tx_rep_prescascamp_en;
   output                        hdphy_1_rxadc_en;
   output                        hdphy_1_cndac_en;
   output                        hdphy_1_tx_rep_prescascamp_en;
   output                        hdphy_2_rxadc_en;
   output                        hdphy_2_cndac_en;
   output                        hdphy_2_tx_rep_prescascamp_en;
   output                        hdphy_3_rxadc_en;
   output                        hdphy_3_cndac_en;
   output                        hdphy_3_tx_rep_prescascamp_en;
   output                        hdphy_cm_rxadc_en;
   output                        hdphy_cm_xosc_clk1_en;
   output                        hdphy_cm_pll_clk4en;
   output                        ioctrl_gpio_he;
   output                        ioctrl_refclk_he;
   output                        hdphy_0_rxadc_stby;
   output [ 2: 0]                hdphy_0_rxpi_div2;
   output [ 2: 0]                hdphy_0_txpi_div2;
   output [ 2: 0]                hdphy_0_cnpi_div2;
   output                        hdphy_0_cndac_stby;
   output                        hdphy_0_tx_mirrorbw;
   output [ 2: 0]                hdphy_0_hdsbi_ctrim;
   output                        hdphy_1_rxadc_stby;
   output [ 2: 0]                hdphy_1_rxpi_div2;
   output [ 2: 0]                hdphy_1_txpi_div2;
   output [ 2: 0]                hdphy_1_cnpi_div2;
   output                        hdphy_1_cndac_stby;
   output                        hdphy_1_tx_mirrorbw;
   output [ 2: 0]                hdphy_1_hdsbi_ctrim;
   output                        hdphy_2_rxadc_stby;
   output [ 2: 0]                hdphy_2_rxpi_div2;
   output [ 2: 0]                hdphy_2_txpi_div2;
   output [ 2: 0]                hdphy_2_cnpi_div2;
   output                        hdphy_2_cndac_stby;
   output                        hdphy_2_tx_mirrorbw;
   output [ 2: 0]                hdphy_2_hdsbi_ctrim;
   output                        hdphy_3_rxadc_stby;
   output [ 2: 0]                hdphy_3_rxpi_div2;
   output [ 2: 0]                hdphy_3_txpi_div2;
   output [ 2: 0]                hdphy_3_cnpi_div2;
   output                        hdphy_3_cndac_stby;
   output                        hdphy_3_tx_mirrorbw;
   output [ 2: 0]                hdphy_3_hdsbi_ctrim;
   output                        hdphy_cm_rxadc_stby;
   output [ 2: 0]                hdphy_cm_rxpi_div2;
   output                        hdphy_cm_xosc_clk2_en;
   output                        hdphy_cm_pll_clk5en;
   output                        ioctrl_gpio_ds1;
   output                        ioctrl_refclk_ds1;
   output                        hdphy_0_rxadc_clkrcven;
   output [ 3: 0]                hdphy_0_hyb_rtrim;
   output [ 3: 0]                hdphy_0_hyb_rxincapfine;
   output                        hdphy_0_rxpi_en;
   output                        hdphy_0_txpi_en;
   output                        hdphy_0_cnpi_en;
   output                        hdphy_0_cndac_clkrcven;
   output                        hdphy_0_tx_rep_cassel;
   output                        hdphy_0_hdsbi_en;
   input [ 4: 0]                 hdphy_0_rxpi_calcode;
   output                        hdphy_1_rxadc_clkrcven;
   output [ 3: 0]                hdphy_1_hyb_rtrim;
   output [ 3: 0]                hdphy_1_hyb_rxincapfine;
   output                        hdphy_1_rxpi_en;
   output                        hdphy_1_txpi_en;
   output                        hdphy_1_cnpi_en;
   output                        hdphy_1_cndac_clkrcven;
   output                        hdphy_1_tx_rep_cassel;
   output                        hdphy_1_hdsbi_en;
   input [ 4: 0]                 hdphy_1_rxpi_calcode;
   output                        hdphy_2_rxadc_clkrcven;
   output [ 3: 0]                hdphy_2_hyb_rtrim;
   output [ 3: 0]                hdphy_2_hyb_rxincapfine;
   output                        hdphy_2_rxpi_en;
   output                        hdphy_2_txpi_en;
   output                        hdphy_2_cnpi_en;
   output                        hdphy_2_cndac_clkrcven;
   output                        hdphy_2_tx_rep_cassel;
   output                        hdphy_2_hdsbi_en;
   input [ 4: 0]                 hdphy_2_rxpi_calcode;
   output                        hdphy_3_rxadc_clkrcven;
   output [ 3: 0]                hdphy_3_hyb_rtrim;
   output [ 3: 0]                hdphy_3_hyb_rxincapfine;
   output                        hdphy_3_rxpi_en;
   output                        hdphy_3_txpi_en;
   output                        hdphy_3_cnpi_en;
   output                        hdphy_3_cndac_clkrcven;
   output                        hdphy_3_tx_rep_cassel;
   output                        hdphy_3_hdsbi_en;
   input [ 4: 0]                 hdphy_3_rxpi_calcode;
   output                        hdphy_cm_rxadc_clkrcven;
   output [ 3: 0]                hdphy_cm_hyb_rtrim;
   output [ 3: 0]                hdphy_cm_hyb_rxincapfine;
   output                        hdphy_cm_rxpi_en;
   output                        hdphy_cm_xosc_en;
   output [ 2: 0]                hdphy_cm_pll_vrefadj;
   output                        hdphy_cm_pll_clk6en;
   output [ 4: 0]                hdphy_cm_atbsel;
   input [ 4: 0]                 hdphy_cm_rxpi_calcode;
   input [ 3: 0]                 revision;
   output                        ioctrl_gpio_ds0;
   output                        ioctrl_refclk_ds0;
   output [ 2: 0]                sram_0_mode;
   output [ 4: 0]                rxda_muxsel;
   output [ 3: 0]                txda_muxsel;
   output [ 3: 0]                cnda_muxsel;
   output [ 2: 0]                rxreg_0_mode;
   output [ 2: 0]                rxreg_1_mode;
   output [ 2: 0]                rxreg_2_mode;
   output [ 2: 0]                rxreg_3_mode;
   output [ 2: 0]                rxreg_cm_mode;
   output [ 3: 0]                txreg_0_mode;
   output [ 3: 0]                txreg_1_mode;
   output [ 3: 0]                txreg_2_mode;
   output [ 3: 0]                txreg_3_mode;
   output [ 3: 0]                cnreg_0_mode;
   output [ 3: 0]                cnreg_1_mode;
   output [ 3: 0]                cnreg_2_mode;
   output [ 3: 0]                cnreg_3_mode;
   output [ 4: 0]                txreg_0_lfsr_div;
   output [ 4: 0]                txreg_1_lfsr_div;
   output [ 4: 0]                txreg_2_lfsr_div;
   output [ 4: 0]                txreg_3_lfsr_div;
   output [ 4: 0]                cnreg_0_lfsr_div;
   output [ 4: 0]                cnreg_1_lfsr_div;
   output [ 4: 0]                cnreg_2_lfsr_div;
   output [ 4: 0]                cnreg_3_lfsr_div;
   output [11: 0]                rxreg_train_0;
   output [29: 0]                txreg_0_fgen_freqa;
   output [29: 0]                txreg_0_fgen_freqb;
   output [29: 0]                txreg_1_fgen_freqa;
   output [29: 0]                txreg_1_fgen_freqb;
   output [29: 0]                txreg_2_fgen_freqa;
   output [29: 0]                txreg_2_fgen_freqb;
   output [29: 0]                txreg_3_fgen_freqa;
   output [29: 0]                txreg_3_fgen_freqb;
   output [29: 0]                cnreg_0_fgen_freqa;
   output [29: 0]                cnreg_0_fgen_freqb;
   output [29: 0]                cnreg_1_fgen_freqa;
   output [29: 0]                cnreg_1_fgen_freqb;
   output [29: 0]                cnreg_2_fgen_freqa;
   output [29: 0]                cnreg_2_fgen_freqb;
   output [29: 0]                cnreg_3_fgen_freqa;
   output [29: 0]                cnreg_3_fgen_freqb;
   output [11: 0]                lfsr_nb_lut_p15;
   output [11: 0]                lfsr_nb_lut_p13;
   output [11: 0]                lfsr_nb_lut_p11;
   output [11: 0]                lfsr_nb_lut_p9;
   output [11: 0]                lfsr_nb_lut_p7;
   output [11: 0]                lfsr_nb_lut_p5;
   output [11: 0]                lfsr_nb_lut_p3;
   output [11: 0]                lfsr_nb_lut_p1;
   output [11: 0]                lfsr_nb_lut_m1;
   output [11: 0]                lfsr_nb_lut_m3;
   output [11: 0]                lfsr_nb_lut_m5;
   output [11: 0]                lfsr_nb_lut_m7;
   output [11: 0]                lfsr_nb_lut_m9;
   output [11: 0]                lfsr_nb_lut_m11;
   output [11: 0]                lfsr_nb_lut_m13;
   output [11: 0]                lfsr_nb_lut_m15;

   
   input [31:0]                  snir_top_regs_rif_add_bus;
   input [31:0]                  snir_top_regs_rif_data_wr;
   input                         snir_top_regs_rif_wr;
   input [3:0]                   snir_top_regs_rif_byte_en;
   input                         snir_top_regs_rif_rd;
   output                        snir_top_regs_rif_ack;
   output [31:0]                 snir_top_regs_rif_data_rd;

   input [31:0]                  fpga_status_0;
   input [31:0]                  fpga_status_1;
   input [31:0]                  fpga_status_2;
   input [31:0]                  fpga_status_3;
   input [31:0]                  fpga_status_4;
   input [31:0]                  fpga_status_5;
   input [31:0]                  fpga_status_6;
   input [31:0]                  fpga_status_7;
   input [31:0]                  fpga_status_8;
   input [31:0]                  fpga_status_9;
   input [31:0]                  fpga_status_10;
   input [31:0]                  fpga_status_11;
   input [31:0]                  fpga_status_12;
   input [31:0]                  fpga_status_13;
   input [31:0]                  fpga_status_14;
   input [31:0]                  fpga_status_15;
   input [31:0]                  fpga_status_16;
   input [31:0]                  fpga_status_17;
   input [31:0]                  fpga_status_18;
   input [31:0]                  fpga_status_19;
   output [31:0]                 fpga_config_0;
   output [31:0]                 fpga_config_1;
   output [31:0]                 fpga_config_2;
   output [31:0]                 fpga_config_3;
   output [31:0]                 fpga_config_4;
   output [31:0]                 fpga_config_5;
   output [31:0]                 fpga_config_6;
   output [31:0]                 fpga_config_7;
   output [31:0]                 fpga_config_8;
   output [31:0]                 fpga_config_9;
   output [31:0]                 fpga_config_10;
   output [31:0]                 fpga_config_11;
   output [31:0]                 fpga_config_12;
   output [31:0]                 fpga_config_13;
   output [31:0]                 fpga_config_14;
   output [31:0]                 fpga_config_15;
   output [31:0]                 fpga_config_16;
   output [31:0]                 fpga_config_17;
   output [31:0]                 fpga_config_18;
   output [31:0]                 fpga_config_19;
   input [31:0]                  fpga_version_data;

   
   input [31:0]                  reset_regs_add_bus;
   input [31:0]                  reset_regs_data_wr;
   input                         reset_regs_wr;
   input [3:0]                   reset_regs_byte_en;
   input                         reset_regs_rd;
   output                        reset_regs_ack;   
   output [31:0]                 reset_regs_data_rd;

   
   input                         prel_reset_n;
   input                         sys_clk_pll_enable_int;
   output                        sys_clk_pll_enable;

   
   output                        lppf_symbol_done;
   input                         lppf_tx_bit;
   input                         lppf_tx_del;
   input                         lppf_tx_mode;
   input                         lppf_tx_active;

   
   output                        lppf_rx_active;
   output                        lppf_bit_out;
   output                        lppf_bit_sync;
   output                        lppf_del_on;
   output                        lppf_rx_descr_lock;
   output                        afe_if_squelch_clk;
   
   input                         lppf_link_clk_div_en; 

   
   input                         Snir_phy_rcv_clk_in;
   input                         Snir_phy_trn_clk_in;
   output                        Snir_phy_rcv_clk;
   output                        Snir_phy_trn_clk;
   
   
   output                        snir_phy_int_out;

   
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
   
   
   
   
   

   reg [10:0]                   rx_adc_0_data;
   reg [10:0]                   rx_adc_1_data;
   reg [10:0]                   rx_adc_2_data;
   reg [10:0]                   rx_adc_3_data;

   reg                          sys_clk_pll_enable_ff;
   reg                          sys_clk_pll_enable;


   wire [6:0]                   retreq_data_pre;
   wire                         retreq_vld;
   
   
   
   
   
   
   
   wire [2*DAC_DATA_WIDTH-1:0]  afe_if_tx_dac_0_data;
   wire [2*DAC_DATA_WIDTH-1:0]  afe_if_tx_dac_1_data;
   wire [2*DAC_DATA_WIDTH-1:0]  afe_if_tx_dac_2_data;
   wire [2*DAC_DATA_WIDTH-1:0]  afe_if_tx_dac_3_data;
   



   wire                         sys_clk_pll_enable_pre;

   
   
   
   

   
   
   wire [w_add_bus-1:0]        piped_snir_afe_if_addr_bus;
   wire [w_data_bus-1:0]       piped_snir_afe_if_data_bus_wr;
   wire                        piped_snir_afe_if_bus_wr;
   wire [3:0]                  piped_snir_afe_if_byte_en;
   wire                        piped_snir_afe_if_bus_rd;
   wire                        piped_snir_afe_if_bus_ack;
   wire [w_data_bus-1:0]       piped_snir_afe_if_data_bus_rd;
   
   wire [31:0]                 piped_cpu_snir_afe_if_ram_bus_add;
   wire                        piped_cpu_snir_afe_if_ram_bus_wr;
   wire                        piped_cpu_snir_afe_if_ram_bus_rd;
   wire [31:0]                 piped_cpu_snir_afe_if_ram_data_bus_wr;
   wire [3:0]                  piped_cpu_snir_afe_if_ram_byte_en;   
   wire                        piped_cpu_snir_afe_if_ram_bus_ack;
   wire [31:0]                 piped_cpu_snir_afe_if_ram_bus_data_rd;
   
   
   
   
   
   

   wire [31:0]                   dsp_rif_add_bus;
   wire [3:0]                    dsp_rif_byte_en;
   wire                          dsp_rif_wr;
   wire                          dsp_rif_rd;
   wire [31:0]                   dsp_rif_data_wr;
   wire                          link_tx_tokout_valid;
   wire [37:0]                   link_tx_tokout_data;
   wire [AUX_TOK_WIDTH-1:0]      link_aux_tokout_data;
   wire [AUX_TOK_WIDTH-1:0]      link_aux_tokin_data;
   wire [AUX_TOK_WIDTH-1:0]      dsp_aux_tokin_data;
   wire                          link_aux_tokin_valid;
   wire                          dsp_aux_tokin_valid;
   wire                          rx_dsp_sys_clk;
   wire                          tx_dsp_sys_clk;
   wire                          dsp_sys_clk;
   wire                          tx_dsp_sys_reset_n;
   wire                          pcs_trn_clk;
   wire                          dsp_ch0_trn_clk;
   wire                          dsp_ch1_trn_clk;
   wire                          dsp_ch2_trn_clk;
   wire                          dsp_ch3_trn_clk;
   wire [31:0]                   dsp_rif_data_rd;
   wire                          dsp_rif_ack;
   wire                          link_rx_tokin_valid;
   wire [37:0]                   link_rx_tokin_data;
   wire                          link_tx_tokout_ready;
   wire                          link_aux_tokout_ready;
   wire                          link_aux_tokin_ready;
   
   wire                          phy_rcv_tb_clk;
   wire                          phy_rcv_tb_reset_n;
   wire                          dsp_rcv_tb_clk;
   wire                          dsp_async_fifo_sys_clk;
   wire                          dsp_rcv_tb_reset_n;
   wire                          dsp_async_fifo_reset_n;
                                       
   wire                          dsp_trn_tb_clk;
   wire                          phy_trn_tb_clk;
   wire                          dsp_ch0_trn_tb_clk;
   wire                          dsp_ch1_trn_tb_clk;
   wire                          dsp_ch2_trn_tb_clk;
   wire                          dsp_ch3_trn_tb_clk;
   wire                          dsp_trn_tb_reset_n;
   wire                          phy_trn_tb_reset_n;
   wire                          dsp_ch0_trn_tb_reset_n;
   wire                          dsp_ch1_trn_tb_reset_n;
   wire                          dsp_ch2_trn_tb_reset_n;
   wire                          dsp_ch3_trn_tb_reset_n;

   wire                          bc_pcs_rcv_clk;
   wire                          bc_pcs_rcv_reset_n;

   
   
   
   
   

   wire                          afe_if_bus_rd;
   wire                          afe_if_bus_ack;
   wire [w_data_bus-1:0]         afe_if_data_bus_rd;
   wire                          snir_afe_if_bus_dummy_ack;
   wire [7:0]                    hdphy_cm_pll_clk3div_int;
   wire [2:0]                    hdphy_cm_pll_cpgain_int;
   wire [7:0]                    hdphy_cm_pll_fbdiv_int;
   wire [3:0]                    hdphy_cm_pll_vcoitrim_int;
   wire [2:0]                    hdphy_cm_pll_vrefadj_int;

   wire                          afe_if_sys_clk;
   wire                          afe_if_sys_reset_n;
   wire                          afe_if_trn0_clk;
   wire                          afe_if_trn1_clk;
   wire                          afe_if_trn2_clk;
   wire                          afe_if_trn3_clk;
   wire                          afe_if_trn_reset_n;
   wire                          afe_if_trn_clk_in;
   wire                          afe_if_trn0_reset_n;
   wire                          afe_if_trn1_reset_n;
   wire                          afe_if_trn2_reset_n;
   wire                          afe_if_trn3_reset_n;
   wire                          ref_clk;
   wire                          ref_clk_int;
   wire                          afe_if_squelch_reset_n;
   wire                          snir_dsp_lppf_tx_clk_out_en;
   wire                          snir_dsp_lppf_rx_clk_out_en;
   wire [16:0]                   SinMeas_msesin_ch0;
   wire [16:0]                   SinMeas_msesin_ch1;
   wire [16:0]                   SinMeas_msesin_ch2;
   wire [16:0]                   SinMeas_msesin_ch3;
   wire [31:0]                   snir_afe_if_addr_bus;
   wire [31:0]                   snir_afe_if_data_bus_wr;
   wire                          snir_afe_if_bus_wr;
   wire [3:0]                    snir_afe_if_byte_en;
   wire                          snir_afe_if_bus_rd;
   wire                          hdphy_0_rxadc_dataclk;
   wire                          afe_if_adc0_rcv_reset_n;
   wire [RXADC_DATA_WIDTH-1:0]   hdphy_0_rxadc_data;
   wire                          hdphy_1_rxadc_dataclk;
   wire [RXADC_DATA_WIDTH-1:0]   hdphy_1_rxadc_data;
   wire                          hdphy_2_rxadc_dataclk;
   wire [RXADC_DATA_WIDTH-1:0]   hdphy_2_rxadc_data;
   wire                          hdphy_3_rxadc_dataclk;
   wire [RXADC_DATA_WIDTH-1:0]   hdphy_3_rxadc_data;
   wire [95:0]                   dsp_0_txdac_data;
   wire                          hdphy_0_txdac_dataclk;
   wire [95:0]                   dsp_1_txdac_data;
   wire                          hdphy_1_txdac_dataclk;
   wire [95:0]                   dsp_2_txdac_data;
   wire                          hdphy_2_txdac_dataclk;
   wire [95:0]                   dsp_3_txdac_data;
   wire                          hdphy_3_txdac_dataclk;
   wire [95:0]                   dsp_0_cndac_data;
   wire [95:0]                   dsp_1_cndac_data;
   wire [95:0]                   dsp_2_cndac_data;
   wire [95:0]                   dsp_3_cndac_data;
   wire [47:0]                   dsp_0_dac_data;
   wire [47:0]                   dsp_1_dac_data;
   wire [47:0]                   dsp_2_dac_data;
   wire [47:0]                   dsp_3_dac_data;
   wire [4:0]                    dsp_i_adc_pi_inc;
   wire [4:0]                    dsp_i_adc_pi_dec;
   wire [7:0]                    dsp_i_dac_pi_inc;
   wire [7:0]                    dsp_i_dac_pi_dec;
   wire [3:0]                    squelch_0_in;
   wire [3:0]                    squelch_1_in;
   wire [3:0]                    squelch_2_in;
   wire [3:0]                    squelch_3_in;
   wire                          hdphy_cm_xosc_stable;
   wire                          hdphy_cm_rccal_compout;
   wire                          hdphy_cm_rccal_done;
   wire                          hdphy_0_cnpi_phase0;
   wire                          hdphy_1_cnpi_phase0;
   wire                          hdphy_2_cnpi_phase0;
   wire                          hdphy_3_cnpi_phase0;
   wire                          hdphy_0_cnpi_caldone;
   wire                          hdphy_1_cnpi_caldone;
   wire                          hdphy_2_cnpi_caldone;
   wire                          hdphy_3_cnpi_caldone;
   wire                          sram_1_full;
   wire [4:0]                    hdphy_0_cnpi_calcode;
   wire [4:0]                    hdphy_1_cnpi_calcode;
   wire [4:0]                    hdphy_2_cnpi_calcode;
   wire [4:0]                    hdphy_3_cnpi_calcode;
   wire [11:0]                   hdphy_cm_rccal_delay;
   wire                          sram_0_full;
   wire                          hdphy_cm_pll_frlocked;
   wire                          hdphy_0_txpi_phase0;
   wire                          hdphy_1_txpi_phase0;
   wire                          hdphy_2_txpi_phase0;
   wire                          hdphy_3_txpi_phase0;
   wire                          hdphy_cm_pll_phlocked;
   wire                          hdphy_0_txpi_caldone;
   wire                          hdphy_1_txpi_caldone;
   wire                          hdphy_2_txpi_caldone;
   wire                          hdphy_3_txpi_caldone;
   wire                          hdphy_cm_pll_vcocaldone;
   wire [4:0]                    hdphy_0_txpi_calcode;
   wire [4:0]                    hdphy_1_txpi_calcode;
   wire [4:0]                    hdphy_2_txpi_calcode;
   wire [4:0]                    hdphy_3_txpi_calcode;
   wire [4:0]                    hdphy_cm_pll_vcocalband;
   wire                          hdphy_0_rxpi_phase0;
   wire                          hdphy_1_rxpi_phase0;
   wire                          hdphy_2_rxpi_phase0;
   wire                          hdphy_3_rxpi_phase0;
   wire                          hdphy_cm_rxpi_phase0;
   wire                          hdphy_0_rxpi_caldone;
   wire                          hdphy_1_rxpi_caldone;
   wire                          hdphy_2_rxpi_caldone;
   wire                          hdphy_3_rxpi_caldone;
   wire                          hdphy_cm_rxpi_caldone;
   wire [11:0]                   chipid;
   wire [4:0]                    hdphy_0_rxpi_calcode;
   wire [4:0]                    hdphy_1_rxpi_calcode;
   wire [4:0]                    hdphy_2_rxpi_calcode;
   wire [4:0]                    hdphy_3_rxpi_calcode;
   wire [4:0]                    hdphy_cm_rxpi_calcode;
   wire [3:0]                    revision;
   wire [31:0]                   data_bus_rd;
   wire [RXADC_DSP_DATA_WIDTH-1:0]   rxadc_0_dsp_data;
   wire [RXADC_DSP_DATA_WIDTH-1:0]   rxadc_1_dsp_data;
   wire [RXADC_DSP_DATA_WIDTH-1:0]   rxadc_2_dsp_data;
   wire [RXADC_DSP_DATA_WIDTH-1:0]   rxadc_3_dsp_data;
   wire [RXADC_DSP_DATA_WIDTH-1:0]   rxadc_cm_dsp_data;
   wire                          hdphy_0_rxadc_pi_inc;
   wire                          hdphy_0_rxadc_pi_dec;
   wire                          hdphy_1_rxadc_pi_inc;
   wire                          hdphy_1_rxadc_pi_dec;
   wire                          hdphy_2_rxadc_pi_inc;
   wire                          hdphy_2_rxadc_pi_dec;
   wire                          hdphy_3_rxadc_pi_inc;
   wire                          hdphy_3_rxadc_pi_dec;
   wire                          hdphy_cm_rxadc_pi_inc;
   wire                          hdphy_cm_rxadc_pi_dec;
   wire                          hdphy_0_txdac_pi_inc;
   wire                          hdphy_0_txdac_pi_dec;
   wire                          hdphy_1_txdac_pi_inc;
   wire                          hdphy_1_txdac_pi_dec;
   wire                          hdphy_2_txdac_pi_inc;
   wire                          hdphy_2_txdac_pi_dec;
   wire                          hdphy_3_txdac_pi_inc;
   wire                          hdphy_3_txdac_pi_dec;
   wire                          hdphy_0_cndac_pi_inc;
   wire                          hdphy_0_cndac_pi_dec;
   wire                          hdphy_1_cndac_pi_inc;
   wire                          hdphy_1_cndac_pi_dec;
   wire                          hdphy_2_cndac_pi_inc;
   wire                          hdphy_2_cndac_pi_dec;
   wire                          hdphy_3_cndac_pi_inc;
   wire                          hdphy_3_cndac_pi_dec;
   wire [3:0]                    squelch_0_out;
   wire [3:0]                    squelch_1_out;
   wire [3:0]                    squelch_2_out;
   wire [3:0]                    squelch_3_out;
   wire [31:0]                   snir_afe_if_test_bus_0;
   wire [31:0]                   snir_afe_if_test_bus_1;
   wire [31:0]                   snir_afe_if_test_bus_2;
   wire [31:0]                   snir_afe_if_test_bus_3;
   wire [31:0]                   snir_afe_if_test_bus_4;
   wire [31:0]                   snir_afe_if_test_bus_5;
   wire                          hdphy_0_reset;
   wire                          hdphy_1_reset;
   wire                          hdphy_2_reset;
   wire                          hdphy_3_reset;
   wire                          hdphy_cm_reset;
   wire                          hdphy_cm_reffreq;
   wire                          ioctrl_pi_pe;
   wire                          hdphy_0_bias_en;
   wire [1:0]                    hdphy_0_tx_cmnsel;
   wire                          hdphy_1_bias_en;
   wire [1:0]                    hdphy_1_tx_cmnsel;
   wire                          hdphy_2_bias_en;
   wire [1:0]                    hdphy_2_tx_cmnsel;
   wire                          hdphy_3_bias_en;
   wire [1:0]                    hdphy_3_tx_cmnsel;
   wire                          hdphy_cm_bias_en;
   wire                          ioctrl_pi_ps;
   wire                          hdphy_0_rxadc_reset;
   wire [2:0]                    hdphy_0_pi_biastrim;
   wire                          hdphy_0_tx_cmnmodeamp_en;
   wire                          hdphy_1_rxadc_reset;
   wire [2:0]                    hdphy_1_pi_biastrim;
   wire                          hdphy_1_tx_cmnmodeamp_en;
   wire                          hdphy_2_rxadc_reset;
   wire [2:0]                    hdphy_2_pi_biastrim;
   wire                          hdphy_2_tx_cmnmodeamp_en;
   wire                          hdphy_3_rxadc_reset;
   wire [2:0]                    hdphy_3_pi_biastrim;
   wire                          hdphy_3_tx_cmnmodeamp_en;
   wire                          hdphy_cm_rxadc_reset;
   wire [2:0]                    hdphy_cm_pi_biastrim;
   wire                          ioctrl_pi_sl;
   wire                          hdphy_0_clkbuf_en;
   wire                          hdphy_0_tx_cn_en;
   wire [3:0]                    hdphy_0_tx_rtrim;
   wire                          hdphy_1_clkbuf_en;
   wire                          hdphy_1_tx_cn_en;
   wire [3:0]                    hdphy_1_tx_rtrim;
   wire                          hdphy_2_clkbuf_en;
   wire                          hdphy_2_tx_cn_en;
   wire [3:0]                    hdphy_2_tx_rtrim;
   wire                          hdphy_3_clkbuf_en;
   wire                          hdphy_3_tx_cn_en;
   wire [3:0]                    hdphy_3_tx_rtrim;
   wire [3:0]                    spare_0;
   wire                          ioctrl_pi_st1;
   wire                          hdphy_0_txdac_clksel;
   wire                          hdphy_0_tx_en;
   wire                          hdphy_1_txdac_clksel;
   wire                          hdphy_1_tx_en;
   wire                          hdphy_2_txdac_clksel;
   wire                          hdphy_2_tx_en;
   wire                          hdphy_3_txdac_clksel;
   wire                          hdphy_3_tx_en;
   wire                          ioctrl_pi_st0;
   wire [2:0]                    hdphy_0_rxadc_biastrim;
   wire                          hdphy_0_hyb_repincapvcm;
   wire                          hdphy_0_tx_standby;
   wire [2:0]                    hdphy_1_rxadc_biastrim;
   wire                          hdphy_1_hyb_repincapvcm;
   wire                          hdphy_1_tx_standby;
   wire [2:0]                    hdphy_2_rxadc_biastrim;
   wire                          hdphy_2_hyb_repincapvcm;
   wire                          hdphy_2_tx_standby;
   wire [2:0]                    hdphy_3_rxadc_biastrim;
   wire                          hdphy_3_hyb_repincapvcm;
   wire                          hdphy_3_tx_standby;
   wire [2:0]                    hdphy_cm_rxadc_biastrim;
   wire                          hdphy_cm_hyb_repincapvcm;
   wire                          hdphy_cm_pll_altrefclksel;
   wire                          ioctrl_pi_he;
   wire                          hdphy_0_rxadc_clksel;
   wire                          hdphy_0_lpf_amphighbw;
   wire [1:0]                    hdphy_0_txdac_datamuxsel;
   wire                          hdphy_1_rxadc_clksel;
   wire                          hdphy_1_lpf_amphighbw;
   wire [1:0]                    hdphy_1_txdac_datamuxsel;
   wire                          hdphy_2_rxadc_clksel;
   wire                          hdphy_2_lpf_amphighbw;
   wire [1:0]                    hdphy_2_txdac_datamuxsel;
   wire                          hdphy_3_rxadc_clksel;
   wire                          hdphy_3_lpf_amphighbw;
   wire [1:0]                    hdphy_3_txdac_datamuxsel;
   wire                          hdphy_cm_rxadc_clksel;
   wire                          hdphy_cm_lpf_amphighbw;
   wire                          hdphy_cm_pll_bgen;
   wire                          ioctrl_pi_ds1;
   wire                          hdphy_cm_pll_bypass;
   wire [7:0]                    hdphy_cm_pll_clk3div;
   wire [3:0]                    gpio_config;
   wire                          ioctrl_pi_ds0;
   wire [1:0]                    hdphy_0_rxadc_datamuxsel;
   wire [1:0]                    hdphy_0_lpf_bandsel;
   wire [1:0]                    hdphy_1_rxadc_datamuxsel;
   wire [1:0]                    hdphy_1_lpf_bandsel;
   wire [1:0]                    hdphy_2_rxadc_datamuxsel;
   wire [1:0]                    hdphy_2_lpf_bandsel;
   wire [1:0]                    hdphy_3_rxadc_datamuxsel;
   wire [1:0]                    hdphy_3_lpf_bandsel;
   wire [1:0]                    hdphy_cm_rxadc_datamuxsel;
   wire [1:0]                    hdphy_cm_lpf_bandsel;
   wire                          ioctrl_hdsbi_pe;
   wire                          hdphy_0_rxadc_f2isel;
   wire                          hdphy_1_rxadc_f2isel;
   wire                          hdphy_2_rxadc_f2isel;
   wire                          hdphy_3_rxadc_f2isel;
   wire                          hdphy_cm_rxadc_f2isel;
   wire                          hdphy_cm_pll_vcocalbyp;
   wire                          ioctrl_hdsbi_ps;
   wire [4:0]                    hdphy_0_tx_offset;
   wire [4:0]                    hdphy_1_tx_offset;
   wire [4:0]                    hdphy_2_tx_offset;
   wire [4:0]                    hdphy_3_tx_offset;
   wire [2:0]                    hdphy_cm_pll_cpgain;
   wire                          hdphy_cm_pll_vcocalstart;
   wire                          ioctrl_hdsbi_sl;
   wire [5:0]                    hdphy_0_hyb_repincapcors;
   wire [5:0]                    hdphy_1_hyb_repincapcors;
   wire [5:0]                    hdphy_2_hyb_repincapcors;
   wire [5:0]                    hdphy_3_hyb_repincapcors;
   wire [5:0]                    hdphy_cm_hyb_repincapcors;
   wire                          hdphy_cm_pll_en;
   wire [3:0]                    spare_1;
   wire                          ioctrl_hdsbi_st1;
   wire [5:0]                    hdphy_0_txdac_gain;
   wire [5:0]                    hdphy_1_txdac_gain;
   wire [5:0]                    hdphy_2_txdac_gain;
   wire [5:0]                    hdphy_3_txdac_gain;
   wire                          dack_3_en;
   wire                          ioctrl_hdsbi_st0;
   wire [3:0]                    hdphy_0_rxadc_offsetbw;
   wire [4:0]                    hdphy_0_lpf_bwtrimcap;
   wire                          hdphy_0_txdac_en;
   wire [3:0]                    hdphy_1_rxadc_offsetbw;
   wire [4:0]                    hdphy_1_lpf_bwtrimcap;
   wire                          hdphy_1_txdac_en;
   wire [3:0]                    hdphy_2_rxadc_offsetbw;
   wire [4:0]                    hdphy_2_lpf_bwtrimcap;
   wire                          hdphy_2_txdac_en;
   wire [3:0]                    hdphy_3_rxadc_offsetbw;
   wire [4:0]                    hdphy_3_lpf_bwtrimcap;
   wire                          hdphy_3_txdac_en;
   wire [3:0]                    hdphy_cm_rxadc_offsetbw;
   wire [4:0]                    hdphy_cm_lpf_bwtrimcap;
   wire                          dack_2_en;
   wire                          ioctrl_hdsbi_he;
   wire                          hdphy_0_rxadc_offsetbyp;
   wire                          hdphy_0_lpf_bypen;
   wire                          hdphy_0_txdac_stby;
   wire                          hdphy_1_rxadc_offsetbyp;
   wire                          hdphy_1_lpf_bypen;
   wire                          hdphy_1_txdac_stby;
   wire                          hdphy_2_rxadc_offsetbyp;
   wire                          hdphy_2_lpf_bypen;
   wire                          hdphy_2_txdac_stby;
   wire                          hdphy_3_rxadc_offsetbyp;
   wire                          hdphy_3_lpf_bypen;
   wire                          hdphy_3_txdac_stby;
   wire                          hdphy_cm_rxadc_offsetbyp;
   wire                          hdphy_cm_lpf_bypen;
   wire                          dack_1_en;
   wire                          ioctrl_hdsbi_ds1;
   wire                          hdphy_0_rxadc_offsethold;
   wire                          hdphy_0_lpf_en;
   wire [3:0]                    hdphy_0_hyb_repincapfine;
   wire                          hdphy_0_txdac_clkrcven;
   wire [4:0]                    hdphy_0_tx_cn_offset;
   wire                          hdphy_1_rxadc_offsethold;
   wire                          hdphy_1_lpf_en;
   wire [3:0]                    hdphy_1_hyb_repincapfine;
   wire                          hdphy_1_txdac_clkrcven;
   wire [4:0]                    hdphy_1_tx_cn_offset;
   wire                          hdphy_2_rxadc_offsethold;
   wire                          hdphy_2_lpf_en;
   wire [3:0]                    hdphy_2_hyb_repincapfine;
   wire                          hdphy_2_txdac_clkrcven;
   wire [4:0]                    hdphy_2_tx_cn_offset;
   wire                          hdphy_3_rxadc_offsethold;
   wire                          hdphy_3_lpf_en;
   wire [3:0]                    hdphy_3_hyb_repincapfine;
   wire                          hdphy_3_txdac_clkrcven;
   wire [4:0]                    hdphy_3_tx_cn_offset;
   wire                          hdphy_cm_rxadc_offsethold;
   wire                          hdphy_cm_lpf_en;
   wire [3:0]                    hdphy_cm_hyb_repincapfine;
   wire [4:0]                    hdphy_cm_pll_vcobandset;
   wire [7:0]                    hdphy_cm_pll_clk4div;
   wire                          dack_0_en;
   wire                          ioctrl_hdsbi_ds0;
   wire [14:0]                   sram_lastaddr;
   wire [15:0]                   rxpifg_0_cnt;
   wire [15:0]                   rxpifg_1_cnt;
   wire [15:0]                   rxpifg_2_cnt;
   wire [15:0]                   rxpifg_3_cnt;
   wire [15:0]                   rxpifg_cm_cnt;
   wire [15:0]                   txpifg_0_cnt;
   wire [15:0]                   txpifg_1_cnt;
   wire [15:0]                   txpifg_2_cnt;
   wire [15:0]                   txpifg_3_cnt;
   wire [15:0]                   cnpifg_0_cnt;
   wire [15:0]                   cnpifg_1_cnt;
   wire [15:0]                   cnpifg_2_cnt;
   wire [15:0]                   cnpifg_3_cnt;
   wire [10:0]                   txreg_0_lfsr_seed;
   wire [10:0]                   txreg_1_lfsr_seed;
   wire [10:0]                   txreg_2_lfsr_seed;
   wire [10:0]                   txreg_3_lfsr_seed;
   wire [10:0]                   cnreg_0_lfsr_seed;
   wire [10:0]                   cnreg_1_lfsr_seed;
   wire [10:0]                   cnreg_2_lfsr_seed;
   wire [10:0]                   cnreg_3_lfsr_seed;
   wire [11:0]                   rxreg_train_1;
   wire [11:0]                   lfsr_wb_lut_p15;
   wire [11:0]                   lfsr_wb_lut_p13;
   wire [11:0]                   lfsr_wb_lut_p11;
   wire [11:0]                   lfsr_wb_lut_p9;
   wire [11:0]                   lfsr_wb_lut_p7;
   wire [11:0]                   lfsr_wb_lut_p5;
   wire [11:0]                   lfsr_wb_lut_p3;
   wire [11:0]                   lfsr_wb_lut_p1;
   wire [11:0]                   lfsr_wb_lut_m1;
   wire [11:0]                   lfsr_wb_lut_m3;
   wire [11:0]                   lfsr_wb_lut_m5;
   wire [11:0]                   lfsr_wb_lut_m7;
   wire [11:0]                   lfsr_wb_lut_m9;
   wire [11:0]                   lfsr_wb_lut_m11;
   wire [11:0]                   lfsr_wb_lut_m13;
   wire [11:0]                   lfsr_wb_lut_m15;
   wire                          hdphy_0_rxadc_polarity;
   wire                          hdphy_0_tx_rep_en;
   wire                          hdphy_1_rxadc_polarity;
   wire                          hdphy_1_tx_rep_en;
   wire                          hdphy_2_rxadc_polarity;
   wire                          hdphy_2_tx_rep_en;
   wire                          hdphy_3_rxadc_polarity;
   wire                          hdphy_3_tx_rep_en;
   wire                          hdphy_cm_rxadc_polarity;
   wire                          ioctrl_regif_pe;
   wire                          txck_3_en;
   wire                          cnck_3_en;
   wire                          hdphy_0_hyb_amphighbw;
   wire                          hdphy_0_rxpi_calstart;
   wire                          hdphy_0_txpi_calstart;
   wire                          hdphy_0_cnpi_calstart;
   wire                          hdphy_1_hyb_amphighbw;
   wire                          hdphy_1_rxpi_calstart;
   wire                          hdphy_1_txpi_calstart;
   wire                          hdphy_1_cnpi_calstart;
   wire                          hdphy_2_hyb_amphighbw;
   wire                          hdphy_2_rxpi_calstart;
   wire                          hdphy_2_txpi_calstart;
   wire                          hdphy_2_cnpi_calstart;
   wire                          hdphy_3_hyb_amphighbw;
   wire                          hdphy_3_rxpi_calstart;
   wire                          hdphy_3_txpi_calstart;
   wire                          hdphy_3_cnpi_calstart;
   wire                          hdphy_cm_hyb_amphighbw;
   wire                          hdphy_cm_rxpi_calstart;
   wire                          ioctrl_regif_ps;
   wire                          txck_2_en;
   wire                          cnck_2_en;
   wire [1:0]                    hdphy_0_rxadc_refsel;
   wire                          hdphy_0_hyb_en;
   wire                          hdphy_0_rxpi_calovren;
   wire                          hdphy_0_txpi_calovren;
   wire                          hdphy_0_cnpi_calovren;
   wire [1:0]                    hdphy_1_rxadc_refsel;
   wire                          hdphy_1_hyb_en;
   wire                          hdphy_1_rxpi_calovren;
   wire                          hdphy_1_txpi_calovren;
   wire                          hdphy_1_cnpi_calovren;
   wire [1:0]                    hdphy_2_rxadc_refsel;
   wire                          hdphy_2_hyb_en;
   wire                          hdphy_2_rxpi_calovren;
   wire                          hdphy_2_txpi_calovren;
   wire                          hdphy_2_cnpi_calovren;
   wire [1:0]                    hdphy_3_rxadc_refsel;
   wire                          hdphy_3_hyb_en;
   wire                          hdphy_3_rxpi_calovren;
   wire                          hdphy_3_txpi_calovren;
   wire                          hdphy_3_cnpi_calovren;
   wire [1:0]                    hdphy_cm_rxadc_refsel;
   wire                          hdphy_cm_hyb_en;
   wire                          hdphy_cm_rxpi_calovren;
   wire                          ioctrl_regif_sl;
   wire                          sram_1_ce;
   wire                          txck_1_en;
   wire                          cnck_1_en;
   wire                          hdphy_cm_rccal_start;
   wire [7:0]                    hdphy_cm_pll_fbdiv;
   wire [3:0]                    hdphy_cm_pll_clk5div;
   wire                          ioctrl_regif_st1;
   wire                          sram_0_ce;
   wire                          txck_0_en;
   wire                          cnck_0_en;
   wire                          hdphy_0_cndac_clksel;
   wire                          hdphy_1_cndac_clksel;
   wire                          hdphy_2_cndac_clksel;
   wire                          hdphy_3_cndac_clksel;
   wire                          hdphy_cm_pll_filtersel;
   wire                          ioctrl_regif_st0;
   wire                          rxda_3_en;
   wire                          txda_3_en;
   wire                          cnda_3_en;
   wire [2:0]                    hdphy_0_rxadc_shintrim;
   wire                          hdphy_0_hyb_rxincapvcm;
   wire [2:0]                    hdphy_1_rxadc_shintrim;
   wire                          hdphy_1_hyb_rxincapvcm;
   wire [2:0]                    hdphy_2_rxadc_shintrim;
   wire                          hdphy_2_hyb_rxincapvcm;
   wire [2:0]                    hdphy_3_rxadc_shintrim;
   wire                          hdphy_3_hyb_rxincapvcm;
   wire [2:0]                    hdphy_cm_rxadc_shintrim;
   wire                          hdphy_cm_hyb_rxincapvcm;
   wire                          hdphy_cm_pll_openloop;
   wire                          ioctrl_regif_he;
   wire                          rxda_2_en;
   wire                          txda_2_en;
   wire                          cnda_2_en;
   wire                          rxpifg_0_burst;
   wire                          rxpifg_1_burst;
   wire                          rxpifg_2_burst;
   wire                          rxpifg_3_burst;
   wire                          rxpifg_cm_burst;
   wire                          txpifg_0_burst;
   wire                          txpifg_1_burst;
   wire                          txpifg_2_burst;
   wire                          txpifg_3_burst;
   wire                          cnpifg_0_burst;
   wire                          cnpifg_1_burst;
   wire                          cnpifg_2_burst;
   wire                          cnpifg_3_burst;
   wire [3:0]                    hdphy_0_hyb_fbcap;
   wire [1:0]                    hdphy_0_cndac_datamuxsel;
   wire                          hdphy_0_hdsbi_fcsel;
   wire [3:0]                    hdphy_1_hyb_fbcap;
   wire [1:0]                    hdphy_1_cndac_datamuxsel;
   wire                          hdphy_1_hdsbi_fcsel;
   wire [3:0]                    hdphy_2_hyb_fbcap;
   wire [1:0]                    hdphy_2_cndac_datamuxsel;
   wire                          hdphy_2_hdsbi_fcsel;
   wire [3:0]                    hdphy_3_hyb_fbcap;
   wire [1:0]                    hdphy_3_cndac_datamuxsel;
   wire                          hdphy_3_hdsbi_fcsel;
   wire [3:0]                    hdphy_cm_hyb_fbcap;
   wire                          hdphy_cm_pll_refclkdiv2;
   wire                          ioctrl_regif_ds1;
   wire                          rxda_1_en;
   wire                          txda_1_en;
   wire                          cnda_1_en;
   wire                          rxpifg_0_inc;
   wire                          rxpifg_1_inc;
   wire                          rxpifg_2_inc;
   wire                          rxpifg_3_inc;
   wire                          rxpifg_cm_inc;
   wire                          txpifg_0_inc;
   wire                          txpifg_1_inc;
   wire                          txpifg_2_inc;
   wire                          txpifg_3_inc;
   wire                          cnpifg_0_inc;
   wire                          cnpifg_1_inc;
   wire                          cnpifg_2_inc;
   wire                          cnpifg_3_inc;
   wire                          hdphy_0_hyb_fbcap2x;
   wire [4:0]                    hdphy_0_rxpi_calovr;
   wire [4:0]                    hdphy_0_txpi_calovr;
   wire [4:0]                    hdphy_0_cnpi_calovr;
   wire [6:0]                    hdphy_0_tx_rep_ctrim;
   wire                          hdphy_0_hdsbi_bypass;
   wire                          hdphy_1_hyb_fbcap2x;
   wire [4:0]                    hdphy_1_rxpi_calovr;
   wire [4:0]                    hdphy_1_txpi_calovr;
   wire [4:0]                    hdphy_1_cnpi_calovr;
   wire [6:0]                    hdphy_1_tx_rep_ctrim;
   wire                          hdphy_1_hdsbi_bypass;
   wire                          hdphy_2_hyb_fbcap2x;
   wire [4:0]                    hdphy_2_rxpi_calovr;
   wire [4:0]                    hdphy_2_txpi_calovr;
   wire [4:0]                    hdphy_2_cnpi_calovr;
   wire [6:0]                    hdphy_2_tx_rep_ctrim;
   wire                          hdphy_2_hdsbi_bypass;
   wire                          hdphy_3_hyb_fbcap2x;
   wire [4:0]                    hdphy_3_rxpi_calovr;
   wire [4:0]                    hdphy_3_txpi_calovr;
   wire [4:0]                    hdphy_3_cnpi_calovr;
   wire [6:0]                    hdphy_3_tx_rep_ctrim;
   wire                          hdphy_3_hdsbi_bypass;
   wire                          hdphy_cm_hyb_fbcap2x;
   wire [4:0]                    hdphy_cm_rxpi_calovr;
   wire [3:0]                    hdphy_cm_rccal_rtrim;
   wire                          hdphy_cm_pll_stby;
   wire [3:0]                    hdphy_cm_pll_clk6div;
   wire [7:0]                    spare_2;
   wire                          ioctrl_regif_ds0;
   wire                          sram_sel;
   wire                          rxda_0_en;
   wire                          txda_0_en;
   wire                          cnda_0_en;
   wire                          rxpifg_0_en;
   wire                          rxpifg_1_en;
   wire                          rxpifg_2_en;
   wire                          rxpifg_3_en;
   wire                          rxpifg_cm_en;
   wire                          txpifg_0_en;
   wire                          txpifg_1_en;
   wire                          txpifg_2_en;
   wire                          txpifg_3_en;
   wire                          cnpifg_0_en;
   wire                          cnpifg_1_en;
   wire                          cnpifg_2_en;
   wire                          cnpifg_3_en;
   wire [2:0]                    hdphy_0_rxadc_shouttrim;
   wire                          hdphy_0_tx_swingboost;
   wire [2:0]                    hdphy_1_rxadc_shouttrim;
   wire                          hdphy_1_tx_swingboost;
   wire [2:0]                    hdphy_2_rxadc_shouttrim;
   wire                          hdphy_2_tx_swingboost;
   wire [2:0]                    hdphy_3_rxadc_shouttrim;
   wire                          hdphy_3_tx_swingboost;
   wire [2:0]                    hdphy_cm_rxadc_shouttrim;
   wire                          hdphy_cm_l_refclk_cmlen;
   wire                          hdphy_cm_pll_termen;
   wire [2:0]                    hdphy_cm_atbchan;
   wire                          ioctrl_gpio_pe;
   wire                          ioctrl_refclk_pe;
   wire                          sram_1_start;
   wire                          rxda_ddr;
   wire                          txda_ddr;
   wire                          cnda_ddr;
   wire                          hdphy_0_rxadc_termen;
   wire                          hdphy_0_rxpi_bypass;
   wire                          hdphy_0_txpi_bypass;
   wire                          hdphy_0_cnpi_bypass;
   wire                          hdphy_0_tx_swingboostpp;
   wire                          hdphy_1_rxadc_termen;
   wire                          hdphy_1_rxpi_bypass;
   wire                          hdphy_1_txpi_bypass;
   wire                          hdphy_1_cnpi_bypass;
   wire                          hdphy_1_tx_swingboostpp;
   wire                          hdphy_2_rxadc_termen;
   wire                          hdphy_2_rxpi_bypass;
   wire                          hdphy_2_txpi_bypass;
   wire                          hdphy_2_cnpi_bypass;
   wire                          hdphy_2_tx_swingboostpp;
   wire                          hdphy_3_rxadc_termen;
   wire                          hdphy_3_rxpi_bypass;
   wire                          hdphy_3_txpi_bypass;
   wire                          hdphy_3_cnpi_bypass;
   wire                          hdphy_3_tx_swingboostpp;
   wire                          hdphy_cm_rxadc_termen;
   wire                          hdphy_cm_rxpi_bypass;
   wire                          hdphy_cm_r_refclk_cmlen;
   wire                          ioctrl_gpio_ps;
   wire                          ioctrl_refclk_ps;
   wire                          rxda_ddrdiv4;
   wire                          txda_ddrdiv4;
   wire                          cnda_ddrdiv4;
   wire [2:0]                    hdphy_0_hyb_hpffreq;
   wire                          hdphy_0_tx_wb_en;
   wire [2:0]                    hdphy_1_hyb_hpffreq;
   wire                          hdphy_1_tx_wb_en;
   wire [2:0]                    hdphy_2_hyb_hpffreq;
   wire                          hdphy_2_tx_wb_en;
   wire [2:0]                    hdphy_3_hyb_hpffreq;
   wire                          hdphy_3_tx_wb_en;
   wire [2:0]                    hdphy_cm_hyb_hpffreq;
   wire                          hdphy_cm_l_synthclk_cmlen;
   wire                          hdphy_cm_pll_clk1en;
   wire [1:0]                    hdphy_cm_atbblk;
   wire                          ioctrl_gpio_sl;
   wire                          ioctrl_refclk_sl;
   wire                          hdphy_0_hyb_lpfsel;
   wire [5:0]                    hdphy_0_hyb_rxincapcors;
   wire [1:0]                    hdphy_0_rxpi_div1;
   wire [1:0]                    hdphy_0_txpi_div1;
   wire [1:0]                    hdphy_0_cnpi_div1;
   wire                          hdphy_0_tx_prescascamp_bw;
   wire [3:0]                    hdphy_0_hdsbi_thresh;
   wire                          hdphy_1_hyb_lpfsel;
   wire [5:0]                    hdphy_1_hyb_rxincapcors;
   wire [1:0]                    hdphy_1_rxpi_div1;
   wire [1:0]                    hdphy_1_txpi_div1;
   wire [1:0]                    hdphy_1_cnpi_div1;
   wire                          hdphy_1_tx_prescascamp_bw;
   wire [3:0]                    hdphy_1_hdsbi_thresh;
   wire                          hdphy_2_hyb_lpfsel;
   wire [5:0]                    hdphy_2_hyb_rxincapcors;
   wire [1:0]                    hdphy_2_rxpi_div1;
   wire [1:0]                    hdphy_2_txpi_div1;
   wire [1:0]                    hdphy_2_cnpi_div1;
   wire                          hdphy_2_tx_prescascamp_bw;
   wire [3:0]                    hdphy_2_hdsbi_thresh;
   wire                          hdphy_3_hyb_lpfsel;
   wire [5:0]                    hdphy_3_hyb_rxincapcors;
   wire [1:0]                    hdphy_3_rxpi_div1;
   wire [1:0]                    hdphy_3_txpi_div1;
   wire [1:0]                    hdphy_3_cnpi_div1;
   wire                          hdphy_3_tx_prescascamp_bw;
   wire [3:0]                    hdphy_3_hdsbi_thresh;
   wire                          hdphy_cm_hyb_lpfsel;
   wire [5:0]                    hdphy_cm_hyb_rxincapcors;
   wire [1:0]                    hdphy_cm_rxpi_div1;
   wire                          hdphy_cm_r_synthclk_cmlen;
   wire                          hdphy_cm_pll_clk2en;
   wire                          ioctrl_gpio_st1;
   wire                          ioctrl_refclk_st1;
   wire [2:0]                    sram_1_mode;
   wire [2:0]                    hdphy_0_rxadc_trim;
   wire [5:0]                    hdphy_0_cndac_gain;
   wire                          hdphy_0_tx_rep_prescascamp_bw;
   wire [2:0]                    hdphy_1_rxadc_trim;
   wire [5:0]                    hdphy_1_cndac_gain;
   wire                          hdphy_1_tx_rep_prescascamp_bw;
   wire [2:0]                    hdphy_2_rxadc_trim;
   wire [5:0]                    hdphy_2_cndac_gain;
   wire                          hdphy_2_tx_rep_prescascamp_bw;
   wire [2:0]                    hdphy_3_rxadc_trim;
   wire [5:0]                    hdphy_3_cndac_gain;
   wire                          hdphy_3_tx_rep_prescascamp_bw;
   wire [2:0]                    hdphy_cm_rxadc_trim;
   wire [3:0]                    hdphy_cm_pll_vcoitrim;
   wire                          hdphy_cm_pll_clk3en;
   wire                          ioctrl_gpio_st0;
   wire                          ioctrl_refclk_st0;
   wire                          sram_0_start;
   wire                          rxreg_0_train_sel;
   wire                          rxreg_1_train_sel;
   wire                          rxreg_2_train_sel;
   wire                          rxreg_3_train_sel;
   wire                          rxreg_cm_train_sel;
   wire                          hdphy_0_rxadc_en;
   wire                          hdphy_0_cndac_en;
   wire                          hdphy_0_tx_rep_prescascamp_en;
   wire                          hdphy_1_rxadc_en;
   wire                          hdphy_1_cndac_en;
   wire                          hdphy_1_tx_rep_prescascamp_en;
   wire                          hdphy_2_rxadc_en;
   wire                          hdphy_2_cndac_en;
   wire                          hdphy_2_tx_rep_prescascamp_en;
   wire                          hdphy_3_rxadc_en;
   wire                          hdphy_3_cndac_en;
   wire                          hdphy_3_tx_rep_prescascamp_en;
   wire                          hdphy_cm_rxadc_en;
   wire                          hdphy_cm_xosc_clk1_en;
   wire                          hdphy_cm_pll_clk4en;
   wire                          ioctrl_gpio_he;
   wire                          ioctrl_refclk_he;
   wire                          hdphy_0_rxadc_stby;
   wire [2:0]                    hdphy_0_rxpi_div2;
   wire [2:0]                    hdphy_0_txpi_div2;
   wire [2:0]                    hdphy_0_cnpi_div2;
   wire                          hdphy_0_cndac_stby;
   wire                          hdphy_0_tx_mirrorbw;
   wire [2:0]                    hdphy_0_hdsbi_ctrim;
   wire                          hdphy_1_rxadc_stby;
   wire [2:0]                    hdphy_1_rxpi_div2;
   wire [2:0]                    hdphy_1_txpi_div2;
   wire [2:0]                    hdphy_1_cnpi_div2;
   wire                          hdphy_1_cndac_stby;
   wire                          hdphy_1_tx_mirrorbw;
   wire [2:0]                    hdphy_1_hdsbi_ctrim;
   wire                          hdphy_2_rxadc_stby;
   wire [2:0]                    hdphy_2_rxpi_div2;
   wire [2:0]                    hdphy_2_txpi_div2;
   wire [2:0]                    hdphy_2_cnpi_div2;
   wire                          hdphy_2_cndac_stby;
   wire                          hdphy_2_tx_mirrorbw;
   wire [2:0]                    hdphy_2_hdsbi_ctrim;
   wire                          hdphy_3_rxadc_stby;
   wire [2:0]                    hdphy_3_rxpi_div2;
   wire [2:0]                    hdphy_3_txpi_div2;
   wire [2:0]                    hdphy_3_cnpi_div2;
   wire                          hdphy_3_cndac_stby;
   wire                          hdphy_3_tx_mirrorbw;
   wire [2:0]                    hdphy_3_hdsbi_ctrim;
   wire                          hdphy_cm_rxadc_stby;
   wire [2:0]                    hdphy_cm_rxpi_div2;
   wire                          hdphy_cm_xosc_clk2_en;
   wire                          hdphy_cm_pll_clk5en;
   wire                          ioctrl_gpio_ds1;
   wire                          ioctrl_refclk_ds1;
   wire                          hdphy_0_rxadc_clkrcven;
   wire [3:0]                    hdphy_0_hyb_rtrim;
   wire [3:0]                    hdphy_0_hyb_rxincapfine;
   wire                          hdphy_0_rxpi_en;
   wire                          hdphy_0_txpi_en;
   wire                          hdphy_0_cnpi_en;
   wire                          hdphy_0_cndac_clkrcven;
   wire                          hdphy_0_tx_rep_cassel;
   wire                          hdphy_0_hdsbi_en;
   wire                          hdphy_1_rxadc_clkrcven;
   wire [3:0]                    hdphy_1_hyb_rtrim;
   wire [3:0]                    hdphy_1_hyb_rxincapfine;
   wire                          hdphy_1_rxpi_en;
   wire                          hdphy_1_txpi_en;
   wire                          hdphy_1_cnpi_en;
   wire                          hdphy_1_cndac_clkrcven;
   wire                          hdphy_1_tx_rep_cassel;
   wire                          hdphy_1_hdsbi_en;
   wire                          hdphy_2_rxadc_clkrcven;
   wire [3:0]                    hdphy_2_hyb_rtrim;
   wire [3:0]                    hdphy_2_hyb_rxincapfine;
   wire                          hdphy_2_rxpi_en;
   wire                          hdphy_2_txpi_en;
   wire                          hdphy_2_cnpi_en;
   wire                          hdphy_2_cndac_clkrcven;
   wire                          hdphy_2_tx_rep_cassel;
   wire                          hdphy_2_hdsbi_en;
   wire                          hdphy_3_rxadc_clkrcven;
   wire [3:0]                    hdphy_3_hyb_rtrim;
   wire [3:0]                    hdphy_3_hyb_rxincapfine;
   wire                          hdphy_3_rxpi_en;
   wire                          hdphy_3_txpi_en;
   wire                          hdphy_3_cnpi_en;
   wire                          hdphy_3_cndac_clkrcven;
   wire                          hdphy_3_tx_rep_cassel;
   wire                          hdphy_3_hdsbi_en;
   wire                          hdphy_cm_rxadc_clkrcven;
   wire [3:0]                    hdphy_cm_hyb_rtrim;
   wire [3:0]                    hdphy_cm_hyb_rxincapfine;
   wire                          hdphy_cm_rxpi_en;
   wire                          hdphy_cm_xosc_en;
   wire [2:0]                    hdphy_cm_pll_vrefadj;
   wire                          hdphy_cm_pll_clk6en;
   wire [4:0]                    hdphy_cm_atbsel;
   wire                          ioctrl_gpio_ds0;
   wire                          ioctrl_refclk_ds0;
   wire [2:0]                    sram_0_mode;
   wire [4:0]                    rxda_muxsel;
   wire [3:0]                    txda_muxsel;
   wire [3:0]                    cnda_muxsel;
   wire [2:0]                    rxreg_0_mode;
   wire [2:0]                    rxreg_1_mode;
   wire [2:0]                    rxreg_2_mode;
   wire [2:0]                    rxreg_3_mode;
   wire [2:0]                    rxreg_cm_mode;
   wire [3:0]                    txreg_0_mode;
   wire [3:0]                    txreg_1_mode;
   wire [3:0]                    txreg_2_mode;
   wire [3:0]                    txreg_3_mode;
   wire [3:0]                    cnreg_0_mode;
   wire [3:0]                    cnreg_1_mode;
   wire [3:0]                    cnreg_2_mode;
   wire [3:0]                    cnreg_3_mode;
   wire [4:0]                    txreg_0_lfsr_div;
   wire [4:0]                    txreg_1_lfsr_div;
   wire [4:0]                    txreg_2_lfsr_div;
   wire [4:0]                    txreg_3_lfsr_div;
   wire [4:0]                    cnreg_0_lfsr_div;
   wire [4:0]                    cnreg_1_lfsr_div;
   wire [4:0]                    cnreg_2_lfsr_div;
   wire [4:0]                    cnreg_3_lfsr_div;
   wire [11:0]                   rxreg_train_0;
   wire [29:0]                   txreg_0_fgen_freqa;
   wire [29:0]                   txreg_0_fgen_freqb;
   wire [29:0]                   txreg_1_fgen_freqa;
   wire [29:0]                   txreg_1_fgen_freqb;
   wire [29:0]                   txreg_2_fgen_freqa;
   wire [29:0]                   txreg_2_fgen_freqb;
   wire [29:0]                   txreg_3_fgen_freqa;
   wire [29:0]                   txreg_3_fgen_freqb;
   wire [29:0]                   cnreg_0_fgen_freqa;
   wire [29:0]                   cnreg_0_fgen_freqb;
   wire [29:0]                   cnreg_1_fgen_freqa;
   wire [29:0]                   cnreg_1_fgen_freqb;
   wire [29:0]                   cnreg_2_fgen_freqa;
   wire [29:0]                   cnreg_2_fgen_freqb;
   wire [29:0]                   cnreg_3_fgen_freqa;
   wire [29:0]                   cnreg_3_fgen_freqb;
   wire [11:0]                   lfsr_nb_lut_p15;
   wire [11:0]                   lfsr_nb_lut_p13;
   wire [11:0]                   lfsr_nb_lut_p11;
   wire [11:0]                   lfsr_nb_lut_p9;
   wire [11:0]                   lfsr_nb_lut_p7;
   wire [11:0]                   lfsr_nb_lut_p5;
   wire [11:0]                   lfsr_nb_lut_p3;
   wire [11:0]                   lfsr_nb_lut_p1;
   wire [11:0]                   lfsr_nb_lut_m1;
   wire [11:0]                   lfsr_nb_lut_m3;
   wire [11:0]                   lfsr_nb_lut_m5;
   wire [11:0]                   lfsr_nb_lut_m7;
   wire [11:0]                   lfsr_nb_lut_m9;
   wire [11:0]                   lfsr_nb_lut_m11;
   wire [11:0]                   lfsr_nb_lut_m13;
   wire [11:0]                   lfsr_nb_lut_m15;


   
   
   
   
   wire                      cont_test_done_0;
   wire                      cont_test_done_1;
   wire                      cont_test_done_2;
   wire                      cont_test_done_3;
   wire                      burst_test_done_0;
   wire                      burst_test_done_1;
   wire                      burst_test_done_2;
   wire                      burst_test_done_3;
   wire                      pulse_done_0;
   wire                      pulse_done_1;
   wire                      pulse_done_2;
   wire                      pulse_done_3;
   wire                      ADM_CONT_SINGLE_MODE;
   wire [ 7: 0]              ADM_BURST_MIN_TIMER;
   wire [ 7: 0]              ADM_CONT_MEAS_LEN;
   wire                      rx_pi_dec_sel_ch3;
   wire                      rx_pi_dec_sel_ch2;
   wire                      rx_pi_dec_sel_ch1;
   wire                      rx_pi_dec_sel_ch0;
   wire [15: 0]              eth_fb_phyid2;
   wire                      rx_pi_inc_sel_ch3;
   wire [ 7: 0]              ADM_PULSE_THR;
   wire [15: 0]              act_count_0;
   wire [15: 0]              act_count_1;
   wire [15: 0]              act_count_2;
   wire [15: 0]              act_count_3;
   wire [ 7: 0]              phy_test_chain_select_trn;
   wire                      rx_pi_inc_sel_ch2;
   wire                      rx_pi_inc_sel_ch1;
   wire [ 5: 0]              HDSBI_SDET_OFF_SAMPLES_2;
   wire [10: 0]              ADM_CONT_OFF_SAMPLES;
   wire                      rx_pi_inc_sel_ch0;
   wire                      ADM_BURST_IGNORE_POL;
   wire [ 1: 0]              HDSBI_TX_SLOPE;
   wire [ 1: 0]              phy_path_type_sel_3;
   wire [ 5: 0]              HDSBI_RXACTIVE_ON_SAMPLES;
   wire [ 1: 0]              phy_path_type_sel_2;
   wire [ 5: 0]              HDSBI_SDET_OFF_SAMPLES_1;
   wire [ 4: 0]              ADM_BURST_CNT_THR;
   wire [17: 0]              burst_period_0;
   wire [17: 0]              burst_period_1;
   wire [17: 0]              burst_period_2;
   wire [17: 0]              burst_period_3;
   wire [ 7: 0]              phy_test_chain_select_rcv;
   wire [ 1: 0]              phy_path_type_sel_1;
   wire                      lppf_scrambler_reset;
   wire [ 4: 0]              HDSBI_TX_INIT_INTERP_PHASE;
   wire                      burst_test_rst_3;
   wire [ 4: 0]              lppf_clk_div_ratio;
   wire                      lppf_rx_rst;
   wire                      burst_test_rst_2;
   wire [ 1: 0]              lppf_scrambler_lock_3;
   wire [ 1: 0]              phy_path_type_sel_0;
   wire                      trn_clk_sel;
   wire                      burst_test_rst_1;
   wire                      pll_reset_release;
   wire [ 3: 0]              HDSBI_MAIN_TX_LEVEL;
   wire [ 5: 0]              HDSBI_DESC_LOCK_THR;
   wire                      burst_test_rst_0;
   wire [ 1: 0]              lppf_scrambler_lock_2;
   wire                      pll_switch;
   wire                      cont_test_rst_3;
   wire                      hdphy_cm_pll_vcocaldone_ind;
   wire [ 3: 0]              lppf_rx_enb;
   wire [ 2: 0]              LPPF_TX_Dest;
   wire                      cont_test_rst_2;
   wire [ 1: 0]              lppf_scrambler_lock_1;
   wire                      hdphy_cm_pll_phlocked_ind;
   wire [ 1: 0]              afe_if_trn_clk_sel;
   wire [16: 0]              pll_cnt_val;
   wire                      lppf_tx_rst;
   wire                      cont_test_rst_1;
   wire                      hdphy_cm_pll_frlocked_ind;
   wire [15: 0]              eth_fb_phyid1;
   wire [ 4: 0]              eth_fb_phyadd;
   wire [ 4: 0]              squelch_clk_div_ratio;
   wire                      activate_pll;
   wire                      lppf_tx_enb;
   wire [ 3: 0]              HDSBI_SYNC_ZX_PERIOD;
   wire [ 6: 0]              HDSBI_TX_CLK_CYCLES;
   wire [ 3: 0]              HDSBI_TX_SYM_CYCLES;
   wire [ 1: 0]              LPPF_RX_Src;
   wire [ 3: 0]              hdsbi_error;
   wire [ 7: 0]              ADM_BURST_BLANKING_TIMER;
   wire [22: 0]              ADM_BURST_MAX_TIMER;
   wire                      cont_test_rst_0;
   wire [31: 0]              fpga_status_0;
   wire [31: 0]              fpga_status_1;
   wire [31: 0]              fpga_status_2;
   wire [31: 0]              fpga_status_3;
   wire [31: 0]              fpga_status_4;
   wire [31: 0]              fpga_status_5;
   wire [31: 0]              fpga_status_6;
   wire [31: 0]              fpga_status_7;
   wire [31: 0]              fpga_status_8;
   wire [31: 0]              fpga_status_9;
   wire [31: 0]              fpga_config_0;
   wire [31: 0]              fpga_config_1;
   wire [31: 0]              fpga_config_2;
   wire [31: 0]              fpga_config_3;
   wire [31: 0]              fpga_config_4;
   wire [31: 0]              fpga_config_5;
   wire [31: 0]              fpga_config_6;
   wire [31: 0]              fpga_config_7;
   wire [15: 0]              x_count_0;
   wire [ 7: 0]              pulse_count_0;
   wire [15: 0]              x_count_1;
   wire [ 7: 0]              pulse_count_1;
   wire [15: 0]              x_count_2;
   wire [ 7: 0]              pulse_count_2;
   wire [15: 0]              x_count_3;
   wire [ 7: 0]              pulse_count_3;
   wire [ 1: 0]              lppf_scrambler_lock_0;
   wire                      afe_pll_locked_ind;
   wire [31: 0]              fpga_version_data;
   wire [ 1: 0]              reg_rcv_clk_sel;
   wire [ 6: 0]              snir_phy_int_stat;
   wire [ 6: 0]              snir_phy_int_mask;
   wire [31: 0]              fpga_config_8;
   wire [31: 0]              fpga_config_9;
   wire [31: 0]              fpga_config_10;
   wire [31: 0]              fpga_config_11;
   wire [31: 0]              fpga_config_12;
   wire [31: 0]              fpga_config_13;
   wire [31: 0]              fpga_config_14;
   wire [31: 0]              fpga_config_15;
   wire [31: 0]              fpga_config_16;
   wire [31: 0]              fpga_config_17;
   wire [31: 0]              fpga_config_18;
   wire [31: 0]              fpga_config_19;
   wire [31: 0]              fpga_status_10;
   wire [31: 0]              fpga_status_11;
   wire [31: 0]              fpga_status_12;
   wire [31: 0]              fpga_status_13;
   wire [31: 0]              fpga_status_14;
   wire [31: 0]              fpga_status_15;
   wire [31: 0]              fpga_status_16;
   wire [31: 0]              fpga_status_17;
   wire [31: 0]              fpga_status_18;
   wire [31: 0]              fpga_status_19;
   wire [ 7: 0]              phy_test_chain_select_sys;
   wire [31: 0]              snir_modules_rcv_reset_n;
   wire [31: 0]              modules_reset_done_rcv;
   wire [31: 0]              snir_modules_trn_reset_n;
   wire [31: 0]              modules_reset_done_trn;
   wire [ 1: 0]              snir_modules_rcv2_reset_n;
   wire [ 1: 0]              modules_reset_done_rcv2;
   wire                      snir_modules_trn2_reset_n;
   wire                      modules_reset_done_trn2;
   wire [191: 0]             HDSBI_SM_FB_TRANSITION_TBL;
   wire [191: 0]             HDSBI_SM_HB_TRANSITION_TBL;
   wire                      lppf_crc_error_reg_w;
   wire                      lppf_status_register_0_w;
   wire                      snir_phy_int_stat_reg_w;

   

   
   
   
   
   
   

   wire                          main_pcs_sp3_rcv_clk;   
   wire                          dsp_rcv_clk;
   wire                          afe_if_rcv_clk;
   wire                          afe_if_ch0_rcv_clk;
   wire                          afe_if_ch1_rcv_clk;
   wire                          afe_if_ch2_rcv_clk;
   wire                          afe_if_ch3_rcv_clk;
   wire                          bc_pcs_sys_clk;
   wire                          afe_if_rcv_reset_n;  
   wire                          snir_top_regs_sys_clk;
   wire                          dsp_lppf_tx_clk;
   wire                          dsp_lppf_rx_clk;
   wire                          dsp_trn_clk;
   wire                          afe_if_squelch_clk;
   wire                          main_pcs_sp3_rcv_reset_n;
   wire                          dsp_rcv_reset_n;
   wire                          afe_if_ch0_rcv_reset_n;
   wire                          afe_if_ch1_rcv_reset_n;
   wire                          afe_if_ch2_rcv_reset_n;
   wire                          afe_if_ch3_rcv_reset_n;
   wire                          bc_pcs_sys_reset_n;
   wire                          snir_top_regs_sys_reset_n;
   wire                          dsp_lppf_tx_reset_n;
   wire                          dsp_lppf_rx_reset_n;
   wire                          dsp_trn_reset_n;
   wire                          pcs_trn_reset_n;

   wire [5:0]                    lppf_tx_symb_lppf;
   wire [1:0]                    lppf_scrambler_lock;

   wire [47:0]                   TXDA_chip;

   wire                          LppfFifoRd;

   wire [5:0]                    aneg_tx_data;


   
   wire [SNIR_PHY_INTR_NUM-1:0]  snir_phy_int_source;
   wire [SNIR_PHY_INTR_NUM-1:0]  snir_phy_int_out_bus;
   wire                          iss_fault_int;
   wire                          RX_PCS_TIMEOUT_INT;
   wire                          change_num_of_chn_int;

   
   wire [31:0]                   pcs_rx_testbus_1;
   wire [31:0]                   pcs_rx_testbus_2;
   wire [31:0]                   pcs_rx_testbus_3;
   wire [31:0]                   pcs_rx_testbus_4;
   wire [31:0]                   pcs_tx_testbus;
   wire [63:0] 			 pri_tbus;
   
   wire [31:0]                   skew_meter_testbus;
   
   
   wire                          ch0_lppf_mode;
   wire                          ch1_lppf_mode;
   wire                          ch2_lppf_mode;
   wire                          ch3_lppf_mode;
   wire                          ch0_lppf_mode_pre;
   wire                          ch1_lppf_mode_pre;
   wire                          ch2_lppf_mode_pre;
   wire                          ch3_lppf_mode_pre;



   wire [1:0]                    slice_fb_test_bus;
   wire [17:0]                   lppf_tx_testbus;
   wire [31:0]                   lppf_rx_testbus;
   wire [31:0]                   BurstTest_test_bus;
   wire [27:0]                   SINKPCS_TB;
   wire [31:0]                   SINKPCS_TB2;
   wire [63:0]                   rx_dsp_test_bus;
   wire [63:0]                   tx_dsp_test_bus;
   wire [63:0]                   rx_dsp_test_bus_to_ram;


   wire [TEST_CHAIN_LEN_SYS-1:0] test_bus_data_en_sys;
   wire [TEST_BUS_WIDTH-1:0]     test_bus_data_sys [TEST_CHAIN_LEN_SYS-1:0];   
   wire [TEST_BUS_WIDTH-1:0]     phy_test_bus_sys_tb_cell [TEST_CHAIN_LEN_SYS:0];
   
   wire [TEST_CHAIN_LEN_RCV-1:0] test_bus_data_en_rcv;
   wire [TEST_BUS_WIDTH-1:0]     test_bus_data_rcv [TEST_CHAIN_LEN_RCV-1:0];   
   wire [TEST_BUS_WIDTH-1:0]     phy_test_bus_rcv_tb_cell [TEST_CHAIN_LEN_RCV:0];
   
   wire [TEST_CHAIN_LEN_TRN-1:0] test_bus_data_en_trn;
   wire [TEST_BUS_WIDTH-1:0]     test_bus_data_trn [TEST_CHAIN_LEN_TRN-1:0];   
   wire [TEST_BUS_WIDTH-1:0]     phy_test_bus_trn_tb_cell [TEST_CHAIN_LEN_TRN:0];

   wire [7:0]                    phy_test_chain_select_rcv_s;
   wire [7:0]                    phy_test_chain_select_trn_s;

   wire                          Ch0_RX_dsp_interrupt;
   wire                          Ch1_RX_dsp_interrupt;
   wire                          Ch2_RX_dsp_interrupt;
   wire                          Ch3_RX_dsp_interrupt;
   
   wire                          dsp_trigger;
   
   wire                          dsp_ch0_rcv_clk;
   wire                          dsp_ch1_rcv_clk;
   wire                          dsp_ch2_rcv_clk;
   wire                          dsp_ch3_rcv_clk;
   wire                          rx_dsp_sys_reset_n;
   wire                          dsp_sys_reset_n;
   wire                          dsp_ch0_trn_reset_n;
   wire                          dsp_ch1_trn_reset_n;
   wire                          dsp_ch2_trn_reset_n;
   wire                          dsp_ch3_trn_reset_n;
   wire                          dsp_ch0_rcv_reset_n;
   wire                          dsp_ch1_rcv_reset_n;
   wire                          dsp_ch2_rcv_reset_n;
   wire                          dsp_ch3_rcv_reset_n;
   wire                          aneg_trn_clk;
   wire                          aneg_trn_reset_n;
   wire                          ref_reset_n_int;
   wire                          hdphy_0_rxadc_dataclk_int;
   wire                          hdphy_0_rxadc_reset_n_int;
   wire                          hdphy_1_rxadc_dataclk_int;
   wire                          hdphy_1_rxadc_reset_n_int;
   wire                          hdphy_2_rxadc_dataclk_int;
   wire                          hdphy_2_rxadc_reset_n_int;
   wire                          hdphy_3_rxadc_dataclk_int;
   wire                          hdphy_3_rxadc_reset_n_int;
   wire                          hdphy_0_txdac_dataclk_int;
   wire                          hdphy_0_txdac_reset_n_int;
   wire                          hdphy_1_txdac_dataclk_int;
   wire                          hdphy_1_txdac_reset_n_int;
   wire                          hdphy_2_txdac_dataclk_int;
   wire                          hdphy_2_txdac_reset_n_int;
   wire                          hdphy_3_txdac_dataclk_int;
   wire                          hdphy_3_txdac_reset_n_int;
   wire                          hdphy_cm_reset_int;
   wire                          hdphy_cm_reset_int2;
   wire                          hdphy_cm_rxadc_en_int;
   wire                          hdphy_cm_rxadc_reset_int;
   wire                          hdphy_cm_pll_altrefclksel_int;
   wire                          hdphy_cm_pll_bgen_int;
   wire                          hdphy_cm_pll_bypass_int;
   wire                          hdphy_cm_pll_vcocalbyp_int;
   wire                          hdphy_cm_pll_vcocalstart_int;
   wire                          hdphy_cm_pll_en_int;
   wire                          hdphy_cm_pll_en_int2;
   wire                          hdphy_0_rxadc_en_int;
   wire                          hdphy_1_rxadc_en_int;
   wire                          hdphy_2_rxadc_en_int;
   wire                          hdphy_3_rxadc_en_int;
   wire                          hdphy_0_rxadc_reset_int;
   wire                          hdphy_1_rxadc_reset_int;
   wire                          hdphy_2_rxadc_reset_int;
   wire                          hdphy_3_rxadc_reset_int;
   wire                          hdphy_0_reset_int;
   wire                          hdphy_1_reset_int;
   wire                          hdphy_2_reset_int;
   wire                          hdphy_3_reset_int;
   wire                          hdphy_cm_pll_filtersel_int;
   wire                          hdphy_cm_pll_openloop_int;
   wire                          hdphy_cm_pll_refclkdiv2_int;
   wire                          hdphy_cm_pll_stby_int;
   wire                          hdphy_cm_pll_termen_int;
   wire                          hdphy_cm_pll_clk1en_int;
   wire                          hdphy_cm_pll_clk2en_int;
   wire                          hdphy_cm_pll_clk3en_int;
   wire                          hdphy_cm_pll_clk4en_int;
   wire                          pll_switch_int;   
   wire                          pll_reset_release_int;
   wire                          afe_pll_locked;

   wire [5:0]                    rxadc_0_async_fifo_used;
   wire [5:0]                    rxadc_1_async_fifo_used;
   wire [5:0]                    rxadc_2_async_fifo_used;
   wire [5:0]                    rxadc_3_async_fifo_used;

   wire [2:0] 			 reg_hdphy_rxadc_dataclk_div_ratio;
   wire [2:0] 			 reg_rcv_clk_div_ratio;
   wire [1:0] 			 reg_adc_decim_mode;
   wire 			 reg_adc_decim_mode_sw_override;
   
   
   
   

   genvar                        sys_test_bus_genvar;
   genvar                        rcv_test_bus_genvar;
   genvar                        trn_test_bus_genvar;

   
   
   
   
   
   rif_sampler_pipe #(.PIPE_DEPTH(1)) rif_afe_if_inst
     (
     .rif_add_bus      (snir_afe_if_addr_bus),
     .rif_byte_en      (snir_afe_if_byte_en),
     .rif_rd           (snir_afe_if_bus_rd),
     .rif_wr           (snir_afe_if_bus_wr),
     .rif_data_wr      (snir_afe_if_data_bus_wr),
     .rif_data_rd      (snir_afe_if_data_bus_rd),
     .rif_ack          (snir_afe_if_bus_ack),     
     .rif_cpu          (1'b0),
     .rif_debug_en     (1'b0),
     
     .smpl_rif_add_bus (piped_snir_afe_if_addr_bus),    
     .smpl_rif_byte_en (piped_snir_afe_if_byte_en),     
     .smpl_rif_rd      (piped_snir_afe_if_bus_rd),      
     .smpl_rif_wr      (piped_snir_afe_if_bus_wr),      
     .smpl_rif_data_wr (piped_snir_afe_if_data_bus_wr), 
     .smpl_rif_data_rd (piped_snir_afe_if_data_bus_rd), 
     .smpl_rif_ack     (piped_snir_afe_if_bus_ack),     
     .smpl_rif_cpu     (),
     .smpl_rif_debug_en(),
     
     .clk              (afe_if_sys_clk),
     .reset_n          (afe_if_sys_reset_n)
     );

   
   
   rif_sampler_pipe #(.PIPE_DEPTH(1)) ram_rif_afe_if_inst
     (
     .rif_add_bus      ({16'h0000, cpu_snir_afe_if_ram_bus_add}),
     .rif_byte_en      (cpu_snir_afe_if_ram_byte_en),
     .rif_rd           (cpu_snir_afe_if_ram_bus_rd),
     .rif_wr           (cpu_snir_afe_if_ram_bus_wr),
     .rif_data_wr      (cpu_snir_afe_if_ram_data_bus_wr),
     .rif_data_rd      (cpu_snir_afe_if_ram_bus_data_rd),
     .rif_ack          (cpu_snir_afe_if_ram_bus_ack),     
     .rif_cpu          (1'b0),
     .rif_debug_en     (1'b0),
     
     .smpl_rif_add_bus (piped_cpu_snir_afe_if_ram_bus_add),     
     .smpl_rif_byte_en (piped_cpu_snir_afe_if_ram_byte_en),     
     .smpl_rif_rd      (piped_cpu_snir_afe_if_ram_bus_rd),      
     .smpl_rif_wr      (piped_cpu_snir_afe_if_ram_bus_wr),      
     .smpl_rif_data_wr (piped_cpu_snir_afe_if_ram_data_bus_wr), 
     .smpl_rif_data_rd (piped_cpu_snir_afe_if_ram_bus_data_rd), 
     .smpl_rif_ack     (piped_cpu_snir_afe_if_ram_bus_ack),     
     .smpl_rif_cpu     (),
     .smpl_rif_debug_en(),
     
     .clk              (afe_if_sys_clk),
     .reset_n          (afe_if_sys_reset_n)
     );

   
   
   
   
   
   
   
   assign snir_phy_int_source[0] = iss_fault_int;
   assign snir_phy_int_source[1] = RX_PCS_TIMEOUT_INT;
   assign snir_phy_int_source[2] = change_num_of_chn_int;
   assign snir_phy_int_source[3] = Ch0_RX_dsp_interrupt;
   assign snir_phy_int_source[4] = Ch1_RX_dsp_interrupt;
   assign snir_phy_int_source[5] = Ch2_RX_dsp_interrupt;
   assign snir_phy_int_source[6] = Ch3_RX_dsp_interrupt;
   
   vl_intr #(.INTR_NUM(SNIR_PHY_INTR_NUM))
   vl_intr_inst(.clk(sys_clk),
                .rst_n(sys_reset_n),
                .int_source(snir_phy_int_source),
                .int_clr(snir_top_regs_rif_data_wr[SNIR_PHY_INTR_NUM-1:0]),
                .int_clr_reg_w(snir_phy_int_stat_reg_w),
                .int_mask(snir_phy_int_mask),
                .int_stat(snir_phy_int_stat),
                .int_out(snir_phy_int_out_bus));

   assign snir_phy_int_out = |snir_phy_int_out_bus;


   
   
   
   
   
   


   vl_async_fifo #(.AWIDTH(4), 
		           .WIDTH(AUX_TOK_WIDTH)) vl_async_fifo
     (
      .write_clk(dsp_rcv_clk),
      .write_reset_n(dsp_rcv_reset_n),
      .write_command(dsp_aux_tokin_valid), 
      .write_ready(),
      .write_used(),
      .write_data(dsp_aux_tokin_data), 
      .read_clk(dsp_async_fifo_sys_clk),
      .read_reset_n(dsp_async_fifo_reset_n),
      .read_ready(link_aux_tokin_valid),
      .read_command(link_aux_tokin_ready),
      .read_used(),
      .read_data(link_aux_tokin_data),
      .scan_enable(scan_enable),
      .scan_mode(scan_mode)
      );

   

   
   
   Snir_DSP Snir_DSP_inst(
                          
                          .dsp_rif_add_bus(dsp_rif_add_bus),
                          .dsp_rif_byte_en(dsp_rif_byte_en),
                          .dsp_rif_wr(dsp_rif_wr),
                          .dsp_rif_rd(dsp_rif_rd),
                          .dsp_rif_data_wr(dsp_rif_data_wr),
                          .dsp_rif_data_rd(dsp_rif_data_rd),
                          .dsp_rif_ack(dsp_rif_ack),
      
                          
                          .dsp_i_adc_pi_inc(dsp_i_adc_pi_inc),
                          .dsp_i_adc_pi_dec(dsp_i_adc_pi_dec),
                          .dsp_i_dac_pi_inc(dsp_i_dac_pi_inc),
                          .dsp_i_dac_pi_dec(dsp_i_dac_pi_dec),
      
                          
                          .squelch_0_dsp(squelch_0_out), 
                          .squelch_1_dsp(squelch_1_out), 
                          .squelch_2_dsp(squelch_2_out), 
                          .squelch_3_dsp(squelch_3_out), 
      
                          
                          .rxadc_0_dsp_data(rxadc_0_dsp_data),
                          .rxadc_1_dsp_data(rxadc_1_dsp_data),
                          .rxadc_2_dsp_data(rxadc_2_dsp_data),
                          .rxadc_3_dsp_data(rxadc_3_dsp_data),
                          .rxadc_cm_dsp_data(rxadc_cm_dsp_data),
                          .SinMeas_msesin_ch0(SinMeas_msesin_ch0),
                          .SinMeas_msesin_ch1(SinMeas_msesin_ch1),
                          .SinMeas_msesin_ch2(SinMeas_msesin_ch2),
                          .SinMeas_msesin_ch3(SinMeas_msesin_ch3),
      
                          
                          .dsp_0_cndac_data(dsp_0_cndac_data),
                          .dsp_1_cndac_data(dsp_1_cndac_data),
                          .dsp_2_cndac_data(dsp_2_cndac_data),
                          .dsp_3_cndac_data(dsp_3_cndac_data),
                          .dsp_0_dac_data(dsp_0_dac_data),
                          .dsp_1_dac_data(dsp_1_dac_data),
                          .dsp_2_dac_data(dsp_2_dac_data),
                          .dsp_3_dac_data(dsp_3_dac_data),
      
                          
                          .link_rx_tokin_valid(link_rx_tokin_valid),
                          .link_rx_tokin_data(link_rx_tokin_data),
      
                          
                          .link_tx_tokout_ready(link_tx_tokout_ready),
                          .link_tx_tokout_valid(link_tx_tokout_valid), 
                          .link_tx_tokout_data(link_tx_tokout_data),
      
                          
                          .link_aux_tokout_data(link_aux_tokout_data),
                          .read_from_aux_fifo(link_aux_tokout_ready),
      
                          
                          .link_aux_tokin_data(dsp_aux_tokin_data), 
                          .link_aux_tokin_valid(dsp_aux_tokin_valid),
      
                          
                          .dsp_ch0_rcv_clk(dsp_ch0_rcv_clk),
                          .dsp_ch1_rcv_clk(dsp_ch1_rcv_clk),
                          .dsp_ch2_rcv_clk(dsp_ch2_rcv_clk),
                          .dsp_ch3_rcv_clk(dsp_ch3_rcv_clk),
                          .tx_dsp_sys_clk(tx_dsp_sys_clk),
                          .rx_dsp_sys_clk(rx_dsp_sys_clk),
                          .dsp_sys_clk(dsp_sys_clk),
                          .tx_dsp_sys_reset_n(tx_dsp_sys_reset_n),
                          .rx_dsp_sys_reset_n(rx_dsp_sys_reset_n),
                          .dsp_sys_reset_n(dsp_sys_reset_n),
      
                          
                          .pcs_trn_clk(pcs_trn_clk),
                          .dsp_trn_clk(dsp_trn_clk),
                          .dsp_ch0_trn_clk(dsp_ch0_trn_clk),
                          .dsp_ch1_trn_clk(dsp_ch1_trn_clk),
                          .dsp_ch2_trn_clk(dsp_ch2_trn_clk),
                          .dsp_ch3_trn_clk(dsp_ch3_trn_clk),
                          .pcs_trn_reset_n(pcs_trn_reset_n),
                          .dsp_ch0_trn_reset_n(dsp_ch0_trn_reset_n),
                          .dsp_ch1_trn_reset_n(dsp_ch1_trn_reset_n),
                          .dsp_ch2_trn_reset_n(dsp_ch2_trn_reset_n),
                          .dsp_ch3_trn_reset_n(dsp_ch3_trn_reset_n),
      
                          
                          .pcs_rcv_clk(main_pcs_sp3_rcv_clk),
                          .dsp_rcv_clk(dsp_rcv_clk),
                          .pcs_rcv_reset_n(main_pcs_sp3_rcv_reset_n),
                          .dsp_ch0_rcv_reset_n(dsp_ch0_rcv_reset_n),
                          .dsp_ch1_rcv_reset_n(dsp_ch1_rcv_reset_n),
                          .dsp_ch2_rcv_reset_n(dsp_ch2_rcv_reset_n),
                          .dsp_ch3_rcv_reset_n(dsp_ch3_rcv_reset_n),
                          .dsp_rcv_reset_n(dsp_rcv_reset_n),
                          .dsp_trn_reset_n(dsp_trn_reset_n),
      
                          
                          .scan_enable(scan_enable),
                          .scan_mode(scan_mode),

                          
                          .SINKPCS_TB(SINKPCS_TB),
                          .SINKPCS_TB2(SINKPCS_TB2),

                          
                          .slice_fb(slice_fb_test_bus),
                          .retreq_data(retreq_data_pre), 
                          .retreq_vld(retreq_vld), 

                          .dsp_rcv_tb_clk(dsp_rcv_tb_clk),
                          .dsp_rcv_tb_reset_n(dsp_rcv_tb_reset_n),
                          
                          .dsp_trn_tb_clk(dsp_trn_tb_clk),
                          .dsp_ch0_trn_tb_clk(dsp_ch0_trn_tb_clk),
                          .dsp_ch1_trn_tb_clk(dsp_ch1_trn_tb_clk),
                          .dsp_ch2_trn_tb_clk(dsp_ch2_trn_tb_clk),
                          .dsp_ch3_trn_tb_clk(dsp_ch3_trn_tb_clk),
                          .dsp_trn_tb_reset_n(dsp_trn_tb_reset_n),
                          .dsp_ch0_trn_tb_reset_n(dsp_ch0_trn_tb_reset_n),
                          .dsp_ch1_trn_tb_reset_n(dsp_ch1_trn_tb_reset_n),
                          .dsp_ch2_trn_tb_reset_n(dsp_ch2_trn_tb_reset_n),
                          .dsp_ch3_trn_tb_reset_n(dsp_ch3_trn_tb_reset_n),

                          .bc_pcs_rcv_clk(bc_pcs_rcv_clk),
                          .bc_pcs_rcv_reset_n(bc_pcs_rcv_reset_n),
                          
                          
                          .tx_dsp_test_bus(tx_dsp_test_bus),
                          .rx_dsp_test_bus(rx_dsp_test_bus),
                          .rx_dsp_test_bus_to_ram(rx_dsp_test_bus_to_ram),

                          
                          .iss_fault(iss_fault_int),
                          .RX_PCS_TIMEOUT_INT(RX_PCS_TIMEOUT_INT),
                          .change_num_of_chn_int(change_num_of_chn_int),
                          .Ch0_RX_dsp_interrupt(Ch0_RX_dsp_interrupt),
                          .Ch1_RX_dsp_interrupt(Ch1_RX_dsp_interrupt),
                          .Ch2_RX_dsp_interrupt(Ch2_RX_dsp_interrupt),
                          .Ch3_RX_dsp_interrupt(Ch3_RX_dsp_interrupt),
                          .dsp_trigger(dsp_trigger),
                          
                          .pcs_rx_testbus_1(pcs_rx_testbus_1),
                          .pcs_rx_testbus_2(pcs_rx_testbus_2),
                          .pcs_rx_testbus_3(pcs_rx_testbus_3),
                          .pcs_rx_testbus_4(pcs_rx_testbus_4),
                          .pcs_tx_testbus(pcs_tx_testbus),
			  .pri_tbus(pri_tbus),
                          .skew_meter_testbus(skew_meter_testbus),

                          .rxadc_0_async_fifo_used(rxadc_0_async_fifo_used),
                          .rxadc_1_async_fifo_used(rxadc_1_async_fifo_used),
                          .rxadc_2_async_fifo_used(rxadc_2_async_fifo_used),
                          .rxadc_3_async_fifo_used(rxadc_3_async_fifo_used),
                          
                          
                          .dsp_rcv_tb_reset_in(snir_modules_rcv_reset_n[26])
                          
                          );



   assign pcs_rcv_clk     = main_pcs_sp3_rcv_clk;


   vl_async_fifo #(.AWIDTH(4), 
		           .WIDTH(7)) Dan_retransmission_async_fifo
     (
      .write_clk(bc_pcs_rcv_clk),
      .write_reset_n(bc_pcs_rcv_reset_n),
      .write_command(retreq_vld), 
      .write_ready(),
      .write_used(),
      .write_data(retreq_data_pre),
      .read_clk(bc_pcs_sys_clk),
      .read_reset_n(bc_pcs_sys_reset_n),
      .read_ready(Dan_pcs_retr_req),
      .read_command(Dan_pcs_retr_req_rdy),
      .read_used(),
      .read_data(Dan_retreq_data),
      .scan_enable(scan_enable),
      .scan_mode(scan_mode)
      );
     
   
   
   
   
   
   




   vl_bus_samp_chg #(.WIDTH(16)) mii_aneg_advert_sync
     (
      .data_in(mii_aneg_advert),
      .data_out(mii_aneg_advert_trn),
      .clk(aneg_trn_clk),
      .rst_n(aneg_trn_reset_n),
      .clk_in(sys_clk),
      .rst_in_n(sys_reset_n),
      .chg_done(),
      .scan_mode(1'b0)
      );
   
   
   Snir_Fallback Snir_Fallback_inst
     (
      
      .fb_tx_pcs_state(fb_tx_pcs_state),
      .TX_RDY(TX_RDY),
      .TXDA_chip(TXDA_chip),
      .eth_tx_test_bus(eth_tx_test_bus),
      .TXD(TXD),
      .TX_EN(TX_EN),
      .TX_ER(TX_ER),
      .tx_fifo_rd_used_fb(tx_fifo_rd_used_fb),
      .transmitting(transmitting),
      
      .RX_ER(RX_ER),
      .RX_DV(RX_DV),
      .RXD(RXD),
      .RX_VALID(RX_VALID),
      .receiving(receiving),
      .timing_test_bus(timing_test_bus),
      .slicer_test_bus(slicer_test_bus),
      .afir_test_bus(afir_test_bus),
      .pcs_scrambler_test_bus(pcs_scrambler_test_bus),
      .eth_pi_rx_dec(eth_pi_rx_dec),
      .eth_pi_rx_inc(eth_pi_rx_inc),
      .adc_data_to_fallback(rxadc_0_dsp_data[(FB_ADC_DW+FB_ADC_OFFSET)-1:FB_ADC_OFFSET]),

      
      .aneg_tx_data(aneg_tx_data),
      .TX_cp(TX_cp),
      .mii_aneg_advert(mii_aneg_advert_trn),
      .aneg_tx_en(aneg_trn_clk_en),
      .aneg_trn_read_reset_n(aneg_trn_read_reset_n),
      .aneg_trn_read_clk(aneg_trn_read_clk),
      
      
      .RX_cp(RX_cp),
      .InOut_cp(InOut_cp),
      .Arbitration_cp(Arbitration_cp),
      .mii_stat_link(mii_stat_link),
      .REG6_4_PARL_DET_FAULT_out(REG6_4_PARL_DET_FAULT_out),
      .REG6_3_NEXT(REG6_3_NEXT),
      .mii_ctrl_rst(mii_ctrl_rst),
      .MDI_cp(MDI_cp),
      .mii_ctrl_aneg_en(mii_ctrl_aneg_en),
      .mii_ctrl_aneg_rest(mii_ctrl_aneg_rest),
      .aneg_rx_en(aneg_rcv_clk_en),
     
      
      .scan_enable(scan_enable),
      .scan_mode(scan_mode),
      .fb_trn_clk(fb_trn_clk),
      .fb_trn_reset_n(fb_trn_reset_n),
      .fb_rcv_clk(fb_rcv_clk),
      .fb_rcv_reset_n(fb_rcv_reset_n),
      .aneg_trn_clk(aneg_trn_clk),
      .aneg_trn_reset_n(aneg_trn_reset_n),
      .aneg_rcv_clk(aneg_rcv_clk),
      .aneg_rcv_reset_n(aneg_rcv_reset_n),

      
      .eth_fb_bus_rd(eth_fb_bus_rd), 
      .eth_fb_bus_wr(eth_fb_bus_wr),
      .eth_fb_add_bus(eth_fb_add_bus),
      .eth_fb_data_bus_wr(eth_fb_data_bus_wr),
      .eth_fb_byte_en(eth_fb_byte_en),
      .eth_fb_bus_ack(eth_fb_bus_ack),
      .eth_fb_data_bus_rd(eth_fb_data_bus_rd),

      .fb_regs_sys_clk(fb_regs_sys_clk),
      .fb_regs_sys_reset_n(fb_regs_sys_reset_n)
      );
   


      

   

   
   
   
   
   
   
   
   assign afe_if_tx_dac_0_data = {12'h0, dsp_0_dac_data[47:36], 12'h0, dsp_0_dac_data[35:24], 12'h0, dsp_0_dac_data[23:12], 12'h0, dsp_0_dac_data[11:0]};
   assign afe_if_tx_dac_1_data = {12'h0, dsp_1_dac_data[47:36], 12'h0, dsp_1_dac_data[35:24], 12'h0, dsp_1_dac_data[23:12], 12'h0, dsp_1_dac_data[11:0]};
   assign afe_if_tx_dac_2_data = {12'h0, dsp_2_dac_data[47:36], 12'h0, dsp_2_dac_data[35:24], 12'h0, dsp_2_dac_data[23:12], 12'h0, dsp_2_dac_data[11:0]};
   assign afe_if_tx_dac_3_data = {12'h0, dsp_3_dac_data[47:36], 12'h0, dsp_3_dac_data[35:24], 12'h0, dsp_3_dac_data[23:12], 12'h0, dsp_3_dac_data[11:0]};

   
   
   
   
   
   
    
   snir_afe_if snir_afe_if_inst
     (
      
      .scan_enable(scan_enable),
      .scan_mode(scan_mode),
      .sys_clk(afe_if_sys_clk),
      .sys_reset_n(afe_if_sys_reset_n),
      .dsp_trigger(dsp_trigger),
      .afe_if_cmn_rcv_clk(1'b0),
      .afe_if_cmn_rcv_reset_n(1'b0),
      .afe_if_rcv_clk(afe_if_rcv_clk),
      .afe_if_ch0_rcv_clk(afe_if_ch0_rcv_clk),
      .afe_if_ch1_rcv_clk(afe_if_ch1_rcv_clk),
      .afe_if_ch2_rcv_clk(afe_if_ch2_rcv_clk),
      .afe_if_ch3_rcv_clk(afe_if_ch3_rcv_clk),
      .afe_if_rcv_reset_n(afe_if_rcv_reset_n),
      .afe_if_rcv0_reset_n(afe_if_ch0_rcv_reset_n),
      .afe_if_rcv1_reset_n(afe_if_ch1_rcv_reset_n),
      .afe_if_rcv2_reset_n(afe_if_ch2_rcv_reset_n),
      .afe_if_rcv3_reset_n(afe_if_ch3_rcv_reset_n),
      .afe_if_trn_clk_in(afe_if_trn_clk_in),
      .trn0_clk(afe_if_trn0_clk),
      .trn1_clk(afe_if_trn1_clk),
      .trn2_clk(afe_if_trn2_clk),
      .trn3_clk(afe_if_trn3_clk),
      .afe_if_trn_reset_n(afe_if_trn_reset_n),
      .trn0_reset_n(afe_if_trn0_reset_n),
      .trn1_reset_n(afe_if_trn1_reset_n),
      .trn2_reset_n(afe_if_trn2_reset_n),
      .trn3_reset_n(afe_if_trn3_reset_n),
      .ref_clk(ref_clk_int),
      .afe_if_squelch_clk(afe_if_squelch_clk),
      .ref_reset_n(ref_reset_n_int),
      .afe_if_squelch_reset_n(afe_if_squelch_reset_n),
      .dsp_lppf_rx_clk(dsp_lppf_rx_clk),
      .dsp_lppf_rx_reset_n(dsp_lppf_rx_reset_n),            
      
      .ref25m_sel(ref25M_sel),
      .SinMeas_msesin_ch0(SinMeas_msesin_ch0),
      .SinMeas_msesin_ch1(SinMeas_msesin_ch1),
      .SinMeas_msesin_ch2(SinMeas_msesin_ch2),
      .SinMeas_msesin_ch3(SinMeas_msesin_ch3),
      
      .addr_bus(piped_snir_afe_if_addr_bus),
      .data_bus_wr(piped_snir_afe_if_data_bus_wr),
      .bus_wr(piped_snir_afe_if_bus_wr),
      .byte_en(piped_snir_afe_if_byte_en),
      .bus_rd(piped_snir_afe_if_bus_rd),
      .bus_ack(piped_snir_afe_if_bus_ack),
      .data_bus_rd(piped_snir_afe_if_data_bus_rd),      
      
      .hdphy_0_rxadc_dataclk(hdphy_0_rxadc_dataclk_int),
      .hdphy_0_rxadc_reset_n(hdphy_0_rxadc_reset_n_int),
      .hdphy_0_rxadc_data(hdphy_0_rxadc_data),
      .hdphy_1_rxadc_dataclk(hdphy_1_rxadc_dataclk_int),
      .hdphy_1_rxadc_reset_n(hdphy_1_rxadc_reset_n_int),
      .hdphy_1_rxadc_data(hdphy_1_rxadc_data),
      .hdphy_2_rxadc_dataclk(hdphy_2_rxadc_dataclk_int),
      .hdphy_2_rxadc_reset_n(hdphy_2_rxadc_reset_n_int),
      .hdphy_2_rxadc_data(hdphy_2_rxadc_data),
      .hdphy_3_rxadc_dataclk(hdphy_3_rxadc_dataclk_int),
      .hdphy_3_rxadc_reset_n(hdphy_3_rxadc_reset_n_int),
      .hdphy_3_rxadc_data(hdphy_3_rxadc_data),
      .hdphy_cm_rxadc_dataclk(1'b0),
      .hdphy_cm_rxadc_reset_n(1'b0),
      .hdphy_cm_rxadc_data({RXADC_DATA_WIDTH{1'b0}}),
      
      .rxadc_0_dsp_data(rxadc_0_dsp_data),
      .rxadc_1_dsp_data(rxadc_1_dsp_data),
      .rxadc_2_dsp_data(rxadc_2_dsp_data),
      .rxadc_3_dsp_data(rxadc_3_dsp_data),
      .rxadc_cm_dsp_data(rxadc_cm_dsp_data),
      
      .dsp_0_txdac_data(afe_if_tx_dac_0_data),
      .hdphy_0_txdac_dataclk(hdphy_0_txdac_dataclk_int),
      .hdphy_0_txdac_reset_n(hdphy_0_txdac_reset_n_int),
      .hdphy_0_txdac_data(hdphy_0_txdac_data),
      .dsp_lppf_tx_clk(dsp_lppf_tx_clk),
      .dsp_lppf_tx_reset_n(dsp_lppf_tx_reset_n),
      .lppf_tx_symb_lppf(lppf_tx_symb_lppf), 
      .dsp_1_txdac_data(afe_if_tx_dac_1_data),
      .hdphy_1_txdac_dataclk(hdphy_1_txdac_dataclk_int),
      .hdphy_1_txdac_reset_n(hdphy_1_txdac_reset_n_int),
      .hdphy_1_txdac_data(hdphy_1_txdac_data),
      .dsp_2_txdac_data(afe_if_tx_dac_2_data),
      .hdphy_2_txdac_dataclk(hdphy_2_txdac_dataclk_int),
      .hdphy_2_txdac_reset_n(hdphy_2_txdac_reset_n_int),
      .hdphy_2_txdac_data(hdphy_2_txdac_data),
      .dsp_3_txdac_data(afe_if_tx_dac_3_data),
      .hdphy_3_txdac_dataclk(hdphy_3_txdac_dataclk_int),
      .hdphy_3_txdac_reset_n(hdphy_3_txdac_reset_n_int),
      .hdphy_3_txdac_data(hdphy_3_txdac_data),
     
      
      .dsp_0_cndac_data(96'h0),
      .hdphy_0_cndac_dataclk(1'b0),
      .hdphy_0_cndac_reset_n(1'b0),
      .hdphy_0_cndac_data(),
      .dsp_1_cndac_data(96'h0),
      .hdphy_1_cndac_dataclk(1'b0),
      .hdphy_1_cndac_reset_n(1'b0),
      .hdphy_1_cndac_data(),
      .dsp_2_cndac_data(96'h0),
      .hdphy_2_cndac_dataclk(1'b0),
      .hdphy_2_cndac_reset_n(1'b0),
      .hdphy_2_cndac_data(),
      .dsp_3_cndac_data(96'h0),
      .hdphy_3_cndac_dataclk(1'b0),
      .hdphy_3_cndac_reset_n(1'b0),
      .hdphy_3_cndac_data(), 
      
      .dsp_i_adc_pi_inc(dsp_i_adc_pi_inc),
      .dsp_i_adc_pi_dec(dsp_i_adc_pi_dec),
      .dsp_i_dac_pi_inc(dsp_i_dac_pi_inc),
      .dsp_i_dac_pi_dec(dsp_i_dac_pi_dec),
      
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
      .squelch_0_out(squelch_0_out),
      .squelch_1_in(squelch_1_in),
      .squelch_1_out(squelch_1_out),
      .squelch_2_in(squelch_2_in),
      .squelch_2_out(squelch_2_out),
      .squelch_3_in(squelch_3_in),
      .squelch_3_out(squelch_3_out),
      
      .snir_afe_if_test_bus_0(snir_afe_if_test_bus_0),
      .snir_afe_if_test_bus_1(snir_afe_if_test_bus_1),
      .snir_afe_if_test_bus_2(snir_afe_if_test_bus_2),
      .snir_afe_if_test_bus_3(snir_afe_if_test_bus_3),
      .snir_afe_if_test_bus_4(snir_afe_if_test_bus_4),
      .snir_afe_if_test_bus_5(snir_afe_if_test_bus_5),
      
      .hdphy_0_reset(hdphy_0_reset_int),
      .hdphy_1_reset(hdphy_1_reset_int),
      .hdphy_2_reset(hdphy_2_reset_int),
      .hdphy_3_reset(hdphy_3_reset_int),
      .hdphy_cm_reset(hdphy_cm_reset_int),
      .hdphy_cm_reffreq(hdphy_cm_reffreq),
      .ioctrl_pi_pe(ioctrl_pi_pe),
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
      .ioctrl_pi_ps(ioctrl_pi_ps),
      .hdphy_0_rxadc_reset(hdphy_0_rxadc_reset_int),
      .hdphy_0_pi_biastrim(hdphy_0_pi_biastrim),
      .hdphy_0_tx_cmnmodeamp_en(hdphy_0_tx_cmnmodeamp_en),
      .hdphy_1_rxadc_reset(hdphy_1_rxadc_reset_int),
      .hdphy_1_pi_biastrim(hdphy_1_pi_biastrim),
      .hdphy_1_tx_cmnmodeamp_en(hdphy_1_tx_cmnmodeamp_en),
      .hdphy_2_rxadc_reset(hdphy_2_rxadc_reset_int),
      .hdphy_2_pi_biastrim(hdphy_2_pi_biastrim),
      .hdphy_2_tx_cmnmodeamp_en(hdphy_2_tx_cmnmodeamp_en),
      .hdphy_3_rxadc_reset(hdphy_3_rxadc_reset_int),
      .hdphy_3_pi_biastrim(hdphy_3_pi_biastrim),
      .hdphy_3_tx_cmnmodeamp_en(hdphy_3_tx_cmnmodeamp_en),
      .hdphy_cm_rxadc_reset(hdphy_cm_rxadc_reset_int),
      .hdphy_cm_pi_biastrim(hdphy_cm_pi_biastrim),
      .hdphy_cm_rccal_compout(hdphy_cm_rccal_compout),
      .ioctrl_pi_sl(ioctrl_pi_sl),
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
      .spare_0(spare_0),
      .ioctrl_pi_st1(ioctrl_pi_st1),
      .hdphy_0_txdac_clksel(hdphy_0_txdac_clksel),
      .hdphy_0_tx_en(hdphy_0_tx_en),
      .hdphy_1_txdac_clksel(hdphy_1_txdac_clksel),
      .hdphy_1_tx_en(hdphy_1_tx_en),
      .hdphy_2_txdac_clksel(hdphy_2_txdac_clksel),
      .hdphy_2_tx_en(hdphy_2_tx_en),
      .hdphy_3_txdac_clksel(hdphy_3_txdac_clksel),
      .hdphy_3_tx_en(hdphy_3_tx_en),
      .ioctrl_pi_st0(ioctrl_pi_st0),
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
      .hdphy_cm_pll_altrefclksel(hdphy_cm_pll_altrefclksel_int),
      .ioctrl_pi_he(ioctrl_pi_he),
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
      .hdphy_cm_pll_bgen(hdphy_cm_pll_bgen_int),
      .ioctrl_pi_ds1(ioctrl_pi_ds1),
      .hdphy_cm_pll_bypass(hdphy_cm_pll_bypass_int),
      .hdphy_cm_pll_clk3div(hdphy_cm_pll_clk3div_int),
      .gpio_config(gpio_config),
      .ioctrl_pi_ds0(ioctrl_pi_ds0),
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
      .ioctrl_hdsbi_pe(ioctrl_hdsbi_pe),
      .hdphy_0_rxadc_f2isel(hdphy_0_rxadc_f2isel),
      .hdphy_0_cnpi_phase0(hdphy_0_cnpi_phase0),
      .hdphy_1_rxadc_f2isel(hdphy_1_rxadc_f2isel),
      .hdphy_1_cnpi_phase0(hdphy_1_cnpi_phase0),
      .hdphy_2_rxadc_f2isel(hdphy_2_rxadc_f2isel),
      .hdphy_2_cnpi_phase0(hdphy_2_cnpi_phase0),
      .hdphy_3_rxadc_f2isel(hdphy_3_rxadc_f2isel),
      .hdphy_3_cnpi_phase0(hdphy_3_cnpi_phase0),
      .hdphy_cm_rxadc_f2isel(hdphy_cm_rxadc_f2isel),
      .hdphy_cm_pll_vcocalbyp(hdphy_cm_pll_vcocalbyp_int),
      .ioctrl_hdsbi_ps(ioctrl_hdsbi_ps),
      .hdphy_0_tx_offset(hdphy_0_tx_offset),
      .hdphy_0_cnpi_caldone(hdphy_0_cnpi_caldone),
      .hdphy_1_tx_offset(hdphy_1_tx_offset),
      .hdphy_1_cnpi_caldone(hdphy_1_cnpi_caldone),
      .hdphy_2_tx_offset(hdphy_2_tx_offset),
      .hdphy_2_cnpi_caldone(hdphy_2_cnpi_caldone),
      .hdphy_3_tx_offset(hdphy_3_tx_offset),
      .hdphy_3_cnpi_caldone(hdphy_3_cnpi_caldone),
      .hdphy_cm_pll_cpgain(hdphy_cm_pll_cpgain_int),
      .hdphy_cm_pll_vcocalstart(hdphy_cm_pll_vcocalstart_int),
      .ioctrl_hdsbi_sl(ioctrl_hdsbi_sl),
      .hdphy_0_hyb_repincapcors(hdphy_0_hyb_repincapcors),
      .hdphy_1_hyb_repincapcors(hdphy_1_hyb_repincapcors),
      .hdphy_2_hyb_repincapcors(hdphy_2_hyb_repincapcors),
      .hdphy_3_hyb_repincapcors(hdphy_3_hyb_repincapcors),
      .hdphy_cm_hyb_repincapcors(hdphy_cm_hyb_repincapcors),
      .hdphy_cm_pll_en(hdphy_cm_pll_en_int),
      .spare_1(spare_1),
      .ioctrl_hdsbi_st1(ioctrl_hdsbi_st1),
      .hdphy_0_txdac_gain(hdphy_0_txdac_gain),
      .hdphy_1_txdac_gain(hdphy_1_txdac_gain),
      .hdphy_2_txdac_gain(hdphy_2_txdac_gain),
      .hdphy_3_txdac_gain(hdphy_3_txdac_gain),
      .dack_3_en(dack_3_en),
      .ioctrl_hdsbi_st0(ioctrl_hdsbi_st0),
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
      .dack_2_en(dack_2_en),
      .ioctrl_hdsbi_he(ioctrl_hdsbi_he),
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
      .sram_1_full(sram_1_full),
      .dack_1_en(dack_1_en),
      .ioctrl_hdsbi_ds1(ioctrl_hdsbi_ds1),
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
      .sram_0_full(sram_0_full),
      .dack_0_en(dack_0_en),
      .ioctrl_hdsbi_ds0(ioctrl_hdsbi_ds0),
      .sram_lastaddr(sram_lastaddr),
      .rxpifg_0_cnt(rxpifg_0_cnt),
      .rxpifg_1_cnt(rxpifg_1_cnt),
      .rxpifg_2_cnt(rxpifg_2_cnt),
      .rxpifg_3_cnt(rxpifg_3_cnt),
      .rxpifg_cm_cnt(rxpifg_cm_cnt),
      .txpifg_0_cnt(txpifg_0_cnt),
      .txpifg_1_cnt(txpifg_1_cnt),
      .txpifg_2_cnt(txpifg_2_cnt),
      .txpifg_3_cnt(txpifg_3_cnt),
      .cnpifg_0_cnt(cnpifg_0_cnt),
      .cnpifg_1_cnt(cnpifg_1_cnt),
      .cnpifg_2_cnt(cnpifg_2_cnt),
      .cnpifg_3_cnt(cnpifg_3_cnt),
      .txreg_0_lfsr_seed(txreg_0_lfsr_seed),
      .txreg_1_lfsr_seed(txreg_1_lfsr_seed),
      .txreg_2_lfsr_seed(txreg_2_lfsr_seed),
      .txreg_3_lfsr_seed(txreg_3_lfsr_seed),
      .cnreg_0_lfsr_seed(cnreg_0_lfsr_seed),
      .cnreg_1_lfsr_seed(cnreg_1_lfsr_seed),
      .cnreg_2_lfsr_seed(cnreg_2_lfsr_seed),
      .cnreg_3_lfsr_seed(cnreg_3_lfsr_seed),
      .rxreg_train_1(rxreg_train_1),
      .lfsr_wb_lut_p15(lfsr_wb_lut_p15),
      .lfsr_wb_lut_p13(lfsr_wb_lut_p13),
      .lfsr_wb_lut_p11(lfsr_wb_lut_p11),
      .lfsr_wb_lut_p9(lfsr_wb_lut_p9),
      .lfsr_wb_lut_p7(lfsr_wb_lut_p7),
      .lfsr_wb_lut_p5(lfsr_wb_lut_p5),
      .lfsr_wb_lut_p3(lfsr_wb_lut_p3),
      .lfsr_wb_lut_p1(lfsr_wb_lut_p1),
      .lfsr_wb_lut_m1(lfsr_wb_lut_m1),
      .lfsr_wb_lut_m3(lfsr_wb_lut_m3),
      .lfsr_wb_lut_m5(lfsr_wb_lut_m5),
      .lfsr_wb_lut_m7(lfsr_wb_lut_m7),
      .lfsr_wb_lut_m9(lfsr_wb_lut_m9),
      .lfsr_wb_lut_m11(lfsr_wb_lut_m11),
      .lfsr_wb_lut_m13(lfsr_wb_lut_m13),
      .lfsr_wb_lut_m15(lfsr_wb_lut_m15),
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
      .ioctrl_regif_pe(ioctrl_regif_pe),
      .txck_3_en(txck_3_en),
      .cnck_3_en(cnck_3_en),
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
      .ioctrl_regif_ps(ioctrl_regif_ps),
      .txck_2_en(txck_2_en),
      .cnck_2_en(cnck_2_en),
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
      .ioctrl_regif_sl(ioctrl_regif_sl),
      .sram_1_ce(sram_1_ce),
      .txck_1_en(txck_1_en),
      .cnck_1_en(cnck_1_en),
      .hdphy_cm_rccal_start(hdphy_cm_rccal_start),
      .hdphy_cm_pll_fbdiv(hdphy_cm_pll_fbdiv_int),
      .hdphy_cm_pll_clk5div(hdphy_cm_pll_clk5div),
      .ioctrl_regif_st1(ioctrl_regif_st1),
      .sram_0_ce(sram_0_ce),
      .txck_0_en(txck_0_en),
      .cnck_0_en(cnck_0_en),
      .hdphy_0_cndac_clksel(hdphy_0_cndac_clksel),
      .hdphy_1_cndac_clksel(hdphy_1_cndac_clksel),
      .hdphy_2_cndac_clksel(hdphy_2_cndac_clksel),
      .hdphy_3_cndac_clksel(hdphy_3_cndac_clksel),
      .hdphy_cm_pll_filtersel(hdphy_cm_pll_filtersel_int),
      .ioctrl_regif_st0(ioctrl_regif_st0),
      .rxda_3_en(rxda_3_en),
      .txda_3_en(txda_3_en),
      .cnda_3_en(cnda_3_en),
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
      .hdphy_cm_pll_openloop(hdphy_cm_pll_openloop_int),
      .ioctrl_regif_he(ioctrl_regif_he),
      .rxda_2_en(rxda_2_en),
      .txda_2_en(txda_2_en),
      .cnda_2_en(cnda_2_en),
      .rxpifg_0_burst(rxpifg_0_burst),
      .rxpifg_1_burst(rxpifg_1_burst),
      .rxpifg_2_burst(rxpifg_2_burst),
      .rxpifg_3_burst(rxpifg_3_burst),
      .rxpifg_cm_burst(rxpifg_cm_burst),
      .txpifg_0_burst(txpifg_0_burst),
      .txpifg_1_burst(txpifg_1_burst),
      .txpifg_2_burst(txpifg_2_burst),
      .txpifg_3_burst(txpifg_3_burst),
      .cnpifg_0_burst(cnpifg_0_burst),
      .cnpifg_1_burst(cnpifg_1_burst),
      .cnpifg_2_burst(cnpifg_2_burst),
      .cnpifg_3_burst(cnpifg_3_burst),
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
      .hdphy_cm_pll_refclkdiv2(hdphy_cm_pll_refclkdiv2_int),
      .ioctrl_regif_ds1(ioctrl_regif_ds1),
      .rxda_1_en(rxda_1_en),
      .txda_1_en(txda_1_en),
      .cnda_1_en(cnda_1_en),
      .rxpifg_0_inc(rxpifg_0_inc),
      .rxpifg_1_inc(rxpifg_1_inc),
      .rxpifg_2_inc(rxpifg_2_inc),
      .rxpifg_3_inc(rxpifg_3_inc),
      .rxpifg_cm_inc(rxpifg_cm_inc),
      .txpifg_0_inc(txpifg_0_inc),
      .txpifg_1_inc(txpifg_1_inc),
      .txpifg_2_inc(txpifg_2_inc),
      .txpifg_3_inc(txpifg_3_inc),
      .cnpifg_0_inc(cnpifg_0_inc),
      .cnpifg_1_inc(cnpifg_1_inc),
      .cnpifg_2_inc(cnpifg_2_inc),
      .cnpifg_3_inc(cnpifg_3_inc),
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
      .hdphy_cm_pll_stby(hdphy_cm_pll_stby_int),
      .hdphy_cm_pll_clk6div(hdphy_cm_pll_clk6div),
      .hdphy_cm_pll_vcocalband(hdphy_cm_pll_vcocalband),
      .spare_2(spare_2),
      .ioctrl_regif_ds0(ioctrl_regif_ds0),
      .sram_sel(sram_sel),
      .rxda_0_en(rxda_0_en),
      .txda_0_en(txda_0_en),
      .cnda_0_en(cnda_0_en),
      .rxpifg_0_en(rxpifg_0_en),
      .rxpifg_1_en(rxpifg_1_en),
      .rxpifg_2_en(rxpifg_2_en),
      .rxpifg_3_en(rxpifg_3_en),
      .rxpifg_cm_en(rxpifg_cm_en),
      .txpifg_0_en(txpifg_0_en),
      .txpifg_1_en(txpifg_1_en),
      .txpifg_2_en(txpifg_2_en),
      .txpifg_3_en(txpifg_3_en),
      .cnpifg_0_en(cnpifg_0_en),
      .cnpifg_1_en(cnpifg_1_en),
      .cnpifg_2_en(cnpifg_2_en),
      .cnpifg_3_en(cnpifg_3_en),
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
      .hdphy_cm_pll_termen(hdphy_cm_pll_termen_int),
      .hdphy_cm_atbchan(hdphy_cm_atbchan),
      .ioctrl_gpio_pe(ioctrl_gpio_pe),
      .ioctrl_refclk_pe(ioctrl_refclk_pe),
      .sram_1_start(sram_1_start),
      .rxda_ddr(rxda_ddr),
      .txda_ddr(txda_ddr),
      .cnda_ddr(cnda_ddr),
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
      .ioctrl_gpio_ps(ioctrl_gpio_ps),
      .ioctrl_refclk_ps(ioctrl_refclk_ps),
      .rxda_ddrdiv4(rxda_ddrdiv4),
      .txda_ddrdiv4(txda_ddrdiv4),
      .cnda_ddrdiv4(cnda_ddrdiv4),
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
      .hdphy_cm_pll_clk1en(hdphy_cm_pll_clk1en_int),
      .hdphy_cm_atbblk(hdphy_cm_atbblk),
      .hdphy_cm_rxpi_caldone(hdphy_cm_rxpi_caldone),
      .ioctrl_gpio_sl(ioctrl_gpio_sl),
      .ioctrl_refclk_sl(ioctrl_refclk_sl),
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
      .hdphy_cm_pll_clk2en(hdphy_cm_pll_clk2en_int),
      .chipid(chipid),
      .ioctrl_gpio_st1(ioctrl_gpio_st1),
      .ioctrl_refclk_st1(ioctrl_refclk_st1),
      .sram_1_mode(sram_1_mode),
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
      .hdphy_cm_pll_vcoitrim(hdphy_cm_pll_vcoitrim_int),
      .hdphy_cm_pll_clk3en(hdphy_cm_pll_clk3en_int),
      .ioctrl_gpio_st0(ioctrl_gpio_st0),
      .ioctrl_refclk_st0(ioctrl_refclk_st0),
      .sram_0_start(sram_0_start),
      .rxreg_0_train_sel(rxreg_0_train_sel),
      .rxreg_1_train_sel(rxreg_1_train_sel),
      .rxreg_2_train_sel(rxreg_2_train_sel),
      .rxreg_3_train_sel(rxreg_3_train_sel),
      .rxreg_cm_train_sel(rxreg_cm_train_sel),
      .hdphy_0_rxadc_en(hdphy_0_rxadc_en_int),
      .hdphy_0_cndac_en(hdphy_0_cndac_en),
      .hdphy_0_tx_rep_prescascamp_en(hdphy_0_tx_rep_prescascamp_en),
      .hdphy_1_rxadc_en(hdphy_1_rxadc_en_int),
      .hdphy_1_cndac_en(hdphy_1_cndac_en),
      .hdphy_1_tx_rep_prescascamp_en(hdphy_1_tx_rep_prescascamp_en),
      .hdphy_2_rxadc_en(hdphy_2_rxadc_en_int),
      .hdphy_2_cndac_en(hdphy_2_cndac_en),
      .hdphy_2_tx_rep_prescascamp_en(hdphy_2_tx_rep_prescascamp_en),
      .hdphy_3_rxadc_en(hdphy_3_rxadc_en_int),
      .hdphy_3_cndac_en(hdphy_3_cndac_en),
      .hdphy_3_tx_rep_prescascamp_en(hdphy_3_tx_rep_prescascamp_en),
      .hdphy_cm_rxadc_en(hdphy_cm_rxadc_en_int),
      .hdphy_cm_xosc_clk1_en(hdphy_cm_xosc_clk1_en),
      .hdphy_cm_pll_clk4en(hdphy_cm_pll_clk4en_int),
      .ioctrl_gpio_he(ioctrl_gpio_he),
      .ioctrl_refclk_he(ioctrl_refclk_he),
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
      .ioctrl_gpio_ds1(ioctrl_gpio_ds1),
      .ioctrl_refclk_ds1(ioctrl_refclk_ds1),
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
      .hdphy_cm_xosc_en(),
      .hdphy_cm_pll_vrefadj(hdphy_cm_pll_vrefadj_int),
      .hdphy_cm_pll_clk6en(hdphy_cm_pll_clk6en),
      .hdphy_cm_atbsel(hdphy_cm_atbsel),
      .hdphy_cm_rxpi_calcode(hdphy_cm_rxpi_calcode),
      .revision(revision),
      .ioctrl_gpio_ds0(ioctrl_gpio_ds0),
      .ioctrl_refclk_ds0(ioctrl_refclk_ds0),
      .sram_0_mode(sram_0_mode),
      .rxda_muxsel(rxda_muxsel),
      .txda_muxsel(txda_muxsel),
      .cnda_muxsel(cnda_muxsel),
      .rxreg_0_mode(rxreg_0_mode),
      .rxreg_1_mode(rxreg_1_mode),
      .rxreg_2_mode(rxreg_2_mode),
      .rxreg_3_mode(rxreg_3_mode),
      .rxreg_cm_mode(rxreg_cm_mode),
      .txreg_0_mode(txreg_0_mode),
      .txreg_1_mode(txreg_1_mode),
      .txreg_2_mode(txreg_2_mode),
      .txreg_3_mode(txreg_3_mode),
      .cnreg_0_mode(cnreg_0_mode),
      .cnreg_1_mode(cnreg_1_mode),
      .cnreg_2_mode(cnreg_2_mode),
      .cnreg_3_mode(cnreg_3_mode),
      .txreg_0_lfsr_div(txreg_0_lfsr_div),
      .txreg_1_lfsr_div(txreg_1_lfsr_div),
      .txreg_2_lfsr_div(txreg_2_lfsr_div),
      .txreg_3_lfsr_div(txreg_3_lfsr_div),
      .cnreg_0_lfsr_div(cnreg_0_lfsr_div),
      .cnreg_1_lfsr_div(cnreg_1_lfsr_div),
      .cnreg_2_lfsr_div(cnreg_2_lfsr_div),
      .cnreg_3_lfsr_div(cnreg_3_lfsr_div),
      .rxreg_train_0(rxreg_train_0),
      .txreg_0_fgen_freqa(txreg_0_fgen_freqa),
      .txreg_0_fgen_freqb(txreg_0_fgen_freqb),
      .txreg_1_fgen_freqa(txreg_1_fgen_freqa),
      .txreg_1_fgen_freqb(txreg_1_fgen_freqb),
      .txreg_2_fgen_freqa(txreg_2_fgen_freqa),
      .txreg_2_fgen_freqb(txreg_2_fgen_freqb),
      .txreg_3_fgen_freqa(txreg_3_fgen_freqa),
      .txreg_3_fgen_freqb(txreg_3_fgen_freqb),
      .cnreg_0_fgen_freqa(cnreg_0_fgen_freqa),
      .cnreg_0_fgen_freqb(cnreg_0_fgen_freqb),
      .cnreg_1_fgen_freqa(cnreg_1_fgen_freqa),
      .cnreg_1_fgen_freqb(cnreg_1_fgen_freqb),
      .cnreg_2_fgen_freqa(cnreg_2_fgen_freqa),
      .cnreg_2_fgen_freqb(cnreg_2_fgen_freqb),
      .cnreg_3_fgen_freqa(cnreg_3_fgen_freqa),
      .cnreg_3_fgen_freqb(cnreg_3_fgen_freqb),
      .lfsr_nb_lut_p15(lfsr_nb_lut_p15),
      .lfsr_nb_lut_p13(lfsr_nb_lut_p13),
      .lfsr_nb_lut_p11(lfsr_nb_lut_p11),
      .lfsr_nb_lut_p9(lfsr_nb_lut_p9),
      .lfsr_nb_lut_p7(lfsr_nb_lut_p7),
      .lfsr_nb_lut_p5(lfsr_nb_lut_p5),
      .lfsr_nb_lut_p3(lfsr_nb_lut_p3),
      .lfsr_nb_lut_p1(lfsr_nb_lut_p1),
      .lfsr_nb_lut_m1(lfsr_nb_lut_m1),
      .lfsr_nb_lut_m3(lfsr_nb_lut_m3),
      .lfsr_nb_lut_m5(lfsr_nb_lut_m5),
      .lfsr_nb_lut_m7(lfsr_nb_lut_m7),
      .lfsr_nb_lut_m9(lfsr_nb_lut_m9),
      .lfsr_nb_lut_m11(lfsr_nb_lut_m11),
      .lfsr_nb_lut_m13(lfsr_nb_lut_m13),
      .lfsr_nb_lut_m15(lfsr_nb_lut_m15),
      .ch0_lppf_mode(ch0_lppf_mode),
      .ch1_lppf_mode(ch1_lppf_mode),
      .ch2_lppf_mode(ch2_lppf_mode),
      .ch3_lppf_mode(ch3_lppf_mode),
      .cpu_snir_afe_if_ram_bus_add(piped_cpu_snir_afe_if_ram_bus_add[15:0]),
      .cpu_snir_afe_if_ram_bus_wr(piped_cpu_snir_afe_if_ram_bus_wr),
      .cpu_snir_afe_if_ram_bus_rd(piped_cpu_snir_afe_if_ram_bus_rd),
      .cpu_snir_afe_if_ram_bus_ack(piped_cpu_snir_afe_if_ram_bus_ack),
      .cpu_snir_afe_if_ram_bus_data_rd(piped_cpu_snir_afe_if_ram_bus_data_rd),
      .cpu_snir_afe_if_ram_data_bus_wr(piped_cpu_snir_afe_if_ram_data_bus_wr),
      .cpu_snir_afe_if_ram_byte_en(piped_cpu_snir_afe_if_ram_byte_en),
      .rx_dsp_test_bus(rx_dsp_test_bus_to_ram),
      .reg_snir_afe_if_rxadc_0_async_fifo_used(rxadc_0_async_fifo_used),
      .reg_snir_afe_if_rxadc_1_async_fifo_used(rxadc_1_async_fifo_used),
      .reg_snir_afe_if_rxadc_2_async_fifo_used(rxadc_2_async_fifo_used),
      .reg_snir_afe_if_rxadc_3_async_fifo_used(rxadc_3_async_fifo_used),  
      .reg_hdphy_rxadc_dataclk_div_ratio(reg_hdphy_rxadc_dataclk_div_ratio),
      .reg_rcv_clk_div_ratio            (reg_rcv_clk_div_ratio),
      .reg_adc_decim_mode               (reg_adc_decim_mode), 
      .reg_adc_decim_mode_sw_override   (reg_adc_decim_mode_sw_override),
      
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

   assign ch0_lppf_mode_pre = (phy_path_type_sel_0 == LPPF_path);
   assign ch1_lppf_mode_pre = (phy_path_type_sel_1 == LPPF_path);
   assign ch2_lppf_mode_pre = (phy_path_type_sel_2 == LPPF_path);
   assign ch3_lppf_mode_pre = (phy_path_type_sel_3 == LPPF_path);

   vl_sync ch0_lppf_mode_sync
     (
      .data_in(ch0_lppf_mode_pre),
      .data_out(ch0_lppf_mode),
      .clk(hdphy_0_txdac_dataclk_int),
      .reset_n(hdphy_0_txdac_reset_n_int)
      );

   vl_sync ch1_lppf_mode_sync
     (
      .data_in(ch1_lppf_mode_pre),
      .data_out(ch1_lppf_mode),
      .clk(hdphy_1_txdac_dataclk_int),
      .reset_n(hdphy_1_txdac_reset_n_int)
      );

   vl_sync ch2_lppf_mode_sync
     (
      .data_in(ch2_lppf_mode_pre),
      .data_out(ch2_lppf_mode),
      .clk(hdphy_2_txdac_dataclk_int),
      .reset_n(hdphy_2_txdac_reset_n_int)
      );
   
   vl_sync ch3_lppf_mode_sync
     (
      .data_in(ch3_lppf_mode_pre),
      .data_out(ch3_lppf_mode),
      .clk(hdphy_3_txdac_dataclk_int),
      .reset_n(hdphy_3_txdac_reset_n_int)
      );
      

   
   
   
   
   Snir_afe_prot_ctrl Snir_afe_prot_ctrl_inst
     (
      
      .hdphy_cm_pll_vcocalbyp_out	(hdphy_cm_pll_vcocalbyp	      ),
      .hdphy_cm_pll_fbdiv_out		(hdphy_cm_pll_fbdiv	      ),
      .hdphy_cm_pll_vrefadj_out		(hdphy_cm_pll_vrefadj	      ),
      .hdphy_cm_pll_vcoitrim_out	(hdphy_cm_pll_vcoitrim	      ),
      .hdphy_cm_pll_termen_out		(hdphy_cm_pll_termen	      ),
      .hdphy_cm_pll_refclkdiv2_out	(hdphy_cm_pll_refclkdiv2      ),
      .hdphy_cm_pll_openloop_out	(hdphy_cm_pll_openloop	      ),
      .hdphy_cm_pll_filtersel_out	(hdphy_cm_pll_filtersel	      ),
      .hdphy_cm_pll_cpgain_out		(hdphy_cm_pll_cpgain	      ),
      .hdphy_cm_pll_bgen_out		(hdphy_cm_pll_bgen	      ),
      .hdphy_cm_pll_altrefclksel_out	(hdphy_cm_pll_altrefclksel    ),
      .hdphy_cm_pll_clk3div_out		(hdphy_cm_pll_clk3div	      ),
      .hdphy_cm_pll_en_out		(hdphy_cm_pll_en              ),
      .hdphy_cm_reset_out		(hdphy_cm_reset               ),
      .hdphy_cm_rxadc_en_out	        (hdphy_cm_rxadc_en            ),
      .hdphy_cm_rxadc_reset_out	        (hdphy_cm_rxadc_reset         ),
      .hdphy_cm_xosc_en 	        (hdphy_cm_xosc_en             ),
      .hdphy_0_reset_out 	        (hdphy_0_reset                ),
      .hdphy_0_rxadc_en_out	        (hdphy_0_rxadc_en             ),
      .hdphy_0_rxadc_reset_out	        (hdphy_0_rxadc_reset          ),
      .hdphy_1_reset_out 	        (hdphy_1_reset                ),
      .hdphy_1_rxadc_en_out	        (hdphy_1_rxadc_en             ),
      .hdphy_1_rxadc_reset_out	        (hdphy_1_rxadc_reset          ),
      .hdphy_2_reset_out 	        (hdphy_2_reset                ),
      .hdphy_2_rxadc_en_out	        (hdphy_2_rxadc_en             ),
      .hdphy_2_rxadc_reset_out	        (hdphy_2_rxadc_reset          ),
      .hdphy_3_reset_out 	        (hdphy_3_reset                ),
      .hdphy_3_rxadc_en_out	        (hdphy_3_rxadc_en             ),
      .hdphy_3_rxadc_reset_out	        (hdphy_3_rxadc_reset          ),
      
      
      .hdphy_cm_pll_vcocalbyp_in	(hdphy_cm_pll_vcocalbyp_int   ),
      .hdphy_cm_pll_fbdiv_in		(hdphy_cm_pll_fbdiv_int       ),
      .hdphy_cm_pll_vrefadj_in		(hdphy_cm_pll_vrefadj_int     ),
      .hdphy_cm_pll_vcoitrim_in	        (hdphy_cm_pll_vcoitrim_int    ),
      .hdphy_cm_pll_termen_in		(hdphy_cm_pll_termen_int      ),
      .hdphy_cm_pll_refclkdiv2_in	(hdphy_cm_pll_refclkdiv2_int  ),
      .hdphy_cm_pll_openloop_in	        (hdphy_cm_pll_openloop_int    ),
      .hdphy_cm_pll_filtersel_in	(hdphy_cm_pll_filtersel_int   ),
      .hdphy_cm_pll_cpgain_in		(hdphy_cm_pll_cpgain_int      ),
      .hdphy_cm_pll_bgen_in		(hdphy_cm_pll_bgen_int        ),
      .hdphy_cm_pll_altrefclksel_in	(hdphy_cm_pll_altrefclksel_int),
      .hdphy_cm_pll_clk3div_in		(hdphy_cm_pll_clk3div_int     ),
      .hdphy_cm_pll_en_in		(hdphy_cm_pll_en_int2         ),
      .hdphy_cm_reset_in		(hdphy_cm_reset_int2          ),
      .hdphy_cm_rxadc_en_in	        (hdphy_cm_rxadc_en_int        ),
      .hdphy_cm_rxadc_reset_in	        (hdphy_cm_rxadc_reset_int     ),
      .hdphy_0_reset_in 	        (hdphy_0_reset_int            ),
      .hdphy_0_rxadc_en_in 	        (hdphy_0_rxadc_en_int         ),
      .hdphy_0_rxadc_reset_in 	        (hdphy_0_rxadc_reset_int      ),
      .hdphy_1_reset_in 	        (hdphy_1_reset_int            ),
      .hdphy_1_rxadc_en_in 	        (hdphy_1_rxadc_en_int         ),
      .hdphy_1_rxadc_reset_in 	        (hdphy_1_rxadc_reset_int      ),
      .hdphy_2_reset_in 	        (hdphy_2_reset_int            ),
      .hdphy_2_rxadc_en_in 	        (hdphy_2_rxadc_en_int         ),
      .hdphy_2_rxadc_reset_in 	        (hdphy_2_rxadc_reset_int      ),
      .hdphy_3_reset_in 	        (hdphy_3_reset_int            ),
      .hdphy_3_rxadc_en_in 	        (hdphy_3_rxadc_en_int         ),
      .hdphy_3_rxadc_reset_in 	        (hdphy_3_rxadc_reset_int      ),
      
      
      .scan_mode                        (scan_mode)
      );
   
   vl_pll_fsm Snir_vl_pll_fsm_int
     (
      
      .pll_switch			(pll_switch_int),         
      .pll_reset_release		(pll_reset_release_int),  
     
      
      .hdphy_cm_pll_vcocalstart_out     (hdphy_cm_pll_vcocalstart),
      .hdphy_cm_pll_bypass_out		(hdphy_cm_pll_bypass),
      .hdphy_cm_pll_en_out		(hdphy_cm_pll_en_int2),
      .hdphy_cm_reset_out		(hdphy_cm_reset_int2),
      .hdphy_cm_pll_stby_out            (hdphy_cm_pll_stby),
      .sys_clk_pll_enable_out		(sys_clk_pll_enable_pre),
      .hdphy_cm_pll_clk1en_out		(hdphy_cm_pll_clk1en),
      .hdphy_cm_pll_clk2en_out		(hdphy_cm_pll_clk2en),
      .hdphy_cm_pll_clk3en_out		(hdphy_cm_pll_clk3en),
      .hdphy_cm_pll_clk4en_out		(hdphy_cm_pll_clk4en),
      .hdphy_cm_pll_vcocalstart_in      (hdphy_cm_pll_vcocalstart_int),
      .hdphy_cm_pll_bypass_in		(hdphy_cm_pll_bypass_int),
      .hdphy_cm_pll_stby_in             (hdphy_cm_pll_stby_int),
      .hdphy_cm_pll_en_in		(hdphy_cm_pll_en_int),
      .hdphy_cm_reset_in		(hdphy_cm_reset_int),
      .sys_clk_pll_enable_in		(sys_clk_pll_enable_ff), 
      .hdphy_cm_pll_clk1en_in		(hdphy_cm_pll_clk1en_int),
      .hdphy_cm_pll_clk2en_in		(hdphy_cm_pll_clk2en_int),
      .hdphy_cm_pll_clk3en_in		(hdphy_cm_pll_clk3en_int),
      .hdphy_cm_pll_clk4en_in		(hdphy_cm_pll_clk4en_int),
     
      
      .enable				(activate_pll),           
      .switch				(sys_clk_pll_enable_ff), 
      .cnt_val				(pll_cnt_val),
      .reset_n				(prel_reset_n),
      .clk                              (ref_clk_int)
      );


   
   always @(posedge ref_clk_int or negedge prel_reset_n)
     if  (!prel_reset_n)
       begin
          sys_clk_pll_enable    <= 1'b0;
          sys_clk_pll_enable_ff <= 1'b0;
       end
     else
       begin
          sys_clk_pll_enable    <= sys_clk_pll_enable_pre;
          sys_clk_pll_enable_ff <= sys_clk_pll_enable_int;
       end
       

   assign afe_pll_locked = hdphy_cm_pll_frlocked & hdphy_cm_pll_phlocked & hdphy_cm_pll_vcocaldone;


   vl_sync afe_pll_locked_sync
     (
      .data_in(afe_pll_locked),
      .data_out(afe_pll_locked_ind),
      .clk(snir_top_regs_sys_clk),
      .reset_n(snir_top_regs_sys_reset_n)
      );

   vl_sync vcocaldone_sync
     (
      .data_in(hdphy_cm_pll_vcocaldone),
      .data_out(hdphy_cm_pll_vcocaldone_ind),
      .clk(snir_top_regs_sys_clk),
      .reset_n(snir_top_regs_sys_reset_n)
      );

   vl_sync phlocked_ind_sync
     (
      .data_in(hdphy_cm_pll_phlocked),
      .data_out(hdphy_cm_pll_phlocked_ind),
      .clk(snir_top_regs_sys_clk),
      .reset_n(snir_top_regs_sys_reset_n)
      );
   
    vl_sync frlocked_ind_sync
     (
      .data_in(hdphy_cm_pll_frlocked),
      .data_out(hdphy_cm_pll_frlocked_ind),
      .clk(snir_top_regs_sys_clk),
      .reset_n(snir_top_regs_sys_reset_n)
      );
   
    vl_sync u_sys_pll_switch
     (
      .data_in(pll_switch_int),
      .data_out(pll_switch),
      .clk(snir_top_regs_sys_clk),
      .reset_n(snir_top_regs_sys_reset_n)
      );
   
    vl_sync u_sys_pll_reset_release
     (
      .data_in(pll_reset_release_int),
      .data_out(pll_reset_release),
      .clk(snir_top_regs_sys_clk),
      .reset_n(snir_top_regs_sys_reset_n)
      );
   
    

   
   
   
   
   
   
   
   Snir_phy_clk_rst Snir_phy_clk_rst_inst
     (
      
      
      
      .main_pcs_sp3_rcv_clk(main_pcs_sp3_rcv_clk),
      .dsp_rcv_clk(dsp_rcv_clk),
      .afe_if_ch0_rcv_clk(afe_if_ch0_rcv_clk),
      .afe_if_ch1_rcv_clk(afe_if_ch1_rcv_clk),
      .afe_if_ch2_rcv_clk(afe_if_ch2_rcv_clk),
      .afe_if_ch3_rcv_clk(afe_if_ch3_rcv_clk),
      .bc_pcs_sys_clk(bc_pcs_sys_clk),
      
      .afe_if_sys_clk(afe_if_sys_clk),
      .tx_dsp_sys_clk(tx_dsp_sys_clk),
      .rx_dsp_sys_clk(rx_dsp_sys_clk),
      .dsp_sys_clk(dsp_sys_clk),
      .dsp_ch0_rcv_clk(dsp_ch0_rcv_clk),
      .dsp_ch1_rcv_clk(dsp_ch1_rcv_clk),
      .dsp_ch2_rcv_clk(dsp_ch2_rcv_clk),
      .dsp_ch3_rcv_clk(dsp_ch3_rcv_clk),
      .afe_if_rcv_clk(afe_if_rcv_clk),
      .bc_pcs_rcv_clk(bc_pcs_rcv_clk),
      .dsp_ch0_rcv_reset_n(dsp_ch0_rcv_reset_n),
      .dsp_ch1_rcv_reset_n(dsp_ch1_rcv_reset_n),
      .dsp_ch2_rcv_reset_n(dsp_ch2_rcv_reset_n),
      .dsp_ch3_rcv_reset_n(dsp_ch3_rcv_reset_n),                                                              
      .snir_top_regs_sys_clk(snir_top_regs_sys_clk),
      .hdphy_0_rxadc_dataclk_int(hdphy_0_rxadc_dataclk_int),
      .hdphy_1_rxadc_dataclk_int(hdphy_1_rxadc_dataclk_int),
      .hdphy_2_rxadc_dataclk_int(hdphy_2_rxadc_dataclk_int),
      .hdphy_3_rxadc_dataclk_int(hdphy_3_rxadc_dataclk_int),
      .hdphy_0_txdac_dataclk_int(hdphy_0_txdac_dataclk_int),
      .hdphy_1_txdac_dataclk_int(hdphy_1_txdac_dataclk_int),
      .hdphy_2_txdac_dataclk_int(hdphy_2_txdac_dataclk_int),
      .hdphy_3_txdac_dataclk_int(hdphy_3_txdac_dataclk_int),
      .ref_clk_int(ref_clk_int),
      .hdphy_0_rxadc_reset_n_int(hdphy_0_rxadc_reset_n_int),
      .hdphy_1_rxadc_reset_n_int(hdphy_1_rxadc_reset_n_int),
      .hdphy_2_rxadc_reset_n_int(hdphy_2_rxadc_reset_n_int),
      .hdphy_3_rxadc_reset_n_int(hdphy_3_rxadc_reset_n_int),
      .hdphy_0_txdac_reset_n_int(hdphy_0_txdac_reset_n_int),                        
      .hdphy_1_txdac_reset_n_int(hdphy_1_txdac_reset_n_int),                        
      .hdphy_2_txdac_reset_n_int(hdphy_2_txdac_reset_n_int),                        
      .hdphy_3_txdac_reset_n_int(hdphy_3_txdac_reset_n_int),
      
      .dsp_async_fifo_sys_clk(dsp_async_fifo_sys_clk),
      .dsp_rcv_tb_clk(dsp_rcv_tb_clk),
      .dsp_ch0_rcv_tb_clk(),
      .dsp_ch1_rcv_tb_clk(),
      .dsp_ch2_rcv_tb_clk(),
      .dsp_ch3_rcv_tb_clk(),                                         
      
      .dsp_lppf_tx_clk(dsp_lppf_tx_clk),
      .dsp_lppf_rx_clk(dsp_lppf_rx_clk),
      .afe_if_trn0_clk(afe_if_trn0_clk),
      .afe_if_trn1_clk(afe_if_trn1_clk),
      .afe_if_trn2_clk(afe_if_trn2_clk),
      .afe_if_trn3_clk(afe_if_trn3_clk),
      .dsp_trn_clk(dsp_trn_clk),
      .pcs_trn_clk(pcs_trn_clk),
      .dsp_ch0_trn_clk(dsp_ch0_trn_clk),
      .dsp_ch1_trn_clk(dsp_ch1_trn_clk),
      .dsp_ch2_trn_clk(dsp_ch2_trn_clk),
      .dsp_ch3_trn_clk(dsp_ch3_trn_clk),
      .dsp_trn_tb_clk(dsp_trn_tb_clk),
      .afe_if_trn_clk_in(afe_if_trn_clk_in),
      .dsp_ch0_trn_tb_clk(dsp_ch0_trn_tb_clk),
      .dsp_ch1_trn_tb_clk(dsp_ch1_trn_tb_clk),
      .dsp_ch2_trn_tb_clk(dsp_ch2_trn_tb_clk),
      .dsp_ch3_trn_tb_clk(dsp_ch3_trn_tb_clk),                                          
      
      .afe_if_squelch_clk(afe_if_squelch_clk),
      
      
      
      
      .main_pcs_sp3_rcv_reset_n(main_pcs_sp3_rcv_reset_n),
      .dsp_rcv_reset_n(dsp_rcv_reset_n),
      .afe_if_ch0_rcv_reset_n(afe_if_ch0_rcv_reset_n),
      .afe_if_ch1_rcv_reset_n(afe_if_ch1_rcv_reset_n),
      .afe_if_ch2_rcv_reset_n(afe_if_ch2_rcv_reset_n),
      .afe_if_ch3_rcv_reset_n(afe_if_ch3_rcv_reset_n),
      .bc_pcs_sys_reset_n(bc_pcs_sys_reset_n),
      .afe_if_rcv_reset_n(afe_if_rcv_reset_n),
      .bc_pcs_rcv_reset_n(bc_pcs_rcv_reset_n),
      .dsp_rcv_tb_reset_n(dsp_rcv_tb_reset_n),
      .dsp_async_fifo_reset_n(dsp_async_fifo_reset_n),
      .dsp_ch0_rcv_tb_reset_n(),
      .dsp_ch1_rcv_tb_reset_n(),
      .dsp_ch2_rcv_tb_reset_n(),
      .dsp_ch3_rcv_tb_reset_n(),                                          
      
      .afe_if_sys_reset_n(afe_if_sys_reset_n),
      .tx_dsp_sys_reset_n(tx_dsp_sys_reset_n),
      .rx_dsp_sys_reset_n(rx_dsp_sys_reset_n),
      .dsp_sys_reset_n(dsp_sys_reset_n),
      .snir_top_regs_sys_reset_n(snir_top_regs_sys_reset_n),
      .ref_reset_n_int(ref_reset_n_int),
      
      .dsp_lppf_tx_reset_n(dsp_lppf_tx_reset_n),
      .dsp_lppf_rx_reset_n(dsp_lppf_rx_reset_n),
      .afe_if_trn0_reset_n(afe_if_trn0_reset_n),
      .afe_if_trn1_reset_n(afe_if_trn1_reset_n),
      .afe_if_trn2_reset_n(afe_if_trn2_reset_n),
      .afe_if_trn3_reset_n(afe_if_trn3_reset_n),
      .dsp_trn_reset_n(dsp_trn_reset_n),
      .pcs_trn_reset_n(pcs_trn_reset_n),
      .dsp_ch0_trn_reset_n(dsp_ch0_trn_reset_n),
      .dsp_ch1_trn_reset_n(dsp_ch1_trn_reset_n),
      .dsp_ch2_trn_reset_n(dsp_ch2_trn_reset_n),
      .dsp_ch3_trn_reset_n(dsp_ch3_trn_reset_n),                        
      .dsp_ch0_trn_tb_reset_n(dsp_ch0_trn_tb_reset_n),
      .dsp_ch1_trn_tb_reset_n(dsp_ch1_trn_tb_reset_n),
      .dsp_ch2_trn_tb_reset_n(dsp_ch2_trn_tb_reset_n),
      .dsp_ch3_trn_tb_reset_n(dsp_ch3_trn_tb_reset_n),
      .dsp_trn_tb_reset_n(dsp_trn_tb_reset_n),
      .afe_if_trn_reset_n(afe_if_trn_reset_n),
      
      .afe_if_squelch_reset_n(afe_if_squelch_reset_n),
      .snir_dsp_lppf_tx_clk_out_en(snir_dsp_lppf_tx_clk_out_en),
      .snir_dsp_lppf_rx_clk_out_en(snir_dsp_lppf_rx_clk_out_en),
      
      
      
      .snir_modules_rcv_reset_n(snir_modules_rcv_reset_n),
      .snir_modules_rcv2_reset_n(snir_modules_rcv2_reset_n),
      .snir_modules_trn_reset_n(snir_modules_trn_reset_n),
      .snir_modules_trn2_reset_n(snir_modules_trn2_reset_n),
      
      
      
      
      .squelch_clk_div_ratio(squelch_clk_div_ratio),
      .lppf_clk_div_ratio(lppf_clk_div_ratio),
      .trn_clk_sel(trn_clk_sel),
      .afe_if_trn_clk_sel(afe_if_trn_clk_sel),
      .reg_rcv_clk_sel(reg_rcv_clk_sel),
      .modules_reset_done_rcv(modules_reset_done_rcv),
      .modules_reset_done_rcv2(modules_reset_done_rcv2),
      .modules_reset_done_trn(modules_reset_done_trn),
      .modules_reset_done_trn2(modules_reset_done_trn2),
      .reg_hdphy_rxadc_dataclk_div_ratio(reg_hdphy_rxadc_dataclk_div_ratio),
      .reg_rcv_clk_div_ratio(reg_rcv_clk_div_ratio),
      .reg_adc_decim_mode(reg_adc_decim_mode), 
      .reg_adc_decim_mode_sw_override(reg_adc_decim_mode_sw_override),
      
      .scan_mode(scan_mode),
      .scan_clock(sys_clk),
      .scan_enable(scan_enable),
      .rcv_clk_scan(rcv_clk_scan),
      .trn_clk_scan(trn_clk_scan),
      
      .sys_clk(sys_clk),
      .hdphy_0_rxadc_dataclk(hdphy_0_rxadc_dataclk),
      .hdphy_1_rxadc_dataclk(hdphy_1_rxadc_dataclk),
      .hdphy_2_rxadc_dataclk(hdphy_2_rxadc_dataclk),
      .hdphy_3_rxadc_dataclk(hdphy_3_rxadc_dataclk),
      .hdphy_0_txdac_dataclk(hdphy_0_txdac_dataclk),
      .hdphy_1_txdac_dataclk(hdphy_1_txdac_dataclk),
      .hdphy_2_txdac_dataclk(hdphy_2_txdac_dataclk),
      .hdphy_3_txdac_dataclk(hdphy_3_txdac_dataclk),
      .sys_reset_n(sys_reset_n),
      .ref_clk(ref_clk),
      .lppf_link_clk_div_en(lppf_link_clk_div_en),
      
      .Snir_phy_rcv_clk_in(Snir_phy_rcv_clk_in),
      .Snir_phy_trn_clk_in(Snir_phy_trn_clk_in),
      .Snir_phy_rcv_clk(Snir_phy_rcv_clk),
      .Snir_phy_trn_clk(Snir_phy_trn_clk)                                      
      );
   

   
   
   
   
   

   Snir_LPPF_DSP Snir_LPPF_DSP_inst
     (
      
      .lppf_tx_symb_lppf(lppf_tx_symb_lppf),
      .lppf_symbol_done(lppf_symbol_done),
      .lppf_tx_testbus(lppf_tx_testbus),
      .lppf_tx_bit(lppf_tx_bit),
      .lppf_tx_del(lppf_tx_del),
      .lppf_tx_mode(lppf_tx_mode),
      .lppf_tx_active(lppf_tx_active),
      .lppf_tx_rst(lppf_tx_rst),
      .HDSBI_MAIN_TX_LEVEL(HDSBI_MAIN_TX_LEVEL),
      .HDSBI_TX_CLK_CYCLES(HDSBI_TX_CLK_CYCLES),
      .HDSBI_TX_INIT_INTERP_PHASE(HDSBI_TX_INIT_INTERP_PHASE),
      .HDSBI_TX_SLOPE(HDSBI_TX_SLOPE),
      .HDSBI_TX_SYM_CYCLES(HDSBI_TX_SYM_CYCLES),
      .snir_dsp_lppf_tx_clk_out_en(snir_dsp_lppf_tx_clk_out_en),
      .snir_dsp_lppf_rx_clk_out_en(snir_dsp_lppf_rx_clk_out_en),
      .lppf_tx_enb(lppf_tx_enb),
      .LPPF_TX_Dest(LPPF_TX_Dest),
      
      .lppf_scrambler_reset(lppf_scrambler_reset),
      .lppf_rx_enb(lppf_rx_enb),
      .ADM_BURST_BLANKING_TIMER(ADM_BURST_BLANKING_TIMER),
      .ADM_BURST_CNT_THR(ADM_BURST_CNT_THR),
      .ADM_BURST_IGNORE_POL(ADM_BURST_IGNORE_POL),
      .ADM_BURST_MAX_TIMER(ADM_BURST_MAX_TIMER),
      .ADM_BURST_MIN_TIMER(ADM_BURST_MIN_TIMER),
      .ADM_CONT_MEAS_LEN(ADM_CONT_MEAS_LEN),
      .ADM_CONT_OFF_SAMPLES(ADM_CONT_OFF_SAMPLES),
      .ADM_CONT_SINGLE_MODE(ADM_CONT_SINGLE_MODE),
      .ADM_PULSE_THR(ADM_PULSE_THR),
      .HDSBI_SM_FB_TRANSITION_TBL(HDSBI_SM_FB_TRANSITION_TBL),
      .HDSBI_SM_HB_TRANSITION_TBL(HDSBI_SM_HB_TRANSITION_TBL),
      .HDSBI_DESC_LOCK_THR(HDSBI_DESC_LOCK_THR),
      .HDSBI_RXACTIVE_ON_SAMPLES(HDSBI_RXACTIVE_ON_SAMPLES),
      .HDSBI_SDET_OFF_SAMPLES_1(HDSBI_SDET_OFF_SAMPLES_1),
      .HDSBI_SDET_OFF_SAMPLES_2(HDSBI_SDET_OFF_SAMPLES_2),
      .HDSBI_SYNC_ZX_PERIOD(HDSBI_SYNC_ZX_PERIOD),      
      .hdsbi_error(hdsbi_error),
      .lppf_rx_rst(lppf_rx_rst),
      .LPPF_RX_Src(LPPF_RX_Src),
      .burst_test_rst_0(burst_test_rst_0),
      .burst_test_rst_1(burst_test_rst_1),
      .burst_test_rst_2(burst_test_rst_2),
      .burst_test_rst_3(burst_test_rst_3),
      .cont_test_rst_0(cont_test_rst_0),
      .cont_test_rst_1(cont_test_rst_1),
      .cont_test_rst_2(cont_test_rst_2),
      .cont_test_rst_3(cont_test_rst_3),
      .cont_test_done_0(cont_test_done_0),
      .cont_test_done_1(cont_test_done_1),
      .cont_test_done_2(cont_test_done_2),
      .cont_test_done_3(cont_test_done_3),
      .x_count_0(x_count_0),
      .x_count_1(x_count_1),
      .x_count_2(x_count_2),
      .x_count_3(x_count_3),
      .act_count_0(act_count_0),
      .act_count_1(act_count_1),
      .act_count_2(act_count_2),
      .act_count_3(act_count_3),
      .pulse_count_0(pulse_count_0),
      .pulse_count_1(pulse_count_1),
      .pulse_count_2(pulse_count_2),
      .pulse_count_3(pulse_count_3),
      .pulse_done_0(pulse_done_0),
      .pulse_done_1(pulse_done_1),
      .pulse_done_2(pulse_done_2),
      .pulse_done_3(pulse_done_3),
      .burst_test_done_0(burst_test_done_0),
      .burst_test_done_1(burst_test_done_1),
      .burst_test_done_2(burst_test_done_2),
      .burst_test_done_3(burst_test_done_3),
      .burst_period_0(burst_period_0),
      .burst_period_1(burst_period_1),
      .burst_period_2(burst_period_2),
      .burst_period_3(burst_period_3),
      .lppf_rx_active(lppf_rx_active),
      .lppf_bit_out(lppf_bit_out),
      .lppf_bit_sync(lppf_bit_sync),
      .lppf_del_on(lppf_del_on),
      .lppf_rx_testbus(lppf_rx_testbus),
      .BurstTest_test_bus(BurstTest_test_bus),
      .lppf_scrambler_lock(lppf_scrambler_lock),   
      .lppf_scrambler_lock_0(lppf_scrambler_lock_0),
      .lppf_scrambler_lock_1(lppf_scrambler_lock_1),
      .lppf_scrambler_lock_2(lppf_scrambler_lock_2),
      .lppf_scrambler_lock_3(lppf_scrambler_lock_3),
      
      .scan_enable(scan_enable),
      .dsp_lppf_tx_clk(dsp_lppf_tx_clk),
      .dsp_lppf_rx_clk(dsp_lppf_rx_clk),
      .dsp_lppf_rx_reset_n(dsp_lppf_rx_reset_n),
      .dsp_lppf_tx_reset_n(dsp_lppf_tx_reset_n),
      .squelch_0_in(squelch_0_out),
      .squelch_1_in(squelch_1_out),
      .squelch_2_in(squelch_2_out),
      .squelch_3_in(squelch_3_out)
      );

   assign lppf_tx_symb_lppf = 6'h0;
   assign lppf_symbol_done = 1'b0;
   assign lppf_tx_testbus = 18'h0;
   assign hdsbi_error = 4'h0;
   assign cont_test_done_0 = 1'b0;
   assign cont_test_done_1 = 1'b0;
   assign cont_test_done_2 = 1'b0;
   assign cont_test_done_3 = 1'b0;
   assign x_count_0 = 16'h0;
   assign x_count_1 = 16'h0;
   assign x_count_2 = 16'h0;
   assign x_count_3 = 16'h0;
   assign act_count_0 = 16'h0;
   assign act_count_1 = 16'h0;
   assign act_count_2 = 16'h0;
   assign act_count_3 = 16'h0;
   assign pulse_count_0 = 8'h0;
   assign pulse_count_1 = 8'h0;
   assign pulse_count_2 = 8'h0;
   assign pulse_count_3 = 8'h0;
   assign pulse_done_0 = 1'b0;
   assign pulse_done_1 = 1'b0;
   assign pulse_done_2 = 1'b0;
   assign pulse_done_3 = 1'b0;
   assign burst_test_done_0 = 1'b0;
   assign burst_test_done_1 = 1'b0;
   assign burst_test_done_2 = 1'b0;
   assign burst_test_done_3 = 1'b0;
   assign burst_period_0 = 18'h0;
   assign burst_period_1 = 18'h0;
   assign burst_period_2 = 18'h0;
   assign burst_period_3 = 18'h0;
   assign lppf_rx_active = 1'b0;
   assign lppf_bit_out = 1'b0;
   assign lppf_bit_sync = 1'b0;
   assign lppf_del_on = 1'b0;
   assign lppf_rx_testbus = 32'h0;
   assign BurstTest_test_bus = 32'h0;
   assign lppf_scrambler_lock = 2'h0;
   assign lppf_scrambler_lock_0 = 2'h0;
   assign lppf_scrambler_lock_1 = 2'h0;
   assign lppf_scrambler_lock_2 = 2'h0;
   assign lppf_scrambler_lock_3 = 2'h0;

   
   assign lppf_rx_descr_lock = |lppf_scrambler_lock;

   


   
   
   
   
   Snir_top_regs
      #(.w_add_bus (w_add_bus ),
        .w_data_bus(w_data_bus),
        .REG_SPACE (32'h90000000), .REG_MASK(32'h0000ffff)) Snir_top_regs_inst
      (
     .cont_test_done_0(cont_test_done_0),
     .cont_test_done_1(cont_test_done_1),
     .cont_test_done_2(cont_test_done_2),
     .cont_test_done_3(cont_test_done_3),
     .burst_test_done_0(burst_test_done_0),
     .burst_test_done_1(burst_test_done_1),
     .burst_test_done_2(burst_test_done_2),
     .burst_test_done_3(burst_test_done_3),
     .pulse_done_0(pulse_done_0),
     .pulse_done_1(pulse_done_1),
     .pulse_done_2(pulse_done_2),
     .pulse_done_3(pulse_done_3),
     .ADM_CONT_SINGLE_MODE(ADM_CONT_SINGLE_MODE),
     .ADM_BURST_MIN_TIMER(ADM_BURST_MIN_TIMER),
     .ADM_CONT_MEAS_LEN(ADM_CONT_MEAS_LEN),
     .rx_pi_dec_sel_ch3(rx_pi_dec_sel_ch3),
     .rx_pi_dec_sel_ch2(rx_pi_dec_sel_ch2),
     .rx_pi_dec_sel_ch1(rx_pi_dec_sel_ch1),
     .rx_pi_dec_sel_ch0(rx_pi_dec_sel_ch0),
     .eth_fb_phyid2(eth_fb_phyid2),
     .rx_pi_inc_sel_ch3(rx_pi_inc_sel_ch3),
     .ADM_PULSE_THR(ADM_PULSE_THR),
     .act_count_0(act_count_0),
     .act_count_1(act_count_1),
     .act_count_2(act_count_2),
     .act_count_3(act_count_3),
     .phy_test_chain_select_trn(phy_test_chain_select_trn),
     .rx_pi_inc_sel_ch2(rx_pi_inc_sel_ch2),
     .rx_pi_inc_sel_ch1(rx_pi_inc_sel_ch1),
     .HDSBI_SDET_OFF_SAMPLES_2(HDSBI_SDET_OFF_SAMPLES_2),
     .ADM_CONT_OFF_SAMPLES(ADM_CONT_OFF_SAMPLES),
     .rx_pi_inc_sel_ch0(rx_pi_inc_sel_ch0),
     .ADM_BURST_IGNORE_POL(ADM_BURST_IGNORE_POL),
     .HDSBI_TX_SLOPE(HDSBI_TX_SLOPE),
     .phy_path_type_sel_3(phy_path_type_sel_3),
     .HDSBI_RXACTIVE_ON_SAMPLES(HDSBI_RXACTIVE_ON_SAMPLES),
     .phy_path_type_sel_2(phy_path_type_sel_2),
     .HDSBI_SDET_OFF_SAMPLES_1(HDSBI_SDET_OFF_SAMPLES_1),
     .ADM_BURST_CNT_THR(ADM_BURST_CNT_THR),
     .burst_period_0(burst_period_0),
     .burst_period_1(burst_period_1),
     .burst_period_2(burst_period_2),
     .burst_period_3(burst_period_3),
     .phy_test_chain_select_rcv(phy_test_chain_select_rcv),
     .phy_path_type_sel_1(phy_path_type_sel_1),
     .lppf_scrambler_reset(lppf_scrambler_reset),
     .HDSBI_TX_INIT_INTERP_PHASE(HDSBI_TX_INIT_INTERP_PHASE),
     .burst_test_rst_3(burst_test_rst_3),
     .lppf_clk_div_ratio(lppf_clk_div_ratio),
     .lppf_rx_rst(lppf_rx_rst),
     .burst_test_rst_2(burst_test_rst_2),
     .lppf_scrambler_lock_3(lppf_scrambler_lock_3),
     .phy_path_type_sel_0(phy_path_type_sel_0),
     .trn_clk_sel(trn_clk_sel),
     .burst_test_rst_1(burst_test_rst_1),
     .pll_reset_release(pll_reset_release),
     .HDSBI_MAIN_TX_LEVEL(HDSBI_MAIN_TX_LEVEL),
     .HDSBI_DESC_LOCK_THR(HDSBI_DESC_LOCK_THR),
     .burst_test_rst_0(burst_test_rst_0),
     .lppf_scrambler_lock_2(lppf_scrambler_lock_2),
     .pll_switch(pll_switch),
     .cont_test_rst_3(cont_test_rst_3),
     .hdphy_cm_pll_vcocaldone_ind(hdphy_cm_pll_vcocaldone_ind),
     .lppf_rx_enb(lppf_rx_enb),
     .LPPF_TX_Dest(LPPF_TX_Dest),
     .cont_test_rst_2(cont_test_rst_2),
     .lppf_scrambler_lock_1(lppf_scrambler_lock_1),
     .hdphy_cm_pll_phlocked_ind(hdphy_cm_pll_phlocked_ind),
     .afe_if_trn_clk_sel(afe_if_trn_clk_sel),
     .pll_cnt_val(pll_cnt_val),
     .lppf_tx_rst(lppf_tx_rst),
     .cont_test_rst_1(cont_test_rst_1),
     .hdphy_cm_pll_frlocked_ind(hdphy_cm_pll_frlocked_ind),
     .eth_fb_phyid1(eth_fb_phyid1),
     .eth_fb_phyadd(eth_fb_phyadd),
     .squelch_clk_div_ratio(squelch_clk_div_ratio),
     .activate_pll(activate_pll),
     .lppf_tx_enb(lppf_tx_enb),
     .HDSBI_SYNC_ZX_PERIOD(HDSBI_SYNC_ZX_PERIOD),
     .HDSBI_TX_CLK_CYCLES(HDSBI_TX_CLK_CYCLES),
     .HDSBI_TX_SYM_CYCLES(HDSBI_TX_SYM_CYCLES),
     .LPPF_RX_Src(LPPF_RX_Src),
     .hdsbi_error(hdsbi_error),
     .ADM_BURST_BLANKING_TIMER(ADM_BURST_BLANKING_TIMER),
     .ADM_BURST_MAX_TIMER(ADM_BURST_MAX_TIMER),
     .cont_test_rst_0(cont_test_rst_0),
     .HDSBI_SM_FB_TRANSITION_TBL_31_0_(HDSBI_SM_FB_TRANSITION_TBL[31:0]),
     .HDSBI_SM_FB_TRANSITION_TBL_63_32_(HDSBI_SM_FB_TRANSITION_TBL[63:32]),
     .HDSBI_SM_FB_TRANSITION_TBL_95_64_(HDSBI_SM_FB_TRANSITION_TBL[95:64]),
     .HDSBI_SM_FB_TRANSITION_TBL_127_96_(HDSBI_SM_FB_TRANSITION_TBL[127:96]),
     .HDSBI_SM_FB_TRANSITION_TBL_159_128_(HDSBI_SM_FB_TRANSITION_TBL[159:128]),
     .HDSBI_SM_FB_TRANSITION_TBL_191_160_(HDSBI_SM_FB_TRANSITION_TBL[191:160]),
     .HDSBI_SM_HB_TRANSITION_TBL_31_0_(HDSBI_SM_HB_TRANSITION_TBL[31:0]),
     .HDSBI_SM_HB_TRANSITION_TBL_63_32_(HDSBI_SM_HB_TRANSITION_TBL[63:32]),
     .HDSBI_SM_HB_TRANSITION_TBL_95_64_(HDSBI_SM_HB_TRANSITION_TBL[95:64]),
     .HDSBI_SM_HB_TRANSITION_TBL_127_96_(HDSBI_SM_HB_TRANSITION_TBL[127:96]),
     .HDSBI_SM_HB_TRANSITION_TBL_159_128_(HDSBI_SM_HB_TRANSITION_TBL[159:128]),
     .HDSBI_SM_HB_TRANSITION_TBL_191_160_(HDSBI_SM_HB_TRANSITION_TBL[191:160]),
     .fpga_status_0(fpga_status_0),
     .fpga_status_1(fpga_status_1),
     .fpga_status_2(fpga_status_2),
     .fpga_status_3(fpga_status_3),
     .fpga_status_4(fpga_status_4),
     .fpga_status_5(fpga_status_5),
     .fpga_status_6(fpga_status_6),
     .fpga_status_7(fpga_status_7),
     .fpga_status_8(fpga_status_8),
     .fpga_status_9(fpga_status_9),
     .fpga_config_0(fpga_config_0),
     .fpga_config_1(fpga_config_1),
     .fpga_config_2(fpga_config_2),
     .fpga_config_3(fpga_config_3),
     .fpga_config_4(fpga_config_4),
     .fpga_config_5(fpga_config_5),
     .fpga_config_6(fpga_config_6),
     .fpga_config_7(fpga_config_7),
     .x_count_0(x_count_0),
     .pulse_count_0(pulse_count_0),
     .x_count_1(x_count_1),
     .pulse_count_1(pulse_count_1),
     .x_count_2(x_count_2),
     .pulse_count_2(pulse_count_2),
     .x_count_3(x_count_3),
     .pulse_count_3(pulse_count_3),
     .lppf_scrambler_lock_0(lppf_scrambler_lock_0),
     .afe_pll_locked_ind(afe_pll_locked_ind),
     .fpga_version_data(fpga_version_data),
     .reg_rcv_clk_sel(reg_rcv_clk_sel),
     .snir_phy_int_stat(snir_phy_int_stat),
     .snir_phy_int_mask(snir_phy_int_mask),
     .fpga_config_8(fpga_config_8),
     .fpga_config_9(fpga_config_9),
     .fpga_config_10(fpga_config_10),
     .fpga_config_11(fpga_config_11),
     .fpga_config_12(fpga_config_12),
     .fpga_config_13(fpga_config_13),
     .fpga_config_14(fpga_config_14),
     .fpga_config_15(fpga_config_15),
     .fpga_config_16(fpga_config_16),
     .fpga_config_17(fpga_config_17),
     .fpga_config_18(fpga_config_18),
     .fpga_config_19(fpga_config_19),
     .fpga_status_10(fpga_status_10),
     .fpga_status_11(fpga_status_11),
     .fpga_status_12(fpga_status_12),
     .fpga_status_13(fpga_status_13),
     .fpga_status_14(fpga_status_14),
     .fpga_status_15(fpga_status_15),
     .fpga_status_16(fpga_status_16),
     .fpga_status_17(fpga_status_17),
     .fpga_status_18(fpga_status_18),
     .fpga_status_19(fpga_status_19),
     .phy_test_chain_select_sys(phy_test_chain_select_sys),
     .lppf_crc_error_reg_w(lppf_crc_error_reg_w),
     .lppf_status_register_0_w(lppf_status_register_0_w),
     .snir_phy_int_stat_reg_w(snir_phy_int_stat_reg_w),
     .add_bus(snir_top_regs_rif_add_bus),
     .data_bus(snir_top_regs_rif_data_wr),
     .bus_wr(snir_top_regs_rif_wr),
     .byte_en(snir_top_regs_rif_byte_en),
     .bus_rd(snir_top_regs_rif_rd),
     .bus_ack(snir_top_regs_rif_ack),
     .data_bus_rd(snir_top_regs_rif_data_rd),
     .scan_enable(scan_enable),
     .clk(snir_top_regs_sys_clk),
     .reset_n(snir_top_regs_sys_reset_n)
   );


   Snir_reset_regs
      #(.w_add_bus (w_add_bus ),
        .w_data_bus(w_data_bus),
        .REG_SPACE (32'h90010000), .REG_MASK(32'h0000ffff)) Snir_reset_regs_inst
      (
     .snir_modules_rcv_reset_n(snir_modules_rcv_reset_n),
     .modules_reset_done_rcv(modules_reset_done_rcv),
     .snir_modules_trn_reset_n(snir_modules_trn_reset_n),
     .modules_reset_done_trn(modules_reset_done_trn),
     .snir_modules_rcv2_reset_n(snir_modules_rcv2_reset_n),
     .modules_reset_done_rcv2(modules_reset_done_rcv2),
     .snir_modules_trn2_reset_n(snir_modules_trn2_reset_n),
     .modules_reset_done_trn2(modules_reset_done_trn2),
     .add_bus(reset_regs_add_bus),
     .data_bus(reset_regs_data_wr),
     .bus_wr(reset_regs_wr),
     .byte_en(reset_regs_byte_en),
     .bus_rd(reset_regs_rd),
     .bus_ack(reset_regs_ack),
     .data_bus_rd(reset_regs_data_rd),
     .scan_enable(scan_enable),
     .clk(sys_clk),
     .reset_n(sys_reset_n)
   );



   




   
   
   
   
   

   assign test_bus_data_sys [00] = {32'h0, snir_afe_if_test_bus_5};
   assign test_bus_data_sys [01] = {46'h0, lppf_tx_testbus};
   assign test_bus_data_sys [02] = {32'h0, lppf_rx_testbus};
   assign test_bus_data_sys [03] = {32'h0, BurstTest_test_bus};

   assign phy_test_bus_sys_tb_cell[TEST_CHAIN_LEN_SYS] = {TEST_BUS_WIDTH{1'b0}};
   assign phy_test_bus_sys                             = phy_test_bus_sys_tb_cell[0];
      
   generate
      for (sys_test_bus_genvar = 0 ; sys_test_bus_genvar < TEST_CHAIN_LEN_SYS ; sys_test_bus_genvar = sys_test_bus_genvar + 1)
	    begin : test_bus_sys

	       assign test_bus_data_en_sys[sys_test_bus_genvar] = (phy_test_chain_select_sys == sys_test_bus_genvar);
	       
	       tb_cell #(.DW(TEST_BUS_WIDTH)) tb_cell_sys
	         (
	          .ch_in(phy_test_bus_sys_tb_cell[sys_test_bus_genvar+1][TEST_BUS_WIDTH-1:0]),
	          .ch_out(phy_test_bus_sys_tb_cell[sys_test_bus_genvar][TEST_BUS_WIDTH-1:0]),
	          .data_in(test_bus_data_sys[sys_test_bus_genvar][TEST_BUS_WIDTH-1:0]), 
	          .data_en(test_bus_data_en_sys[sys_test_bus_genvar]), 
	          .clk(sys_clk),
	          .reset_n(sys_reset_n)
	          );
        end 
      
   endgenerate

   assign phy_rcv_tb_clk     = dsp_rcv_tb_clk;
   assign phy_rcv_tb_reset_n = dsp_rcv_tb_reset_n;
   
   vl_bus_samp_chg #(.WIDTH(8)) rcv_tb_select_samp
     (
      .data_in(phy_test_chain_select_rcv),
      .data_out(phy_test_chain_select_rcv_s),
      .clk(phy_rcv_tb_clk),
      .rst_n(phy_rcv_tb_reset_n),
      .clk_in(sys_clk),
      .rst_in_n(sys_reset_n),
      .chg_done(),
      .scan_mode(scan_mode)
      );


   assign test_bus_data_rcv [00] = {rx_dsp_test_bus};
   assign test_bus_data_rcv [01] = {snir_afe_if_test_bus_1, snir_afe_if_test_bus_0};
   assign test_bus_data_rcv [02] = {snir_afe_if_test_bus_3, snir_afe_if_test_bus_2};
   assign test_bus_data_rcv [03] = {SINKPCS_TB2, 2'h0, slice_fb_test_bus, SINKPCS_TB};
   assign test_bus_data_rcv [04] = {pcs_rx_testbus_2, pcs_rx_testbus_1};
   assign test_bus_data_rcv [05] = {pcs_rx_testbus_4, pcs_rx_testbus_3};
   assign test_bus_data_rcv [06] = {32'h0, skew_meter_testbus};
   assign test_bus_data_rcv [07] = pri_tbus;

   assign phy_test_bus_rcv_tb_cell[TEST_CHAIN_LEN_RCV] = {TEST_BUS_WIDTH{1'b0}};
   assign phy_test_bus_rcv                             = phy_test_bus_rcv_tb_cell[0];
   
   generate
      for (rcv_test_bus_genvar = 0 ; rcv_test_bus_genvar < TEST_CHAIN_LEN_RCV ; rcv_test_bus_genvar = rcv_test_bus_genvar + 1)
	    begin : test_bus_rcv

	       assign test_bus_data_en_rcv[rcv_test_bus_genvar] = (phy_test_chain_select_rcv_s == rcv_test_bus_genvar);
	       
	       tb_cell #(.DW(TEST_BUS_WIDTH)) tb_cell_rcv
	         (
	          .ch_in(phy_test_bus_rcv_tb_cell[rcv_test_bus_genvar+1][TEST_BUS_WIDTH-1:0]),
	          .ch_out(phy_test_bus_rcv_tb_cell[rcv_test_bus_genvar][TEST_BUS_WIDTH-1:0]),
	          .data_in(test_bus_data_rcv[rcv_test_bus_genvar][TEST_BUS_WIDTH-1:0]), 
	          .data_en(test_bus_data_en_rcv[rcv_test_bus_genvar]), 
	          .clk(phy_rcv_tb_clk),
	          .reset_n(phy_rcv_tb_reset_n)
	          );
        end 
      
   endgenerate

   
   assign phy_trn_tb_clk     = dsp_trn_tb_clk;
   assign phy_trn_tb_reset_n = dsp_trn_tb_reset_n;
   
   vl_bus_samp_chg #(.WIDTH(8)) trn_tb_select_samp
     (
      .data_in(phy_test_chain_select_trn),
      .data_out(phy_test_chain_select_trn_s),
      .clk(phy_trn_tb_clk),
      .rst_n(phy_trn_tb_reset_n),
      .clk_in(sys_clk),
      .rst_in_n(sys_reset_n),
      .chg_done(),
      .scan_mode(scan_mode)
      );
  
   assign test_bus_data_trn [00] = {tx_dsp_test_bus};
   assign test_bus_data_trn [01] = {32'h0, pcs_tx_testbus};

   assign phy_test_bus_trn_tb_cell[TEST_CHAIN_LEN_TRN] = {TEST_BUS_WIDTH{1'b0}};
   assign phy_test_bus_trn                             = phy_test_bus_trn_tb_cell[0];
   
   generate
      for (trn_test_bus_genvar = 0 ; trn_test_bus_genvar < TEST_CHAIN_LEN_TRN ; trn_test_bus_genvar = trn_test_bus_genvar + 1)
	    begin : test_bus_trn

	       assign test_bus_data_en_trn[trn_test_bus_genvar] = (phy_test_chain_select_trn_s == trn_test_bus_genvar);
	       
	       tb_cell #(.DW(TEST_BUS_WIDTH)) tb_cell_trn
	         (
	          .ch_in(phy_test_bus_trn_tb_cell[trn_test_bus_genvar+1][TEST_BUS_WIDTH-1:0]),
	          .ch_out(phy_test_bus_trn_tb_cell[trn_test_bus_genvar][TEST_BUS_WIDTH-1:0]),
	          .data_in(test_bus_data_trn[trn_test_bus_genvar][TEST_BUS_WIDTH-1:0]), 
	          .data_en(test_bus_data_en_trn[trn_test_bus_genvar]), 
	          .clk(phy_trn_tb_clk),
	          .reset_n(phy_trn_tb_reset_n)
	          );
        end 
      
   endgenerate


   
endmodule 





