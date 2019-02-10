



































module Bsor_top
   (
   
   HDBT_CM_TR_P,
   HDBT_CM_TR_M,
   HDBT_CM_BYP_P,
   HDBT_CM_BYP_M,
   HDBT_0_BYP_P,
   HDBT_0_BYP_M,
   HDBT_1_BYP_P,
   HDBT_1_BYP_M,
   HDBT_XTAL_IN,
   HDBT_1_AD_AVDD,
   HDBT_1_AD_AVDD_H,
   HDBT_1_ESD_AVDD_H,
   HDBT_1_CD_AVDD,
   HDBT_1_CD_AVDD_H,
   HDBT_1_PI_AVDD,
   HDBT_1_RX_AVDD,
   HDBT_1_RX_AVDD_H,
   HDBT_1_TD_AVDD,
   HDBT_1_TD_AVDD_H,
   HDBT_1_TX_AVDD,
   HDBT_1_TX_AVDD_H,
   HDBT_CM_ESD_AVDD_H,
   HDBT_0_ESD_AVDD_H,
   HDBT_CM_AD_AVDD_H,
   HDBT_CM_PL_AVDD_H,
   HDBT_CM_RX_AVDD_H,
   HDBT_CM_XO_AVDD_H,
   HDBT_CM_AD_AVDD,
   HDBT_CM_PI_AVDD,
   HDBT_CM_PL_AVDD,
   HDBT_CM_RX_AVDD,
   HDBT_0_AD_AVDD_H,
   HDBT_0_CD_AVDD_H,
   HDBT_0_RX_AVDD_H,
   HDBT_0_TD_AVDD_H,
   HDBT_0_TX_AVDD_H,
   HDBT_0_AD_AVDD,
   HDBT_0_CD_AVDD,
   HDBT_0_PI_AVDD,
   HDBT_0_RX_AVDD,
   HDBT_0_TD_AVDD,
   HDBT_0_TX_AVDD,
   HDBT_2_CD_AVDD,
   HDBT_2_CD_AVDD_H,
   HDBT_2_TX_AVDD_H,
   HDBT_2_TX_AVDD,
   HDBT_2_AD_AVDD,
   HDBT_2_AD_AVDD_H,
   HDBT_2_ESD_AVDD_H,
   HDBT_2_TD_AVDD_H,
   HDBT_2_TD_AVDD,
   HDBT_2_RX_AVDD_H,
   HDBT_2_RX_AVDD,
   HDBT_2_PI_AVDD,
   HDBT_2_BYP_P,
   HDBT_2_BYP_M,
   HDBT_AGND,
   HDBT_GUARD,
   PCIE_GND,
   PCIE_CMN_AVDD,
   PCIE_CMN_AVDD_CLK,
   PCIE_CMN_AVDD_H,
   PCIE_TX_AVDD,
   PCIE_TX_AVDD_CLK,
   PCIE_RX_AVDD,
   PCIE_RX_AVDD_CLK,
   PCIE_VAUX,
   PCIE_RX_P_LN_0,
   PCIE_RX_P_LN_1,
   PCIE_RX_M_LN_0,
   PCIE_RX_M_LN_1,
   PCIE_CMN_REFCLK_P,
   PCIE_CMN_REFCLK_M,
   PCIE_CMN_REXT,
   SGMPHY_T_RXN,
   SGMPHY_T_RXP,
   DHDI_VDDA,
   DHDI_VDDIO,
   DHDI_VSSS,
   DHDI2_VDDA,
   DHDI2_VDDIO,
   DHDI2_VSSS,
   POR_AVDD_33,
   VSSA_CML,
   VDDA_CML,
   VM_AN_VM5,
   
   HDBT_0_TR_P,
   HDBT_0_TR_M,
   HDBT_1_TR_P,
   HDBT_1_TR_M,
   HDBT_2_TR_P,
   HDBT_2_TR_M,
   HDBT_ATB_HP,
   HDBT_ATB_HM,
   PCIE_CMN_ATB_0,
   PCIE_CMN_ATB_1,
   SGMII_ATB,
   SGMPHY_T_VSSS,
   SGMPHY_T_VDDA,
   SGMPHY_T_VDDIO,
   DHDI_0P,
   DHDI_1P,
   DHDI_2P,
   DHDI_3P,
   DHDI_4P,
   DHDI_5P,
   DHDI_6P,
   DHDI_7P,
   DHDI_8P,
   DHDI_0N,
   DHDI_1N,
   DHDI_2N,
   DHDI_3N,
   DHDI_4N,
   DHDI_5N,
   DHDI_6N,
   DHDI_7N,
   DHDI_8N,
   DHDI_CKP,
   DHDI_CKN,
   DHDI_RREXT,
   DHDI2_0P,
   DHDI2_1P,
   DHDI2_2P,
   DHDI2_3P,
   DHDI2_4P,
   DHDI2_5P,
   DHDI2_6P,
   DHDI2_7P,
   DHDI2_8P,
   DHDI2_0N,
   DHDI2_1N,
   DHDI2_2N,
   DHDI2_3N,
   DHDI2_4N,
   DHDI2_5N,
   DHDI2_6N,
   DHDI2_7N,
   DHDI2_8N,
   DHDI2_CKP,
   DHDI2_CKN,
   LVDSTX_100M_OUT_M,
   LVDSTX_100M_OUT_P,
   TESTMODE0,
   TESTMODE1,
   TESTMODE2,
   JTAG_TCK,
   JTAG_TDI,
   JTAG_TDO,
   JTAG_TRST,
   JTAG_TMS,
   I2C_SDA_SLAVE_H,
   I2C_SCL_SLAVE_H,
   PMS_UART_RX,
   PMS_UART_TX,
   RIF_UART_RX0,
   RIF_UART_TX0,
   GPIO33,
   GPIO8,
   GPIO9,
   GPIO24,
   GPIO25,
   GPIO12,
   GPIO13,
   GPO8,
   I2S4_RX_WCLK,
   I2S4_RX_BCLK,
   I2S4_RX_D0,
   I2S4_TX_WCLK,
   I2S4_TX_D0,
   I2S4_TX_BCLK,
   TESTBUS_CLK,
   HDI_RDY_OUT,
   HDI_RDY_IN,
   GPIO10,
   GPIO11,
   PCIE_PERST,
   PCIE_WAKE,
   PCIE_PRSNT2,
   GPIO0,
   GPIO1,
   GPIO14,
   GPIO15,
   GPIO16,
   GPIO17,
   GPO3,
   GPO2,
   GPO4,
   GPO5,
   GPO6,
   GPO0,
   GPO1,
   QSPI_D3,
   QSPI_CLK,
   QSPI_D1,
   QSPI_D2,
   QSPI_CSN,
   QSPI_D0,
   EFUSE_PGENB,
   EFUSE_PS,
   GPIO7,
   GPIO4,
   GPIO5,
   GPIO6,
   GPIO26,
   GPIO27,
   GPIO28,
   GPIO29,
   GPIO32,
   CLK_SEL,
   RESET_IN,
   RESET_SEL,
   POR_EN_3_3V_MONITOR,
   VDDA_CML_HDBT_L,
   VDDA_CML_HDBT_R,
   VDDA18_4,
   VDDA18_3,
   VDDA18_2,
   VDDA18_1,
   VSSA18_4,
   VSSA18_3,
   VSSA,
   VDDA,
   VDD,
   VDDPST18_1,
   VDDPST18_2,
   VSS,
   VSSPST18_1,
   VSSPST18_2,
   PLL_I2S_1_VDDA,
   PLL_I2S_1_VSSA,
   PLL_I2S_1_VSSA18,
   PLL_I2S_1_VDDA18,
   PLL_I2S_2_VDDA,
   PLL_I2S_2_VSSA,
   PLL_I2S_2_VSSA18,
   PLL_I2S_2_VDDA18,
   DHDI_ATB_0,
   DHDI_ATB_1,
   POR_RESET_N_BDIR,
   
   HDBT_XTAL_OUT,
   HDBT_XCLK_H,
   HDBT_REXT,
   PCIE_TX_P_LN_0,
   PCIE_TX_P_LN_1,
   PCIE_TX_M_LN_0,
   PCIE_TX_M_LN_1,
   SGMPHY_T_TXN,
   SGMPHY_T_TXP
   );

   
   
   
   input  HDBT_CM_TR_P;
   input  HDBT_CM_TR_M;
   input  HDBT_CM_BYP_P;
   input  HDBT_CM_BYP_M;
   input  HDBT_0_BYP_P;
   input  HDBT_0_BYP_M;
   input  HDBT_1_BYP_P;
   input  HDBT_1_BYP_M;
   input  HDBT_XTAL_IN;
   input  HDBT_1_AD_AVDD;
   input  HDBT_1_AD_AVDD_H;
   input  HDBT_1_ESD_AVDD_H;
   input  HDBT_1_CD_AVDD;
   input  HDBT_1_CD_AVDD_H;
   input  HDBT_1_PI_AVDD;
   input  HDBT_1_RX_AVDD;
   input  HDBT_1_RX_AVDD_H;
   input  HDBT_1_TD_AVDD;
   input  HDBT_1_TD_AVDD_H;
   input  HDBT_1_TX_AVDD;
   input  HDBT_1_TX_AVDD_H;
   input  HDBT_CM_ESD_AVDD_H;
   input  HDBT_0_ESD_AVDD_H;
   input  HDBT_CM_AD_AVDD_H;
   input  HDBT_CM_PL_AVDD_H;
   input  HDBT_CM_RX_AVDD_H;
   input  HDBT_CM_XO_AVDD_H;
   input  HDBT_CM_AD_AVDD;
   input  HDBT_CM_PI_AVDD;
   input  HDBT_CM_PL_AVDD;
   input  HDBT_CM_RX_AVDD;
   input  HDBT_0_AD_AVDD_H;
   input  HDBT_0_CD_AVDD_H;
   input  HDBT_0_RX_AVDD_H;
   input  HDBT_0_TD_AVDD_H;
   input  HDBT_0_TX_AVDD_H;
   input  HDBT_0_AD_AVDD;
   input  HDBT_0_CD_AVDD;
   input  HDBT_0_PI_AVDD;
   input  HDBT_0_RX_AVDD;
   input  HDBT_0_TD_AVDD;
   input  HDBT_0_TX_AVDD;
   input  HDBT_2_CD_AVDD;
   input  HDBT_2_CD_AVDD_H;
   input  HDBT_2_TX_AVDD_H;
   input  HDBT_2_TX_AVDD;
   input  HDBT_2_AD_AVDD;
   input  HDBT_2_AD_AVDD_H;
   input  HDBT_2_ESD_AVDD_H;
   input  HDBT_2_TD_AVDD_H;
   input  HDBT_2_TD_AVDD;
   input  HDBT_2_RX_AVDD_H;
   input  HDBT_2_RX_AVDD;
   input  HDBT_2_PI_AVDD;
   input  HDBT_2_BYP_P;
   input  HDBT_2_BYP_M;
   input  HDBT_AGND;
   input  HDBT_GUARD;
   input  PCIE_GND;
   input  PCIE_CMN_AVDD;
   input  PCIE_CMN_AVDD_CLK;
   input  PCIE_CMN_AVDD_H;
   input  PCIE_TX_AVDD;
   input  PCIE_TX_AVDD_CLK;
   input  PCIE_RX_AVDD;
   input  PCIE_RX_AVDD_CLK;
   input  PCIE_VAUX;
   input  PCIE_RX_P_LN_0;
   input  PCIE_RX_P_LN_1;
   input  PCIE_RX_M_LN_0;
   input  PCIE_RX_M_LN_1;
   input  PCIE_CMN_REFCLK_P;
   input  PCIE_CMN_REFCLK_M;
   input  PCIE_CMN_REXT;
   input  SGMPHY_T_RXN;
   input  SGMPHY_T_RXP;
   input  DHDI_VDDA;
   input  DHDI_VDDIO;
   input  DHDI_VSSS;
   input  DHDI2_VDDA;
   input  DHDI2_VDDIO;
   input  DHDI2_VSSS;
   input  POR_AVDD_33;
   input  VSSA_CML;
   input  VDDA_CML;
   input  VM_AN_VM5;

   
   
   
   output  HDBT_XTAL_OUT;
   output  HDBT_XCLK_H;
   output  HDBT_REXT;
   output  PCIE_TX_P_LN_0;
   output  PCIE_TX_P_LN_1;
   output  PCIE_TX_M_LN_0;
   output  PCIE_TX_M_LN_1;
   output  SGMPHY_T_TXN;
   output  SGMPHY_T_TXP;

   
   
   
   inout  HDBT_0_TR_P;
   inout  HDBT_0_TR_M;
   inout  HDBT_1_TR_P;
   inout  HDBT_1_TR_M;
   inout  HDBT_2_TR_P;
   inout  HDBT_2_TR_M;
   inout  HDBT_ATB_HP;
   inout  HDBT_ATB_HM;
   inout  PCIE_CMN_ATB_0;
   inout  PCIE_CMN_ATB_1;
   inout  SGMII_ATB;
   inout  SGMPHY_T_VSSS;
   inout  SGMPHY_T_VDDA;
   inout  SGMPHY_T_VDDIO;
   inout  DHDI_0P;
   inout  DHDI_1P;
   inout  DHDI_2P;
   inout  DHDI_3P;
   inout  DHDI_4P;
   inout  DHDI_5P;
   inout  DHDI_6P;
   inout  DHDI_7P;
   inout  DHDI_8P;
   inout  DHDI_0N;
   inout  DHDI_1N;
   inout  DHDI_2N;
   inout  DHDI_3N;
   inout  DHDI_4N;
   inout  DHDI_5N;
   inout  DHDI_6N;
   inout  DHDI_7N;
   inout  DHDI_8N;
   inout  DHDI_CKP;
   inout  DHDI_CKN;
   inout  DHDI_RREXT;
   inout  DHDI2_0P;
   inout  DHDI2_1P;
   inout  DHDI2_2P;
   inout  DHDI2_3P;
   inout  DHDI2_4P;
   inout  DHDI2_5P;
   inout  DHDI2_6P;
   inout  DHDI2_7P;
   inout  DHDI2_8P;
   inout  DHDI2_0N;
   inout  DHDI2_1N;
   inout  DHDI2_2N;
   inout  DHDI2_3N;
   inout  DHDI2_4N;
   inout  DHDI2_5N;
   inout  DHDI2_6N;
   inout  DHDI2_7N;
   inout  DHDI2_8N;
   inout  DHDI2_CKP;
   inout  DHDI2_CKN;
   inout  LVDSTX_100M_OUT_M;
   inout  LVDSTX_100M_OUT_P;
   inout  TESTMODE0;
   inout  TESTMODE1;
   inout  TESTMODE2;
   inout  JTAG_TCK;
   inout  JTAG_TDI;
   inout  JTAG_TDO;
   inout  JTAG_TRST;
   inout  JTAG_TMS;
   inout  I2C_SDA_SLAVE_H;
   inout  I2C_SCL_SLAVE_H;
   inout  PMS_UART_RX;
   inout  PMS_UART_TX;
   inout  RIF_UART_RX0;
   inout  RIF_UART_TX0;
   inout  GPIO33;
   inout  GPIO8;
   inout  GPIO9;
   inout  GPIO24;
   inout  GPIO25;
   inout  GPIO12;
   inout  GPIO13;
   inout  GPO8;
   inout  I2S4_RX_WCLK;
   inout  I2S4_RX_BCLK;
   inout  I2S4_RX_D0;
   inout  I2S4_TX_WCLK;
   inout  I2S4_TX_D0;
   inout  I2S4_TX_BCLK;
   inout  TESTBUS_CLK;
   inout  HDI_RDY_OUT;
   inout  HDI_RDY_IN;
   inout  GPIO10;
   inout  GPIO11;
   inout  PCIE_PERST;
   inout  PCIE_WAKE;
   inout  PCIE_PRSNT2;
   inout  GPIO0;
   inout  GPIO1;
   inout  GPIO14;
   inout  GPIO15;
   inout  GPIO16;
   inout  GPIO17;
   inout  GPO3;
   inout  GPO2;
   inout  GPO4;
   inout  GPO5;
   inout  GPO6;
   inout  GPO0;
   inout  GPO1;
   inout  QSPI_D3;
   inout  QSPI_CLK;
   inout  QSPI_D1;
   inout  QSPI_D2;
   inout  QSPI_CSN;
   inout  QSPI_D0;
   inout  EFUSE_PGENB;
   inout  EFUSE_PS;
   inout  GPIO7;
   inout  GPIO4;
   inout  GPIO5;
   inout  GPIO6;
   inout  GPIO26;
   inout  GPIO27;
   inout  GPIO28;
   inout  GPIO29;
   inout  GPIO32;
   inout  CLK_SEL;
   inout  RESET_IN;
   inout  RESET_SEL;
   inout  POR_EN_3_3V_MONITOR;
   inout  VDDA_CML_HDBT_L;
   inout  VDDA_CML_HDBT_R;
   inout  VDDA18_4;
   inout  VDDA18_3;
   inout  VDDA18_2;
   inout  VDDA18_1;
   inout  VSSA18_4;
   inout  VSSA18_3;
   inout  VSSA;
   inout  VDDA;
   inout  VDD;
   inout  VDDPST18_1;
   inout  VDDPST18_2;
   inout  VSS;
   inout  VSSPST18_1;
   inout  VSSPST18_2;
   inout  PLL_I2S_1_VDDA;
   inout  PLL_I2S_1_VSSA;
   inout  PLL_I2S_1_VSSA18;
   inout  PLL_I2S_1_VDDA18;
   inout  PLL_I2S_2_VDDA;
   inout  PLL_I2S_2_VSSA;
   inout  PLL_I2S_2_VSSA18;
   inout  PLL_I2S_2_VDDA18;
   inout  DHDI_ATB_0;
   inout  DHDI_ATB_1;
   inout  POR_RESET_N_BDIR;

   
   
   
   wire  afe_if_edt_channels_in;
   wire  scan_mode_out;
   wire  scan_enable_out;
   wire  [1:0] logic_edt_channels_in;
   wire  afe_if_edt_channels_out;
   wire  [1:0] logic_edt_channels_out;
   wire  sgmii_tx_cm;
   wire  sgmii_pma_clk;
   wire  sgmii_rxen;
   wire  sgmii_refclksel;
   wire  sgmii_rx_rt_en;
   wire  sgmii_phy_reset_n;
   wire  sgmii_rtt_cal_en;
   wire  sgmii_txpll_bw;
   wire  [23:0] sgmii_txpll_frac;
   wire  [2:0] sgmii_rterm_cal;
   wire  [8:0] sgmii_rxpll_nf;
   wire  sgmii_gtx_clki;
   wire  sgmii_txlock;
   wire  [2:0] sgmii_rxdtestbus_sel;
   wire  VDD;
   wire  sgmii_rterm_cmp;
   wire  sgmii_selvdd;
   wire  sgmii_rxlock;
   wire  sgmii_rx_cm_en;
   wire  [3:0] sgmii_atestbus_sel;
   wire  sgmii_pd;
   wire  sgmii_tx_rt_en;
   wire  sgmii_rxdtestbus_en;
   wire  [4:0] sgmii_rxpll_nr;
   wire  sgmii_atestbus_en;
   wire  sgmii_hs_echo_lpbk;
   wire  sgmii_txen;
   wire  [3:0] sgmii_txdrv;
   wire  sgmii_rx_pllmode;
   wire  [5:0] sgmii_txpll_nr;
   wire  sgmii_txpll_dsmpd;
   wire  [9:0] sgmii_rcg;
   wire  [2:0] sgmii_rtt_cal;
   wire  sgmii_overrun_detect;
   wire  sgmii_rxdtestbusout;
   wire  sgmii_hs_dig_lpbk;
   wire  sgmii_fmonen;
   wire  [9:0] sgmii_tcg;
   wire  VSS;
   wire  [1:0] sgmii_bgtrim;
   wire  [11:0] sgmii_txpll_nf;
   wire  ref_clk_from_pad_en;
   wire  [1:0] TxDhdiPhy_bgtrim;
   wire  TxDhdiPhy_selvdd;
   wire  [9:0] TxDhdiPhy_rterm_en;
   wire  [2:0] TxDhdiPhy_rtt_cal;
   wire  TxDhdiPhy_rtt_cal_en;
   wire  [2:0] TxDhdiPhy_rxterm_val;
   wire  [9:0] TxDhdiPhy_rx_en;
   wire  [8:0] TxDhdiPhy_enrxse;
   wire  TxDhdiPhy_rx_cm_gen;
   wire  TxDhdiPhy_phintsel;
   wire  [4:0] TxDhdiPhy_gray_global_tx;
   wire  [7:0] TxDhdiPhy_thermo_global_tx;
   wire  [4:0] TxDhdiPhy_gray_ctrl_global;
   wire  [7:0] TxDhdiPhy_thermo_ctrl_global;
   wire  [4:0] TxDhdiPhy_gray_ctrl0;
   wire  [4:0] TxDhdiPhy_gray_ctrl1;
   wire  [4:0] TxDhdiPhy_gray_ctrl2;
   wire  [4:0] TxDhdiPhy_gray_ctrl3;
   wire  [4:0] TxDhdiPhy_gray_ctrl4;
   wire  [4:0] TxDhdiPhy_gray_ctrl5;
   wire  [4:0] TxDhdiPhy_gray_ctrl6;
   wire  [4:0] TxDhdiPhy_gray_ctrl7;
   wire  [4:0] TxDhdiPhy_gray_ctrl8;
   wire  [7:0] TxDhdiPhy_thermo_ctrl0;
   wire  [7:0] TxDhdiPhy_thermo_ctrl1;
   wire  [7:0] TxDhdiPhy_thermo_ctrl2;
   wire  [7:0] TxDhdiPhy_thermo_ctrl3;
   wire  [7:0] TxDhdiPhy_thermo_ctrl4;
   wire  [7:0] TxDhdiPhy_thermo_ctrl5;
   wire  [7:0] TxDhdiPhy_thermo_ctrl6;
   wire  [7:0] TxDhdiPhy_thermo_ctrl7;
   wire  [7:0] TxDhdiPhy_thermo_ctrl8;
   wire  [4:0] TxDhdiPhy_gray_ctrl_clk;
   wire  [7:0] TxDhdiPhy_thermo_ctrl_clk;
   wire  TxDhdiPhy_inv_rxpclk;
   wire  [9:0] TxDhdiPhy_tx_en;
   wire  [99:0] TxDhdiPhy_txda;
   wire  [3:0] TxDhdiPhy_txdrv;
   wire  TxDhdiPhy_txodrv;
   wire  TxDhdiPhy_inv_mux_txpclk;
   wire  TxDhdiPhy_tx_cm;
   wire  [1:0] TxDhdiPhy_tx_emph_ctl;
   wire  [1:0] TxDhdiPhy_rx_eq_ctl;
   wire  TxDhdiPhy_pll_pd;
   wire  [5:0] TxDhdiPhy_pll_nr;
   wire  [11:0] TxDhdiPhy_pll_nf;
   wire  [23:0] TxDhdiPhy_pll_frac;
   wire  TxDhdiPhy_pll_dsmpd;
   wire  TxDhdiPhy_pll_pdphases;
   wire  TxDhdiPhy_pll_fout1pd;
   wire  [1:0] TxDhdiPhy_pllrefclk_sel;
   wire  TxDhdiPhy_pll_bypass;
   wire  TxDhdiPhy_pll_bw;
   wire  [1:0] TxDhdiPhy_pll_postdiven;
   wire  [9:0] TxDhdiPhy_resetn_ser;
   wire  [9:0] TxDhdiPhy_resetn_des;
   wire  [1:0] TxDhdiPhy_atestbus_en;
   wire  [4:0] TxDhdiPhy_atestbus0_ctl;
   wire  [4:0] TxDhdiPhy_atestbus1_ctl;
   wire  TxDhdiPhy_bias_en;
   wire  tx_dhdi_dhdi_mode;
   wire  TxDhdiPhy_dlpbk_en;
   wire  TxDhdiPhy_cmos_ck_in;
   wire  TxDhdiPhy_cmlbuf_out_0_pd;
   wire  TxDhdiPhy_cmlbuf_out_1_pd;
   wire  TxDhdiPhy_cml2cmos_mux_pd;
   wire  TxDhdiPhy_cmos_ck_in_pd;
   wire  [31:0] TxDhdiPhy_spare;
   wire  TxDhdiPhy_tx_phase_sel_en;
   wire  TxDhdiPhy_ck_dtesten;
   wire  TxDhdiPhy_reg_refen;
   wire  TxDhdiPhy_lane0_dtesten;
   wire  TxDhdiPhy_lane1_dtesten;
   wire  TxDhdiPhy_lane2_dtesten;
   wire  TxDhdiPhy_lane3_dtesten;
   wire  TxDhdiPhy_lane4_dtesten;
   wire  TxDhdiPhy_lane5_dtesten;
   wire  TxDhdiPhy_lane6_dtesten;
   wire  TxDhdiPhy_lane7_dtesten;
   wire  TxDhdiPhy_lane8_dtesten;
   wire  [1:0] TxDhdiPhy_dtesten;
   wire  [2:0] TxDhdiPhy_dtestsel0;
   wire  [2:0] TxDhdiPhy_dtestsel1;
   wire  [2:0] TxDhdiPhy_ck_dtestsel;
   wire  [2:0] TxDhdiPhy_lane0_dtestsel;
   wire  [2:0] TxDhdiPhy_lane1_dtestsel;
   wire  [2:0] TxDhdiPhy_lane2_dtestsel;
   wire  [2:0] TxDhdiPhy_lane3_dtestsel;
   wire  [2:0] TxDhdiPhy_lane4_dtestsel;
   wire  [2:0] TxDhdiPhy_lane5_dtestsel;
   wire  [2:0] TxDhdiPhy_lane6_dtestsel;
   wire  [2:0] TxDhdiPhy_lane7_dtestsel;
   wire  [2:0] TxDhdiPhy_lane8_dtestsel;
   wire  TxDhdiPhy_txpclk;
   wire  TxDhdiPhy_txpclk_x2;
   wire  TxDhdiPhy_pll_clksscg;
   wire  TxDhdiPhy_pll_lock;
   wire  [8:0] TxDhdiPhy_early;
   wire  [8:0] TxDhdiPhy_late;
   wire  [8:0] TxDhdiPhy_error;
   wire  TxDhdiPhy_early_clk;
   wire  TxDhdiPhy_late_clk;
   wire  TxDhdiPhy_error_clk;
   wire  TxDhdiPhy_rterm_cmp;
   wire  [99:0] TxDhdiPhy_rxda;
   wire  TxDhdiPhy_rxpclk;
   wire  TxDhdiPhy_rxpclk_x2;
   wire  TxDhdiPhy_line_clk;
   wire  [8:0] TxDhdiPhy_line_rxda;
   wire  scan_clk2;
   wire  TxDhdiPhy_scan_reset_n;
   wire  TxDhdiPhy_scan_en;
   wire  comp_enable;
   wire  comp_clk;
   wire  spreader_enable;
   wire  mask_enable;
   wire  dhdi_edt_channels_out;
   wire  dhdi_edt_channels_in;
   wire  [9:0] TxDhdiPhy1_tx_en;
   wire  [99:0] TxDhdiTestPhy_txda;
   wire  [3:0] TxDhdiPhy1_txdrv;
   wire  TxDhdiPhy1_txodrv;
   wire  TxDhdiPhy1_inv_mux_txpclk;
   wire  TxDhdiPhy1_tx_cm;
   wire  [1:0] TxDhdiPhy1_tx_emph_ctl;
   wire  TxDhdiPhy1_pll_pd;
   wire  TxDhdiPhy1_pll_dsmpd;
   wire  TxDhdiPhy1_pll_pdphases;
   wire  TxDhdiPhy1_pll_fout1pd;
   wire  TxDhdiPhy1_bias_en;
   wire  dhdiphy0_cml_ck_out_0_P;
   wire  dhdiphy0_cml_ck_out_0_N;
   wire  TxDhdiPhy1_cmos_ck_in_pd;
   wire  TxDhdiPhy1_tx_phase_sel_en;
   wire  DhdiPhy1_txpclk;
   wire  DhdiPhy1_txpclk_x2;
   wire  DhdiPhy1_pll_lock_s;
   wire  DHDI_ATB_0;
   wire  DHDI_ATB_1;
   wire  [8:0] DhdiPhy1_early;
   wire  [8:0] DhdiPhy1_late;
   wire  [8:0] DhdiPhy1_error;
   wire  DhdiPhy1_early_clk;
   wire  DhdiPhy1_late_clk;
   wire  DhdiPhy1_error_clk;
   wire  DhdiPhy1_rterm_cmp_s;
   wire  DhdiPhy1_rxpclk;
   wire  DhdiPhy1_rxpclk_x2;
   wire  por_from_cnt;
   wire  por_reset_n;
   wire  por_to_cnt;
   wire  por_to_cnt2;
   wire  ts_clk;
   wire  ts0_pd;
   wire  ts0_run;
   wire  ts0_ip_reset_n;
   wire  ts0_cal;
   wire  ts0_ser_en;
   wire  ts0_sgn_en;
   wire  ts0_tm_an0;
   wire  ts0_tm_an1;
   wire  ts0_tm_an2;
   wire  ts0_tm_an3;
   wire  ts0_rdy;
   wire  ts0_dout0;
   wire  ts0_dout1;
   wire  ts0_dout2;
   wire  ts0_dout3;
   wire  ts0_dout4;
   wire  ts0_dout5;
   wire  ts0_dout6;
   wire  ts0_dout7;
   wire  ts0_dout8;
   wire  ts0_dout9;
   wire  ts0_dout10;
   wire  ts0_dout11;
   wire  ts1_pd;
   wire  ts1_run;
   wire  ts1_ip_reset_n;
   wire  ts1_cal;
   wire  ts1_ser_en;
   wire  ts1_sgn_en;
   wire  ts1_tm_an0;
   wire  ts1_tm_an1;
   wire  ts1_tm_an2;
   wire  ts1_tm_an3;
   wire  ts1_rdy;
   wire  ts1_dout0;
   wire  ts1_dout1;
   wire  ts1_dout2;
   wire  ts1_dout3;
   wire  ts1_dout4;
   wire  ts1_dout5;
   wire  ts1_dout6;
   wire  ts1_dout7;
   wire  ts1_dout8;
   wire  ts1_dout9;
   wire  ts1_dout10;
   wire  ts1_dout11;
   wire  vm_clk;
   wire  vm0_pd;
   wire  vm0_run;
   wire  vm0_ip_reset_n;
   wire  vm0_sde;
   wire  vm0_tm_tval;
   wire  vm0_tm_ld;
   wire  vm0_sel_vin0;
   wire  vm0_sel_vin1;
   wire  vm0_sel_vin2;
   wire  vm0_sel_vin3;
   wire  vm0_trim0;
   wire  vm0_trim1;
   wire  vm0_trim2;
   wire  vm0_trim3;
   wire  an_vm0;
   wire  an_vm1;
   wire  an_vm2;
   wire  an_vm3;
   wire  an_vm4;
   wire  an_vm6;
   wire  vm0_rdy;
   wire  vm0_dout0;
   wire  vm0_dout1;
   wire  vm0_dout2;
   wire  vm0_dout3;
   wire  vm0_dout4;
   wire  vm0_dout5;
   wire  vm0_dout6;
   wire  vm0_dout7;
   wire  vm0_dout8;
   wire  vm0_dout9;
   wire  vm0_dout10;
   wire  vm0_dout11;
   wire  pd_clk;
   wire  pd0_run;
   wire  pd0_ip_reset_n;
   wire  pd0_cload;
   wire  pd0_cfg1_0;
   wire  pd0_cfg1_1;
   wire  pd0_cfg1_2;
   wire  pd0_cfg1_3;
   wire  pd0_cfg1_4;
   wire  pd0_cfg1_5;
   wire  pd0_cfg1_6;
   wire  pd0_cfg1_7;
   wire  pd0_cfg2_0;
   wire  pd0_cfg2_1;
   wire  pd0_cfg2_2;
   wire  pd0_cfg2_3;
   wire  pd0_cfg2_4;
   wire  pd0_cfg2_5;
   wire  pd0_cfg2_6;
   wire  pd0_cfg2_7;
   wire  pd0_cfg3_0;
   wire  pd0_cfg3_1;
   wire  pd0_cfg3_2;
   wire  pd0_cfg3_3;
   wire  pd0_cfg3_4;
   wire  pd0_cfg3_5;
   wire  pd0_cfg3_6;
   wire  pd0_cfg3_7;
   wire  pd0_dout0;
   wire  pd0_dout1;
   wire  pd0_dout2;
   wire  pd0_dout3;
   wire  pd0_dout4;
   wire  pd0_dout5;
   wire  pd0_dout6;
   wire  pd0_dout7;
   wire  pd0_dout8;
   wire  pd0_dout9;
   wire  pd0_dout10;
   wire  pd0_dout11;
   wire  pd0_rdy;
   wire  pd0_dout_type;
   wire  pd0_faultn;
   wire  pd1_run;
   wire  pd1_ip_reset_n;
   wire  pd1_cload;
   wire  pd1_cfg1_0;
   wire  pd1_cfg1_1;
   wire  pd1_cfg1_2;
   wire  pd1_cfg1_3;
   wire  pd1_cfg1_4;
   wire  pd1_cfg1_5;
   wire  pd1_cfg1_6;
   wire  pd1_cfg1_7;
   wire  pd1_cfg2_0;
   wire  pd1_cfg2_1;
   wire  pd1_cfg2_2;
   wire  pd1_cfg2_3;
   wire  pd1_cfg2_4;
   wire  pd1_cfg2_5;
   wire  pd1_cfg2_6;
   wire  pd1_cfg2_7;
   wire  pd1_cfg3_0;
   wire  pd1_cfg3_1;
   wire  pd1_cfg3_2;
   wire  pd1_cfg3_3;
   wire  pd1_cfg3_4;
   wire  pd1_cfg3_5;
   wire  pd1_cfg3_6;
   wire  pd1_cfg3_7;
   wire  pd1_dout0;
   wire  pd1_dout1;
   wire  pd1_dout2;
   wire  pd1_dout3;
   wire  pd1_dout4;
   wire  pd1_dout5;
   wire  pd1_dout6;
   wire  pd1_dout7;
   wire  pd1_dout8;
   wire  pd1_dout9;
   wire  pd1_dout10;
   wire  pd1_dout11;
   wire  pd1_rdy;
   wire  pd1_dout_type;
   wire  pd1_faultn;
   wire  [15:0] otp0_shfMR;
   wire  otp0_shfSEL;
   wire  otp0_shfSTB;
   wire  otp0_shfWE;
   wire  otp0_shfOE;
   wire  otp0_shfPWD;
   wire  [9:0] otp0_shfA;
   wire  [39:0] otp0_shfD;
   wire  [39:0] otp0_shfQ;
   wire  [31:0] otp0_ipsMRR;
   wire  otp0_ipsPGM;
   wire  otp0_ipsPWG;
   wire  [15:0] otp1_shfMR;
   wire  otp1_shfSEL;
   wire  otp1_shfSTB;
   wire  otp1_shfWE;
   wire  otp1_shfOE;
   wire  otp1_shfPWD;
   wire  [9:0] otp1_shfA;
   wire  [39:0] otp1_shfD;
   wire  [39:0] otp1_shfQ;
   wire  [31:0] otp1_ipsMRR;
   wire  otp1_ipsPGM;
   wire  otp1_ipsPWG;
   wire  [15:0] otp2_shfMR;
   wire  otp2_shfSEL;
   wire  otp2_shfSTB;
   wire  otp2_shfWE;
   wire  otp2_shfOE;
   wire  otp2_shfPWD;
   wire  [9:0] otp2_shfA;
   wire  [39:0] otp2_shfD;
   wire  [39:0] otp2_shfQ;
   wire  [31:0] otp2_ipsMRR;
   wire  otp2_ipsPGM;
   wire  otp2_ipsPWG;
   wire  [15:0] otp3_shfMR;
   wire  otp3_shfSEL;
   wire  otp3_shfSTB;
   wire  otp3_shfWE;
   wire  otp3_shfOE;
   wire  otp3_shfPWD;
   wire  [9:0] otp3_shfA;
   wire  [39:0] otp3_shfD;
   wire  [39:0] otp3_shfQ;
   wire  [31:0] otp3_ipsMRR;
   wire  otp3_ipsPGM;
   wire  otp3_ipsPWG;
   wire  LVDS_TX_bias_en;
   wire  LVDS_TX_reset_n;
   wire  LVDS_TX_rterm_en;
   wire  [2:0] LVDS_TX_rterm_val;
   wire  LVDS_TX_tx_cm;
   wire  [3:0] LVDS_TX_txdrv;
   wire  LVDS_TX_txen;
   wire  LVDS_TX_vbias_sel;
   wire  biastop_en;
   wire  biastop_selvdd;
   wire  biastop_trim_0;
   wire  biastop_trim_1;
   wire  lvds_tx_vbias_in;
   wire  hdphy_r_refclk_p;
   wire  hdphy_r_refclk_m;
   wire  cml_buff_1_cml_out_en;
   wire  cml_buff_2_cml_out_en;
   wire  cml_refclk1_p;
   wire  cml_refclk1_n;
   wire  gtm_refclk_bp_gated;
   wire  cml_buff_3_cml_out_en;
   wire  cml_refclk2_p;
   wire  cml_refclk2_n;
   wire  cml_buff_4_cml_out_en;
   wire  cml_refclk3_p;
   wire  cml_refclk3_n;
   wire  cml_buff_5_cmos_out_en;
   wire  cml_refclk4_p;
   wire  cml_refclk4_n;
   wire  i2sclk_pll_rx1_FREF;
   wire  cml_buff_6_cmos_out_en;
   wire  i2sclk_pll_tx1_FREF;
   wire  cml_buff_7_cml_out_en;
   wire  cml_refclk7_p;
   wire  cml_refclk7_n;
   wire  hdphy_r_synthclk_p;
   wire  hdphy_r_synthclk_m;
   wire  cml_refclk8;
   wire  cml_buff_9_cml_out_en;
   wire  cml_buff_10_cml_out_en;
   wire  cml_refclk9_p;
   wire  cml_refclk9_n;
   wire  cml_buff_11_cml_out_en;
   wire  cml_refclk10_p;
   wire  cml_refclk10_n;
   wire  cml_buff_12_cml_out_en;
   wire  cml_refclk11_p;
   wire  cml_refclk11_n;
   wire  cml_buff_13_cml_out_en;
   wire  cml_refclk12_p;
   wire  cml_refclk12_n;
   wire  cml_buff_14_cml_out_en;
   wire  cml_refclk13_p;
   wire  cml_refclk13_n;
   wire  cml_buff_15_cml_out_en;
   wire  cml_refclk14_p;
   wire  cml_refclk14_n;
   wire  pcie_cml_in_refclk_p;
   wire  pcie_cml_in_refclk_n;
   wire  cml_buff_19_cml_out_en;
   wire  pcie_cml_out_refclk_p;
   wire  pcie_cml_out_refclk_n;
   wire  cml_buff_20_cmos_out_en;
   wire  cml_refclk19_p;
   wire  cml_refclk19_n;
   wire  cml_refclk20;
   wire  hdphy_l_refclk_p;
   wire  hdphy_l_refclk_m;
   wire  ckdiv_in;
   wire  cml_buff_22_cml_out_en;
   wire  cml_buff_22_cmos_out_en;
   wire  clk_multi_gig;
   wire  cml_buff_22_cmos_in_sel;
   wire  sgmii_cmosclkin;
   wire  sgmii_refclkp;
   wire  sgmii_refclkn;
   wire  hdphy_cm_sysclk;
   wire  afe_i2s_pll_sys_clk_sel;
   wire  clk_sys_mux_clk;
   wire  [5:0] i2sclk_pll_rx1_REFDIV;
   wire  [11:0] i2sclk_pll_rx1_FBDIV;
   wire  [23:0] i2sclk_pll_rx1_FRAC;
   wire  [2:0] i2sclk_pll_rx1_POSTDIV1;
   wire  [2:0] i2sclk_pll_rx1_POSTDIV2;
   wire  i2sclk_pll_rx1_PD;
   wire  i2sclk_pll_rx1_DACPD;
   wire  i2sclk_pll_rx1_DSMPD;
   wire  i2sclk_pll_rx1_FOUTPOSTDIVPD;
   wire  i2sclk_pll_rx1_FOUT4PHASEPD;
   wire  i2sclk_pll_rx1_FOUTVCOPD;
   wire  i2sclk_pll_rx1_BYPASS;
   wire  i2sclk_pll_rx1_FOUTVCO;
   wire  i2sclk_pll_rx1_FOUTPOSTDIV;
   wire  i2sclk_pll_rx1_FOUT1PH0;
   wire  i2sclk_pll_rx1_FOUT1PH90;
   wire  i2sclk_pll_rx1_FOUT1PH180;
   wire  i2sclk_pll_rx1_FOUT1PH270;
   wire  i2sclk_pll_rx1_FOUT2;
   wire  i2sclk_pll_rx1_FOUT3;
   wire  i2sclk_pll_rx1_FOUT4;
   wire  i2sclk_pll_rx1_LOCK;
   wire  i2sclk_pll_rx1_CLKSSCG;
   wire  [5:0] i2sclk_pll_tx1_REFDIV;
   wire  [11:0] i2sclk_pll_tx1_FBDIV;
   wire  [23:0] i2sclk_pll_tx1_FRAC;
   wire  [2:0] i2sclk_pll_tx1_POSTDIV1;
   wire  [2:0] i2sclk_pll_tx1_POSTDIV2;
   wire  i2sclk_pll_tx1_PD;
   wire  i2sclk_pll_tx1_DACPD;
   wire  i2sclk_pll_tx1_DSMPD;
   wire  i2sclk_pll_tx1_FOUTPOSTDIVPD;
   wire  i2sclk_pll_tx1_FOUT4PHASEPD;
   wire  i2sclk_pll_tx1_FOUTVCOPD;
   wire  i2sclk_pll_tx1_BYPASS;
   wire  i2sclk_pll_tx1_FOUTVCO;
   wire  i2sclk_pll_tx1_FOUTPOSTDIV;
   wire  i2sclk_pll_tx1_FOUT1PH0;
   wire  i2sclk_pll_tx1_FOUT1PH90;
   wire  i2sclk_pll_tx1_FOUT1PH180;
   wire  i2sclk_pll_tx1_FOUT1PH270;
   wire  i2sclk_pll_tx1_FOUT2;
   wire  i2sclk_pll_tx1_FOUT3;
   wire  i2sclk_pll_tx1_FOUT4;
   wire  i2sclk_pll_tx1_LOCK;
   wire  i2sclk_pll_tx1_CLKSSCG;
   wire  int_pre_reset_n;
   wire  r_ckdiv_in;
   wire  refclk_25;
   wire  reset_n_in_ckdiv;
   wire  refclk_r_25;
   wire  r_reset_n_in_ckdiv;
   wire  efuse_csb_w;
   wire  efuse_strobe_w;
   wire  efuse_load_w;
   wire  efuse_PS;
   wire  efuse_PD;
   wire  efuse_mr;
   wire  [10:0] efuse_addr;
   wire  efuse_rwl;
   wire  efuse_rsb;
   wire  efuse_PGENB_to_efuse;
   wire  [31:0] efuse_Q;
   wire  VDDPST18_1;
   wire  POC_1;
   wire  VSSPST18_1;
   wire  VDDA_CML_HDBT_R;
   wire  VDDA_CML;
   wire  VSSA_CML;
   wire  TESTMODE0_in;
   wire  TESTMODE1_in;
   wire  TESTMODE2_in;
   wire  tck_in;
   wire  tdi_in;
   wire  tdo_out;
   wire  tdo_oe;
   wire  trst_in;
   wire  tms_in;
   wire  I2C_SDA_SLAVE_H_pe;
   wire  I2C_SDA_SLAVE_H_out;
   wire  I2C_SDA_SLAVE_H_oe;
   wire  I2C_SDA_SLAVE_H_ps;
   wire  I2C_SDA_SLAVE_H_sl;
   wire  I2C_SDA_SLAVE_H_s0;
   wire  I2C_SDA_SLAVE_H_s1;
   wire  I2C_SDA_SLAVE_H_d0;
   wire  I2C_SDA_SLAVE_H_d1;
   wire  I2C_SDA_SLAVE_H_in;
   wire  I2C_SCL_SLAVE_H_pe;
   wire  I2C_SCL_SLAVE_H_out;
   wire  I2C_SCL_SLAVE_H_oe;
   wire  I2C_SCL_SLAVE_H_ps;
   wire  I2C_SCL_SLAVE_H_sl;
   wire  I2C_SCL_SLAVE_H_s0;
   wire  I2C_SCL_SLAVE_H_s1;
   wire  I2C_SCL_SLAVE_H_d0;
   wire  I2C_SCL_SLAVE_H_d1;
   wire  I2C_SCL_SLAVE_H_in;
   wire  PMS_UART_RX_pe;
   wire  PMS_UART_RX_out;
   wire  PMS_UART_RX_oe;
   wire  PMS_UART_RX_ps;
   wire  PMS_UART_RX_sl;
   wire  PMS_UART_RX_s0;
   wire  PMS_UART_RX_s1;
   wire  PMS_UART_RX_d0;
   wire  PMS_UART_RX_d1;
   wire  PMS_UART_RX_in;
   wire  PMS_UART_TX_pe;
   wire  PMS_UART_TX_out;
   wire  PMS_UART_TX_oe;
   wire  PMS_UART_TX_ps;
   wire  PMS_UART_TX_sl;
   wire  PMS_UART_TX_s0;
   wire  PMS_UART_TX_s1;
   wire  PMS_UART_TX_d0;
   wire  PMS_UART_TX_d1;
   wire  PMS_UART_TX_in;
   wire  RIF_UART_RX0_pe;
   wire  RIF_UART_RX0_out;
   wire  RIF_UART_RX0_oe;
   wire  RIF_UART_RX0_ps;
   wire  RIF_UART_RX0_sl;
   wire  RIF_UART_RX0_s0;
   wire  RIF_UART_RX0_s1;
   wire  RIF_UART_RX0_d0;
   wire  RIF_UART_RX0_d1;
   wire  RIF_UART_RX0_in;
   wire  RIF_UART_TX0_pe;
   wire  RIF_UART_TX0_out;
   wire  RIF_UART_TX0_oe;
   wire  RIF_UART_TX0_ps;
   wire  RIF_UART_TX0_sl;
   wire  RIF_UART_TX0_s0;
   wire  RIF_UART_TX0_s1;
   wire  RIF_UART_TX0_d0;
   wire  RIF_UART_TX0_d1;
   wire  RIF_UART_TX0_in;
   wire  GPIO33_pe;
   wire  GPIO33_out;
   wire  GPIO33_oe;
   wire  GPIO33_ps;
   wire  GPIO33_sl;
   wire  GPIO33_s0;
   wire  GPIO33_s1;
   wire  GPIO33_d0;
   wire  GPIO33_d1;
   wire  GPIO33_in;
   wire  GPIO8_pe;
   wire  GPIO8_out;
   wire  GPIO8_oe;
   wire  GPIO8_ps;
   wire  GPIO8_sl;
   wire  GPIO8_s0;
   wire  GPIO8_s1;
   wire  GPIO8_d0;
   wire  GPIO8_d1;
   wire  GPIO8_in;
   wire  GPIO9_pe;
   wire  GPIO9_out;
   wire  GPIO9_oe;
   wire  GPIO9_ps;
   wire  GPIO9_sl;
   wire  GPIO9_s0;
   wire  GPIO9_s1;
   wire  GPIO9_d0;
   wire  GPIO9_d1;
   wire  GPIO9_in;
   wire  GPIO24_pe;
   wire  GPIO24_out;
   wire  GPIO24_oe;
   wire  GPIO24_ps;
   wire  GPIO24_sl;
   wire  GPIO24_s0;
   wire  GPIO24_s1;
   wire  GPIO24_d0;
   wire  GPIO24_d1;
   wire  GPIO24_in;
   wire  GPIO25_pe;
   wire  GPIO25_out;
   wire  GPIO25_oe;
   wire  GPIO25_ps;
   wire  GPIO25_sl;
   wire  GPIO25_s0;
   wire  GPIO25_s1;
   wire  GPIO25_d0;
   wire  GPIO25_d1;
   wire  GPIO25_in;
   wire  GPIO12_pe;
   wire  GPIO12_out;
   wire  GPIO12_oe;
   wire  GPIO12_ps;
   wire  GPIO12_sl;
   wire  GPIO12_s0;
   wire  GPIO12_s1;
   wire  GPIO12_d0;
   wire  GPIO12_d1;
   wire  GPIO12_in;
   wire  GPIO13_pe;
   wire  GPIO13_out;
   wire  GPIO13_oe;
   wire  GPIO13_ps;
   wire  GPIO13_sl;
   wire  GPIO13_s0;
   wire  GPIO13_s1;
   wire  GPIO13_d0;
   wire  GPIO13_d1;
   wire  GPIO13_in;
   wire  GPO8_pe;
   wire  GPO8_out;
   wire  GPO8_oe;
   wire  GPO8_ps;
   wire  GPO8_sl;
   wire  GPO8_s0;
   wire  GPO8_s1;
   wire  GPO8_d0;
   wire  GPO8_d1;
   wire  GPO8_in;
   wire  I2S4_RX_WCLK_pe;
   wire  I2S4_RX_WCLK_out;
   wire  I2S4_RX_WCLK_oe;
   wire  I2S4_RX_WCLK_ps;
   wire  I2S4_RX_WCLK_sl;
   wire  I2S4_RX_WCLK_s0;
   wire  I2S4_RX_WCLK_s1;
   wire  I2S4_RX_WCLK_d0;
   wire  I2S4_RX_WCLK_d1;
   wire  I2S4_RX_WCLK_in;
   wire  I2S4_RX_BCLK_pe;
   wire  I2S4_RX_BCLK_out;
   wire  I2S4_RX_BCLK_oe;
   wire  I2S4_RX_BCLK_ps;
   wire  I2S4_RX_BCLK_sl;
   wire  I2S4_RX_BCLK_s0;
   wire  I2S4_RX_BCLK_s1;
   wire  I2S4_RX_BCLK_d0;
   wire  I2S4_RX_BCLK_d1;
   wire  I2S4_RX_BCLK_in;
   wire  VM_AN_VM5;
   wire  I2S4_RX_D0_pe;
   wire  I2S4_RX_D0_out;
   wire  I2S4_RX_D0_oe;
   wire  I2S4_RX_D0_ps;
   wire  I2S4_RX_D0_sl;
   wire  I2S4_RX_D0_s0;
   wire  I2S4_RX_D0_s1;
   wire  I2S4_RX_D0_d0;
   wire  I2S4_RX_D0_d1;
   wire  I2S4_RX_D0_in;
   wire  I2S4_TX_WCLK_pe;
   wire  I2S4_TX_WCLK_out;
   wire  I2S4_TX_WCLK_oe;
   wire  I2S4_TX_WCLK_ps;
   wire  I2S4_TX_WCLK_sl;
   wire  I2S4_TX_WCLK_s0;
   wire  I2S4_TX_WCLK_s1;
   wire  I2S4_TX_WCLK_d0;
   wire  I2S4_TX_WCLK_d1;
   wire  I2S4_TX_WCLK_in;
   wire  I2S4_TX_D0_pe;
   wire  I2S4_TX_D0_out;
   wire  I2S4_TX_D0_oe;
   wire  I2S4_TX_D0_ps;
   wire  I2S4_TX_D0_sl;
   wire  I2S4_TX_D0_s0;
   wire  I2S4_TX_D0_s1;
   wire  I2S4_TX_D0_d0;
   wire  I2S4_TX_D0_d1;
   wire  I2S4_TX_D0_in;
   wire  I2S4_TX_BCLK_pe;
   wire  I2S4_TX_BCLK_out;
   wire  I2S4_TX_BCLK_oe;
   wire  I2S4_TX_BCLK_ps;
   wire  I2S4_TX_BCLK_sl;
   wire  I2S4_TX_BCLK_s0;
   wire  I2S4_TX_BCLK_s1;
   wire  I2S4_TX_BCLK_d0;
   wire  I2S4_TX_BCLK_d1;
   wire  I2S4_TX_BCLK_in;
   wire  TESTBUS_CLK_out;
   wire  TESTBUS_CLK_oe;
   wire  PLL_I2S_1_VDDA;
   wire  PLL_I2S_1_VSSA;
   wire  PLL_I2S_1_VSSA18;
   wire  PLL_I2S_1_VDDA18;
   wire  PLL_I2S_2_VDDA;
   wire  PLL_I2S_2_VSSA;
   wire  PLL_I2S_2_VSSA18;
   wire  PLL_I2S_2_VDDA18;
   wire  POC_2;
   wire  VDDA18_1;
   wire  POC_3;
   wire  VDDA18_2;
   wire  POC_4;
   wire  VDDA18_3;
   wire  VSSA18_3;
   wire  HDI_RDY_OUT_pe;
   wire  HDI_RDY_OUT_out;
   wire  HDI_RDY_OUT_oe;
   wire  HDI_RDY_OUT_ps;
   wire  HDI_RDY_OUT_sl;
   wire  HDI_RDY_OUT_s0;
   wire  HDI_RDY_OUT_s1;
   wire  HDI_RDY_OUT_d0;
   wire  HDI_RDY_OUT_d1;
   wire  HDI_RDY_OUT_in;
   wire  HDI_RDY_IN_pe;
   wire  HDI_RDY_IN_out;
   wire  HDI_RDY_IN_oe;
   wire  HDI_RDY_IN_ps;
   wire  HDI_RDY_IN_sl;
   wire  HDI_RDY_IN_s0;
   wire  HDI_RDY_IN_s1;
   wire  HDI_RDY_IN_d0;
   wire  HDI_RDY_IN_d1;
   wire  HDI_RDY_IN_in;
   wire  VDDA;
   wire  VSSA;
   wire  VDDA18_4;
   wire  VSSA18_4;
   wire  POC_5;
   wire  VDDPST18_2;
   wire  POC_6;
   wire  VSSPST18_2;
   wire  GPIO10_pe;
   wire  GPIO10_out;
   wire  GPIO10_oe;
   wire  GPIO10_ps;
   wire  GPIO10_sl;
   wire  GPIO10_s0;
   wire  GPIO10_s1;
   wire  GPIO10_d0;
   wire  GPIO10_d1;
   wire  GPIO10_in;
   wire  GPIO11_pe;
   wire  GPIO11_out;
   wire  GPIO11_oe;
   wire  GPIO11_ps;
   wire  GPIO11_sl;
   wire  GPIO11_s0;
   wire  GPIO11_s1;
   wire  GPIO11_d0;
   wire  GPIO11_d1;
   wire  GPIO11_in;
   wire  PCIE_PERST_pe;
   wire  PCIE_PERST_out;
   wire  PCIE_PERST_oe;
   wire  PCIE_PERST_ps;
   wire  PCIE_PERST_sl;
   wire  PCIE_PERST_s0;
   wire  PCIE_PERST_s1;
   wire  PCIE_PERST_d0;
   wire  PCIE_PERST_d1;
   wire  PCIE_PERST_in;
   wire  GPIO2_pe;
   wire  GPIO2_out;
   wire  GPIO2_oe;
   wire  GPIO2_ps;
   wire  GPIO2_sl;
   wire  GPIO2_s0;
   wire  GPIO2_s1;
   wire  GPIO2_d0;
   wire  GPIO2_d1;
   wire  GPIO2_in;
   wire  GPIO3_pe;
   wire  GPIO3_out;
   wire  GPIO3_oe;
   wire  GPIO3_ps;
   wire  GPIO3_sl;
   wire  GPIO3_s0;
   wire  GPIO3_s1;
   wire  GPIO3_d0;
   wire  GPIO3_d1;
   wire  GPIO3_in;
   wire  GPIO0_pe;
   wire  GPIO0_out;
   wire  GPIO0_oe;
   wire  GPIO0_ps;
   wire  GPIO0_sl;
   wire  GPIO0_s0;
   wire  GPIO0_s1;
   wire  GPIO0_d0;
   wire  GPIO0_d1;
   wire  GPIO0_in;
   wire  GPIO1_pe;
   wire  GPIO1_out;
   wire  GPIO1_oe;
   wire  GPIO1_ps;
   wire  GPIO1_sl;
   wire  GPIO1_s0;
   wire  GPIO1_s1;
   wire  GPIO1_d0;
   wire  GPIO1_d1;
   wire  GPIO1_in;
   wire  GPIO14_pe;
   wire  GPIO14_out;
   wire  GPIO14_oe;
   wire  GPIO14_ps;
   wire  GPIO14_sl;
   wire  GPIO14_s0;
   wire  GPIO14_s1;
   wire  GPIO14_d0;
   wire  GPIO14_d1;
   wire  GPIO14_in;
   wire  GPIO15_pe;
   wire  GPIO15_out;
   wire  GPIO15_oe;
   wire  GPIO15_ps;
   wire  GPIO15_sl;
   wire  GPIO15_s0;
   wire  GPIO15_s1;
   wire  GPIO15_d0;
   wire  GPIO15_d1;
   wire  GPIO15_in;
   wire  GPIO16_pe;
   wire  GPIO16_out;
   wire  GPIO16_oe;
   wire  GPIO16_ps;
   wire  GPIO16_sl;
   wire  GPIO16_s0;
   wire  GPIO16_s1;
   wire  GPIO16_d0;
   wire  GPIO16_d1;
   wire  GPIO16_in;
   wire  GPIO17_pe;
   wire  GPIO17_out;
   wire  GPIO17_oe;
   wire  GPIO17_ps;
   wire  GPIO17_sl;
   wire  GPIO17_s0;
   wire  GPIO17_s1;
   wire  GPIO17_d0;
   wire  GPIO17_d1;
   wire  GPIO17_in;
   wire  GPO3_pe;
   wire  GPO3_out;
   wire  GPO3_oe;
   wire  GPO3_ps;
   wire  GPO3_sl;
   wire  GPO3_s0;
   wire  GPO3_s1;
   wire  GPO3_d0;
   wire  GPO3_d1;
   wire  GPO3_in;
   wire  GPO2_pe;
   wire  GPO2_out;
   wire  GPO2_oe;
   wire  GPO2_ps;
   wire  GPO2_sl;
   wire  GPO2_s0;
   wire  GPO2_s1;
   wire  GPO2_d0;
   wire  GPO2_d1;
   wire  GPO2_in;
   wire  GPO4_pe;
   wire  GPO4_out;
   wire  GPO4_oe;
   wire  GPO4_ps;
   wire  GPO4_sl;
   wire  GPO4_s0;
   wire  GPO4_s1;
   wire  GPO4_d0;
   wire  GPO4_d1;
   wire  GPO4_in;
   wire  GPO5_pe;
   wire  GPO5_out;
   wire  GPO5_oe;
   wire  GPO5_ps;
   wire  GPO5_sl;
   wire  GPO5_s0;
   wire  GPO5_s1;
   wire  GPO5_d0;
   wire  GPO5_d1;
   wire  GPO5_in;
   wire  GPO6_pe;
   wire  GPO6_out;
   wire  GPO6_oe;
   wire  GPO6_ps;
   wire  GPO6_sl;
   wire  GPO6_s0;
   wire  GPO6_s1;
   wire  GPO6_d0;
   wire  GPO6_d1;
   wire  GPO6_in;
   wire  GPO0_pe;
   wire  GPO0_out;
   wire  GPO0_oe;
   wire  GPO0_ps;
   wire  GPO0_sl;
   wire  GPO0_s0;
   wire  GPO0_s1;
   wire  GPO0_d0;
   wire  GPO0_d1;
   wire  GPO0_in;
   wire  GPO1_pe;
   wire  GPO1_out;
   wire  GPO1_oe;
   wire  GPO1_ps;
   wire  GPO1_sl;
   wire  GPO1_s0;
   wire  GPO1_s1;
   wire  GPO1_d0;
   wire  GPO1_d1;
   wire  GPO1_in;
   wire  QSPI_D3_pe;
   wire  QSPI_D3_out;
   wire  QSPI_D3_oe;
   wire  QSPI_D3_ps;
   wire  QSPI_D3_sl;
   wire  QSPI_D3_s0;
   wire  QSPI_D3_s1;
   wire  QSPI_D3_d0;
   wire  QSPI_D3_d1;
   wire  QSPI_D3_in;
   wire  QSPI_CLK_pe;
   wire  QSPI_CLK_out;
   wire  QSPI_CLK_oe;
   wire  QSPI_CLK_ps;
   wire  QSPI_CLK_sl;
   wire  QSPI_CLK_s0;
   wire  QSPI_CLK_s1;
   wire  QSPI_CLK_d0;
   wire  QSPI_CLK_d1;
   wire  QSPI_CLK_in;
   wire  QSPI_D1_pe;
   wire  QSPI_D1_out;
   wire  QSPI_D1_oe;
   wire  QSPI_D1_ps;
   wire  QSPI_D1_sl;
   wire  QSPI_D1_s0;
   wire  QSPI_D1_s1;
   wire  QSPI_D1_d0;
   wire  QSPI_D1_d1;
   wire  QSPI_D1_in;
   wire  QSPI_D2_pe;
   wire  QSPI_D2_out;
   wire  QSPI_D2_oe;
   wire  QSPI_D2_ps;
   wire  QSPI_D2_sl;
   wire  QSPI_D2_s0;
   wire  QSPI_D2_s1;
   wire  QSPI_D2_d0;
   wire  QSPI_D2_d1;
   wire  QSPI_D2_in;
   wire  QSPI_CSN_pe;
   wire  QSPI_CSN_out;
   wire  QSPI_CSN_oe;
   wire  QSPI_CSN_ps;
   wire  QSPI_CSN_sl;
   wire  QSPI_CSN_s0;
   wire  QSPI_CSN_s1;
   wire  QSPI_CSN_d0;
   wire  QSPI_CSN_d1;
   wire  QSPI_D0_pe;
   wire  QSPI_D0_out;
   wire  QSPI_D0_oe;
   wire  QSPI_D0_ps;
   wire  QSPI_D0_sl;
   wire  QSPI_D0_s0;
   wire  QSPI_D0_s1;
   wire  QSPI_D0_d0;
   wire  QSPI_D0_d1;
   wire  QSPI_D0_in;
   wire  EFUSE_PGENB_pe;
   wire  EFUSE_PGENB_ps;
   wire  EFUSE_PGENB_sl;
   wire  EFUSE_PGENB_s0;
   wire  EFUSE_PGENB_s1;
   wire  EFUSE_PGENB_d0;
   wire  EFUSE_PGENB_d1;
   wire  EFUSE_PGENB_in;
   wire  EFUSE_PS_pe;
   wire  EFUSE_PS_ps;
   wire  EFUSE_PS_sl;
   wire  EFUSE_PS_s0;
   wire  EFUSE_PS_s1;
   wire  EFUSE_PS_d0;
   wire  EFUSE_PS_d1;
   wire  EFUSE_PS_in;
   wire  GPIO7_pe;
   wire  GPIO7_out;
   wire  GPIO7_oe;
   wire  GPIO7_ps;
   wire  GPIO7_sl;
   wire  GPIO7_s0;
   wire  GPIO7_s1;
   wire  GPIO7_d0;
   wire  GPIO7_d1;
   wire  GPIO7_in;
   wire  GPIO4_pe;
   wire  GPIO4_out;
   wire  GPIO4_oe;
   wire  GPIO4_ps;
   wire  GPIO4_sl;
   wire  GPIO4_s0;
   wire  GPIO4_s1;
   wire  GPIO4_d0;
   wire  GPIO4_d1;
   wire  GPIO4_in;
   wire  GPIO5_pe;
   wire  GPIO5_out;
   wire  GPIO5_oe;
   wire  GPIO5_ps;
   wire  GPIO5_sl;
   wire  GPIO5_s0;
   wire  GPIO5_s1;
   wire  GPIO5_d0;
   wire  GPIO5_d1;
   wire  GPIO5_in;
   wire  GPIO6_pe;
   wire  GPIO6_out;
   wire  GPIO6_oe;
   wire  GPIO6_ps;
   wire  GPIO6_sl;
   wire  GPIO6_s0;
   wire  GPIO6_s1;
   wire  GPIO6_d0;
   wire  GPIO6_d1;
   wire  GPIO6_in;
   wire  GPIO26_pe;
   wire  GPIO26_out;
   wire  GPIO26_oe;
   wire  GPIO26_ps;
   wire  GPIO26_sl;
   wire  GPIO26_s0;
   wire  GPIO26_s1;
   wire  GPIO26_d0;
   wire  GPIO26_d1;
   wire  GPIO26_in;
   wire  GPIO27_pe;
   wire  GPIO27_out;
   wire  GPIO27_oe;
   wire  GPIO27_ps;
   wire  GPIO27_sl;
   wire  GPIO27_s0;
   wire  GPIO27_s1;
   wire  GPIO27_d0;
   wire  GPIO27_d1;
   wire  GPIO27_in;
   wire  GPIO28_pe;
   wire  GPIO28_out;
   wire  GPIO28_oe;
   wire  GPIO28_ps;
   wire  GPIO28_sl;
   wire  GPIO28_s0;
   wire  GPIO28_s1;
   wire  GPIO28_d0;
   wire  GPIO28_d1;
   wire  GPIO28_in;
   wire  GPIO29_pe;
   wire  GPIO29_out;
   wire  GPIO29_oe;
   wire  GPIO29_ps;
   wire  GPIO29_sl;
   wire  GPIO29_s0;
   wire  GPIO29_s1;
   wire  GPIO29_d0;
   wire  GPIO29_d1;
   wire  GPIO29_in;
   wire  GPIO32_pe;
   wire  GPIO32_out;
   wire  GPIO32_oe;
   wire  GPIO32_ps;
   wire  GPIO32_sl;
   wire  GPIO32_s0;
   wire  GPIO32_s1;
   wire  GPIO32_d0;
   wire  GPIO32_d1;
   wire  GPIO32_in;
   wire  REFCLK_SEL_in;
   wire  RESET_N_in;
   wire  RESET_SEL_in;
   wire  POR_RESET_N_BDIR;
   wire  VDDA_CML_HDBT_L;
   wire  POR_EN_3_3V_MONITOR_in;



   
   Bsor_core
    Bsor_core_i
   (
    .sgmii_rcg(sgmii_rcg),
    .sgmii_gtx_clki(sgmii_gtx_clki),
    .sgmii_pma_clk(sgmii_pma_clk),
    .sgmii_txlock(sgmii_txlock),
    .sgmii_rterm_cmp(sgmii_rterm_cmp),
    .sgmii_rxlock(sgmii_rxlock),
    .sgmii_overrun_detect(sgmii_overrun_detect),
    .sgmii_rxdtestbusout(sgmii_rxdtestbusout),
    .VDDA_CML(VDDA_CML),
    .VSSA_CML(VSSA_CML),
    .HDBT_CM_TR_P(HDBT_CM_TR_P),
    .HDBT_CM_TR_M(HDBT_CM_TR_M),
    .HDBT_CM_BYP_P(HDBT_CM_BYP_P),
    .HDBT_CM_BYP_M(HDBT_CM_BYP_M),
    .HDBT_0_BYP_P(HDBT_0_BYP_P),
    .HDBT_0_BYP_M(HDBT_0_BYP_M),
    .HDBT_1_BYP_P(HDBT_1_BYP_P),
    .HDBT_1_BYP_M(HDBT_1_BYP_M),
    .HDBT_XTAL_IN(HDBT_XTAL_IN),
    .HDBT_1_AD_AVDD(HDBT_1_AD_AVDD),
    .HDBT_1_AD_AVDD_H(HDBT_1_AD_AVDD_H),
    .HDBT_1_ESD_AVDD_H(HDBT_1_ESD_AVDD_H),
    .HDBT_1_CD_AVDD(HDBT_1_CD_AVDD),
    .HDBT_1_CD_AVDD_H(HDBT_1_CD_AVDD_H),
    .HDBT_1_PI_AVDD(HDBT_1_PI_AVDD),
    .HDBT_1_RX_AVDD(HDBT_1_RX_AVDD),
    .HDBT_1_RX_AVDD_H(HDBT_1_RX_AVDD_H),
    .HDBT_1_TD_AVDD(HDBT_1_TD_AVDD),
    .HDBT_1_TD_AVDD_H(HDBT_1_TD_AVDD_H),
    .HDBT_1_TX_AVDD(HDBT_1_TX_AVDD),
    .HDBT_1_TX_AVDD_H(HDBT_1_TX_AVDD_H),
    .HDBT_CM_ESD_AVDD_H(HDBT_CM_ESD_AVDD_H),
    .HDBT_0_ESD_AVDD_H(HDBT_0_ESD_AVDD_H),
    .HDBT_CM_AD_AVDD_H(HDBT_CM_AD_AVDD_H),
    .HDBT_CM_PL_AVDD_H(HDBT_CM_PL_AVDD_H),
    .HDBT_CM_RX_AVDD_H(HDBT_CM_RX_AVDD_H),
    .HDBT_CM_XO_AVDD_H(HDBT_CM_XO_AVDD_H),
    .HDBT_CM_AD_AVDD(HDBT_CM_AD_AVDD),
    .HDBT_CM_PI_AVDD(HDBT_CM_PI_AVDD),
    .HDBT_CM_PL_AVDD(HDBT_CM_PL_AVDD),
    .HDBT_CM_RX_AVDD(HDBT_CM_RX_AVDD),
    .HDBT_0_AD_AVDD_H(HDBT_0_AD_AVDD_H),
    .HDBT_0_CD_AVDD_H(HDBT_0_CD_AVDD_H),
    .HDBT_0_RX_AVDD_H(HDBT_0_RX_AVDD_H),
    .HDBT_0_TD_AVDD_H(HDBT_0_TD_AVDD_H),
    .HDBT_0_TX_AVDD_H(HDBT_0_TX_AVDD_H),
    .HDBT_0_AD_AVDD(HDBT_0_AD_AVDD),
    .HDBT_0_CD_AVDD(HDBT_0_CD_AVDD),
    .HDBT_0_PI_AVDD(HDBT_0_PI_AVDD),
    .HDBT_0_RX_AVDD(HDBT_0_RX_AVDD),
    .HDBT_0_TD_AVDD(HDBT_0_TD_AVDD),
    .HDBT_0_TX_AVDD(HDBT_0_TX_AVDD),
    .HDBT_2_CD_AVDD(HDBT_2_CD_AVDD),
    .HDBT_2_CD_AVDD_H(HDBT_2_CD_AVDD_H),
    .HDBT_2_TX_AVDD_H(HDBT_2_TX_AVDD_H),
    .HDBT_2_TX_AVDD(HDBT_2_TX_AVDD),
    .HDBT_2_AD_AVDD(HDBT_2_AD_AVDD),
    .HDBT_2_AD_AVDD_H(HDBT_2_AD_AVDD_H),
    .HDBT_2_ESD_AVDD_H(HDBT_2_ESD_AVDD_H),
    .HDBT_2_TD_AVDD_H(HDBT_2_TD_AVDD_H),
    .HDBT_2_TD_AVDD(HDBT_2_TD_AVDD),
    .HDBT_2_RX_AVDD_H(HDBT_2_RX_AVDD_H),
    .HDBT_2_RX_AVDD(HDBT_2_RX_AVDD),
    .HDBT_2_PI_AVDD(HDBT_2_PI_AVDD),
    .HDBT_2_BYP_P(HDBT_2_BYP_P),
    .HDBT_2_BYP_M(HDBT_2_BYP_M),
    .DGND(VSS),
    .HDBT_DVDD(VDD),
    .HDBT_AGND(HDBT_AGND),
    .HDBT_GUARD(HDBT_GUARD),
    .BIST_FUSE_VDD(VDD),
    .BIST_FUSE_VSS(VSS),
    .BIST_FUSE_VQPS(VDDPST18_2),
    .PCIE_GND(PCIE_GND),
    .PCIE_CMN_AVDD(PCIE_CMN_AVDD),
    .PCIE_CMN_AVDD_CLK(PCIE_CMN_AVDD_CLK),
    .PCIE_CMN_AVDD_H(PCIE_CMN_AVDD_H),
    .PCIE_TX_AVDD(PCIE_TX_AVDD),
    .PCIE_TX_AVDD_CLK(PCIE_TX_AVDD_CLK),
    .PCIE_RX_AVDD(PCIE_RX_AVDD),
    .PCIE_RX_AVDD_CLK(PCIE_RX_AVDD_CLK),
    .PCIE_VAUX(PCIE_VAUX),
    .afe_if_edt_channels_in(afe_if_edt_channels_in),
    .scan_mode(scan_mode_out),
    .scan_enable(scan_enable_out),
    .RESET_N_in(RESET_N_in),
    .TESTMODE0_in(TESTMODE0_in),
    .TESTMODE1_in(TESTMODE1_in),
    .TESTMODE2_in(TESTMODE2_in),
    .i2sclk_pll_rx1_FREF(i2sclk_pll_rx1_FREF),
    .i2sclk_pll_rx1_FOUTVCO(i2sclk_pll_rx1_FOUTVCO),
    .i2sclk_pll_rx1_FOUTPOSTDIV(i2sclk_pll_rx1_FOUTPOSTDIV),
    .i2sclk_pll_rx1_FOUT1PH0(i2sclk_pll_rx1_FOUT1PH0),
    .i2sclk_pll_rx1_FOUT1PH90(i2sclk_pll_rx1_FOUT1PH90),
    .i2sclk_pll_rx1_FOUT1PH180(i2sclk_pll_rx1_FOUT1PH180),
    .i2sclk_pll_rx1_FOUT1PH270(i2sclk_pll_rx1_FOUT1PH270),
    .i2sclk_pll_rx1_FOUT2(i2sclk_pll_rx1_FOUT2),
    .i2sclk_pll_rx1_FOUT3(i2sclk_pll_rx1_FOUT3),
    .i2sclk_pll_rx1_FOUT4(i2sclk_pll_rx1_FOUT4),
    .i2sclk_pll_rx1_LOCK(i2sclk_pll_rx1_LOCK),
    .i2sclk_pll_rx1_CLKSSCG(i2sclk_pll_rx1_CLKSSCG),
    .i2sclk_pll_tx1_FREF(i2sclk_pll_tx1_FREF),
    .i2sclk_pll_tx1_FOUTVCO(i2sclk_pll_tx1_FOUTVCO),
    .i2sclk_pll_tx1_FOUTPOSTDIV(i2sclk_pll_tx1_FOUTPOSTDIV),
    .i2sclk_pll_tx1_FOUT1PH0(i2sclk_pll_tx1_FOUT1PH0),
    .i2sclk_pll_tx1_FOUT1PH90(i2sclk_pll_tx1_FOUT1PH90),
    .i2sclk_pll_tx1_FOUT1PH180(i2sclk_pll_tx1_FOUT1PH180),
    .i2sclk_pll_tx1_FOUT1PH270(i2sclk_pll_tx1_FOUT1PH270),
    .i2sclk_pll_tx1_FOUT2(i2sclk_pll_tx1_FOUT2),
    .i2sclk_pll_tx1_FOUT3(i2sclk_pll_tx1_FOUT3),
    .i2sclk_pll_tx1_FOUT4(i2sclk_pll_tx1_FOUT4),
    .i2sclk_pll_tx1_LOCK(i2sclk_pll_tx1_LOCK),
    .i2sclk_pll_tx1_CLKSSCG(i2sclk_pll_tx1_CLKSSCG),
    .fpga_status_0(32'h0),
    .fpga_status_1(32'h0),
    .pcie_cml_in_refclk_p(pcie_cml_in_refclk_p),
    .pcie_cml_in_refclk_n(pcie_cml_in_refclk_n),
    .refclk(refclk_25),
    .refclk_r(refclk_r_25),
    .synthclk_r(cml_refclk8),
    .REFCLK_SEL_in(REFCLK_SEL_in),
    .sys_clk(clk_sys_mux_clk),
    .vm0_rdy(vm0_rdy),
    .vm0_dout0(vm0_dout0),
    .vm0_dout1(vm0_dout1),
    .vm0_dout2(vm0_dout2),
    .vm0_dout3(vm0_dout3),
    .vm0_dout4(vm0_dout4),
    .vm0_dout5(vm0_dout5),
    .vm0_dout6(vm0_dout6),
    .vm0_dout7(vm0_dout7),
    .vm0_dout8(vm0_dout8),
    .vm0_dout9(vm0_dout9),
    .vm0_dout10(vm0_dout10),
    .vm0_dout11(vm0_dout11),
    .ts0_dout0(ts0_dout0),
    .ts0_dout1(ts0_dout1),
    .ts0_dout2(ts0_dout2),
    .ts0_dout3(ts0_dout3),
    .ts0_dout4(ts0_dout4),
    .ts0_dout5(ts0_dout5),
    .ts0_dout6(ts0_dout6),
    .ts0_dout7(ts0_dout7),
    .ts0_dout8(ts0_dout8),
    .ts0_dout9(ts0_dout9),
    .ts0_dout10(ts0_dout10),
    .ts0_dout11(ts0_dout11),
    .ts0_rdy(ts0_rdy),
    .ts1_dout0(ts1_dout0),
    .ts1_dout1(ts1_dout1),
    .ts1_dout2(ts1_dout2),
    .ts1_dout3(ts1_dout3),
    .ts1_dout4(ts1_dout4),
    .ts1_dout5(ts1_dout5),
    .ts1_dout6(ts1_dout6),
    .ts1_dout7(ts1_dout7),
    .ts1_dout8(ts1_dout8),
    .ts1_dout9(ts1_dout9),
    .ts1_dout10(ts1_dout10),
    .ts1_dout11(ts1_dout11),
    .ts1_rdy(ts1_rdy),
    .pd0_faultn(pd0_faultn),
    .pd0_dout0(pd0_dout0),
    .pd0_dout1(pd0_dout1),
    .pd0_dout2(pd0_dout2),
    .pd0_dout3(pd0_dout3),
    .pd0_dout4(pd0_dout4),
    .pd0_dout5(pd0_dout5),
    .pd0_dout6(pd0_dout6),
    .pd0_dout7(pd0_dout7),
    .pd0_dout8(pd0_dout8),
    .pd0_dout9(pd0_dout9),
    .pd0_dout10(pd0_dout10),
    .pd0_dout11(pd0_dout11),
    .pd0_rdy(pd0_rdy),
    .pd0_dout_type(pd0_dout_type),
    .pd1_faultn(pd1_faultn),
    .pd1_dout0(pd1_dout0),
    .pd1_dout1(pd1_dout1),
    .pd1_dout2(pd1_dout2),
    .pd1_dout3(pd1_dout3),
    .pd1_dout4(pd1_dout4),
    .pd1_dout5(pd1_dout5),
    .pd1_dout6(pd1_dout6),
    .pd1_dout7(pd1_dout7),
    .pd1_dout8(pd1_dout8),
    .pd1_dout9(pd1_dout9),
    .pd1_dout10(pd1_dout10),
    .pd1_dout11(pd1_dout11),
    .pd1_rdy(pd1_rdy),
    .pd1_dout_type(pd1_dout_type),
    .efuse_Q(efuse_Q),
    .otp0_shfQ(otp0_shfQ),
    .otp0_ipsPWG(otp0_ipsPWG),
    .otp1_shfQ(otp1_shfQ),
    .otp1_ipsPWG(otp1_ipsPWG),
    .otp2_shfQ(otp2_shfQ),
    .otp2_ipsPWG(otp2_ipsPWG),
    .otp3_shfQ(otp3_shfQ),
    .otp3_ipsPWG(otp3_ipsPWG),
    .TxDhdiPhy_line_rxda(TxDhdiPhy_line_rxda),
    .TxDhdiPhy_line_clk(TxDhdiPhy_line_clk),
    .TxDhdiPhy_txpclk(TxDhdiPhy_txpclk),
    .TxDhdiPhy_txpclk_x2(TxDhdiPhy_txpclk_x2),
    .TxDhdiPhy_rxda(TxDhdiPhy_rxda),
    .TxDhdiPhy_rxpclk(TxDhdiPhy_rxpclk),
    .TxDhdiPhy_rxpclk_x2(TxDhdiPhy_rxpclk_x2),
    .TxDhdiPhy_pll_clksscg(TxDhdiPhy_pll_clksscg),
    .TxDhdiPhy_error_clk(TxDhdiPhy_error_clk),
    .TxDhdiPhy_early_clk(TxDhdiPhy_early_clk),
    .TxDhdiPhy_late_clk(TxDhdiPhy_late_clk),
    .TxDhdiPhy_error(TxDhdiPhy_error),
    .TxDhdiPhy_early(TxDhdiPhy_early),
    .TxDhdiPhy_late(TxDhdiPhy_late),
    .TxDhdiPhy_pll_lock(TxDhdiPhy_pll_lock),
    .TxDhdiPhy_rterm_cmp(TxDhdiPhy_rterm_cmp),
    .DhdiPhy1_pll_lock_s(DhdiPhy1_pll_lock_s),
    .DhdiPhy1_rterm_cmp_s(DhdiPhy1_rterm_cmp_s),
    .DhdiPhy1_error_clk(DhdiPhy1_error_clk),
    .DhdiPhy1_early_clk(DhdiPhy1_early_clk),
    .DhdiPhy1_late_clk(DhdiPhy1_late_clk),
    .DhdiPhy1_error(DhdiPhy1_error),
    .DhdiPhy1_early(DhdiPhy1_early),
    .DhdiPhy1_late(DhdiPhy1_late),
    .DhdiPhy1_txpclk(DhdiPhy1_txpclk),
    .DhdiPhy1_txpclk_x2(DhdiPhy1_txpclk_x2),
    .DhdiPhy1_rxpclk(DhdiPhy1_rxpclk),
    .DhdiPhy1_rxpclk_x2(DhdiPhy1_rxpclk_x2),
    .fpga_version_data(16'h0),
    .refclk_cmos_por(ckdiv_in),
    .por_to_cnt(por_to_cnt),
    .por_to_cnt2(por_to_cnt2),
    .por_reset_n(por_reset_n),
    .por_bypass_in(RESET_SEL_in),
    .PCIE_RX_P_LN_0(PCIE_RX_P_LN_0),
    .PCIE_RX_P_LN_1(PCIE_RX_P_LN_1),
    .PCIE_RX_M_LN_0(PCIE_RX_M_LN_0),
    .PCIE_RX_M_LN_1(PCIE_RX_M_LN_1),
    .PCIE_CMN_REFCLK_P(PCIE_CMN_REFCLK_P),
    .PCIE_CMN_REFCLK_M(PCIE_CMN_REFCLK_M),
    .PCIE_CMN_REXT(PCIE_CMN_REXT),
    .edt_scan_in(logic_edt_channels_in),
    .EFUSE_PGENB_in(EFUSE_PGENB_in),
    .EFUSE_PS_in(EFUSE_PS_in),
    .GPIO0_in(GPIO0_in),
    .GPIO10_in(GPIO10_in),
    .GPIO11_in(GPIO11_in),
    .GPIO12_in(GPIO12_in),
    .GPIO13_in(GPIO13_in),
    .GPIO14_in(GPIO14_in),
    .GPIO15_in(GPIO15_in),
    .GPIO16_in(GPIO16_in),
    .GPIO17_in(GPIO17_in),
    .GPIO1_in(GPIO1_in),
    .GPIO24_in(GPIO24_in),
    .GPIO25_in(GPIO25_in),
    .GPIO26_in(GPIO26_in),
    .GPIO27_in(GPIO27_in),
    .GPIO28_in(GPIO28_in),
    .GPIO29_in(GPIO29_in),
    .GPIO2_in(GPIO2_in),
    .GPIO32_in(GPIO32_in),
    .GPIO33_in(GPIO33_in),
    .GPIO3_in(GPIO3_in),
    .GPIO4_in(GPIO4_in),
    .GPIO5_in(GPIO5_in),
    .GPIO6_in(GPIO6_in),
    .GPIO7_in(GPIO7_in),
    .GPIO8_in(GPIO8_in),
    .GPIO9_in(GPIO9_in),
    .GPO0_in(GPO0_in),
    .GPO1_in(GPO1_in),
    .GPO2_in(GPO2_in),
    .GPO3_in(GPO3_in),
    .GPO4_in(GPO4_in),
    .GPO5_in(GPO5_in),
    .GPO6_in(GPO6_in),
    .GPO8_in(GPO8_in),
    .HDI_RDY_IN_in(HDI_RDY_IN_in),
    .HDI_RDY_OUT_in(HDI_RDY_OUT_in),
    .I2C_SCL_SLAVE_H_in(I2C_SCL_SLAVE_H_in),
    .I2C_SDA_SLAVE_H_in(I2C_SDA_SLAVE_H_in),
    .I2S4_RX_BCLK_in(I2S4_RX_BCLK_in),
    .I2S4_RX_D0_in(I2S4_RX_D0_in),
    .I2S4_RX_WCLK_in(I2S4_RX_WCLK_in),
    .I2S4_TX_BCLK_in(I2S4_TX_BCLK_in),
    .I2S4_TX_D0_in(I2S4_TX_D0_in),
    .I2S4_TX_WCLK_in(I2S4_TX_WCLK_in),
    .PCIE_PERST_in(PCIE_PERST_in),
    .PMS_UART_RX_in(PMS_UART_RX_in),
    .PMS_UART_TX_in(PMS_UART_TX_in),
    .QSPI_CLK_in(QSPI_CLK_in),
    .QSPI_D0_in(QSPI_D0_in),
    .QSPI_D1_in(QSPI_D1_in),
    .QSPI_D2_in(QSPI_D2_in),
    .QSPI_D3_in(QSPI_D3_in),
    .RIF_UART_RX0_in(RIF_UART_RX0_in),
    .RIF_UART_TX0_in(RIF_UART_TX0_in),
    .phys_dhdi_edt_channels_out(dhdi_edt_channels_out),
    .phys_edt_channels_out(afe_if_edt_channels_out),
    .logic_edt_channels_out(logic_edt_channels_out),
    .tdi_in(tdi_in),
    .tms_in(tms_in),
    .tck_in(tck_in),
    .trst_in(trst_in),
    .HDBT_0_TR_P(HDBT_0_TR_P),
    .HDBT_0_TR_M(HDBT_0_TR_M),
    .HDBT_1_TR_P(HDBT_1_TR_P),
    .HDBT_1_TR_M(HDBT_1_TR_M),
    .HDBT_2_TR_P(HDBT_2_TR_P),
    .HDBT_2_TR_M(HDBT_2_TR_M),
    .HDBT_ATB_HP(HDBT_ATB_HP),
    .HDBT_ATB_HM(HDBT_ATB_HM),
    .PCIE_CMN_ATB_0(PCIE_CMN_ATB_0),
    .PCIE_CMN_ATB_1(PCIE_CMN_ATB_1),
    .biastop_en(biastop_en),
    .biastop_selvdd(biastop_selvdd),
    .biastop_trim_0(biastop_trim_0),
    .biastop_trim_1(biastop_trim_1),
    .LVDS_TX_txdrv(LVDS_TX_txdrv),
    .LVDS_TX_reset_n(LVDS_TX_reset_n),
    .LVDS_TX_vbias_sel(LVDS_TX_vbias_sel),
    .LVDS_TX_txen(LVDS_TX_txen),
    .LVDS_TX_rterm_en(LVDS_TX_rterm_en),
    .LVDS_TX_rterm_val(LVDS_TX_rterm_val),
    .LVDS_TX_tx_cm(LVDS_TX_tx_cm),
    .LVDS_TX_bias_en(LVDS_TX_bias_en),
    .an_vm0(an_vm0),
    .an_vm1(an_vm1),
    .an_vm2(an_vm2),
    .an_vm3(an_vm3),
    .an_vm4(an_vm4),
    .an_vm6(an_vm6),
    .clk_multi_gig(clk_multi_gig),
    .hdphy_r_synthclk_m(hdphy_r_synthclk_m),
    .hdphy_r_synthclk_p(hdphy_r_synthclk_p),
    .sgmii_tcg(sgmii_tcg),
    .sgmii_tx_cm(sgmii_tx_cm),
    .sgmii_rxen(sgmii_rxen),
    .sgmii_refclksel(sgmii_refclksel),
    .sgmii_rx_rt_en(sgmii_rx_rt_en),
    .sgmii_rtt_cal_en(sgmii_rtt_cal_en),
    .sgmii_rxpll_nf(sgmii_rxpll_nf),
    .sgmii_rxdtestbus_sel(sgmii_rxdtestbus_sel),
    .sgmii_selvdd(sgmii_selvdd),
    .sgmii_rx_cm_en(sgmii_rx_cm_en),
    .sgmii_atestbus_sel(sgmii_atestbus_sel),
    .sgmii_pd(sgmii_pd),
    .sgmii_tx_rt_en(sgmii_tx_rt_en),
    .sgmii_rxdtestbus_en(sgmii_rxdtestbus_en),
    .sgmii_rxpll_nr(sgmii_rxpll_nr),
    .sgmii_atestbus_en(sgmii_atestbus_en),
    .sgmii_hs_echo_lpbk(sgmii_hs_echo_lpbk),
    .sgmii_txen(sgmii_txen),
    .sgmii_txdrv(sgmii_txdrv),
    .sgmii_txpll_nr(sgmii_txpll_nr),
    .sgmii_rtt_cal(sgmii_rtt_cal),
    .sgmii_hs_dig_lpbk(sgmii_hs_dig_lpbk),
    .sgmii_rterm_cal(sgmii_rterm_cal),
    .sgmii_fmonen(sgmii_fmonen),
    .sgmii_bgtrim(sgmii_bgtrim),
    .sgmii_txpll_nf(sgmii_txpll_nf),
    .sgmii_rx_pllmode(sgmii_rx_pllmode),
    .sgmii_txpll_frac(sgmii_txpll_frac),
    .sgmii_txpll_dsmpd(sgmii_txpll_dsmpd),
    .sgmii_txpll_bw(sgmii_txpll_bw),
    .sgmii_phy_reset_n(sgmii_phy_reset_n),
    .ref_clk_from_pad_en(ref_clk_from_pad_en),
    .cml_buff_0_cmos_in_sel(),
    .cml_buff_0_cmos_out_en(),
    .cml_buff_0_cml_out_en(),
    .cml_buff_1_cmos_in_sel(),
    .cml_buff_1_cmos_out_en(),
    .cml_buff_1_cml_out_en(cml_buff_1_cml_out_en),
    .cml_buff_2_cmos_in_sel(),
    .cml_buff_2_cmos_out_en(),
    .cml_buff_2_cml_out_en(cml_buff_2_cml_out_en),
    .cml_buff_3_cmos_in_sel(),
    .cml_buff_3_cmos_out_en(),
    .cml_buff_3_cml_out_en(cml_buff_3_cml_out_en),
    .cml_buff_4_cmos_in_sel(),
    .cml_buff_4_cmos_out_en(),
    .cml_buff_4_cml_out_en(cml_buff_4_cml_out_en),
    .cml_buff_5_cmos_in_sel(),
    .cml_buff_5_cmos_out_en(cml_buff_5_cmos_out_en),
    .cml_buff_5_cml_out_en(),
    .cml_buff_6_cmos_in_sel(),
    .cml_buff_6_cmos_out_en(cml_buff_6_cmos_out_en),
    .cml_buff_6_cml_out_en(),
    .cml_buff_7_cmos_in_sel(),
    .cml_buff_7_cmos_out_en(),
    .cml_buff_7_cml_out_en(cml_buff_7_cml_out_en),
    .cml_buff_8_cmos_in_sel(),
    .cml_buff_8_cmos_out_en(),
    .cml_buff_8_cml_out_en(),
    .cml_buff_9_cmos_in_sel(),
    .cml_buff_9_cmos_out_en(),
    .cml_buff_9_cml_out_en(cml_buff_9_cml_out_en),
    .cml_buff_10_cmos_in_sel(),
    .cml_buff_10_cmos_out_en(),
    .cml_buff_10_cml_out_en(cml_buff_10_cml_out_en),
    .cml_buff_11_cmos_in_sel(),
    .cml_buff_11_cmos_out_en(),
    .cml_buff_11_cml_out_en(cml_buff_11_cml_out_en),
    .cml_buff_12_cmos_in_sel(),
    .cml_buff_12_cmos_out_en(),
    .cml_buff_12_cml_out_en(cml_buff_12_cml_out_en),
    .cml_buff_13_cmos_in_sel(),
    .cml_buff_13_cmos_out_en(),
    .cml_buff_13_cml_out_en(cml_buff_13_cml_out_en),
    .cml_buff_14_cmos_in_sel(),
    .cml_buff_14_cmos_out_en(),
    .cml_buff_14_cml_out_en(cml_buff_14_cml_out_en),
    .cml_buff_15_cmos_in_sel(),
    .cml_buff_15_cmos_out_en(),
    .cml_buff_15_cml_out_en(cml_buff_15_cml_out_en),
    .cml_buff_16_cmos_in_sel(),
    .cml_buff_16_cmos_out_en(),
    .cml_buff_16_cml_out_en(),
    .cml_buff_17_cmos_in_sel(),
    .cml_buff_17_cmos_out_en(),
    .cml_buff_17_cml_out_en(),
    .cml_buff_18_cmos_in_sel(),
    .cml_buff_18_cmos_out_en(),
    .cml_buff_18_cml_out_en(),
    .cml_buff_19_cmos_in_sel(),
    .cml_buff_19_cmos_out_en(),
    .cml_buff_19_cml_out_en(cml_buff_19_cml_out_en),
    .cml_buff_20_cmos_in_sel(),
    .cml_buff_20_cmos_out_en(cml_buff_20_cmos_out_en),
    .cml_buff_20_cml_out_en(),
    .cml_buff_21_cmos_in_sel(),
    .cml_buff_21_cmos_out_en(),
    .cml_buff_21_cml_out_en(),
    .cml_buff_22_cmos_in_sel(cml_buff_22_cmos_in_sel),
    .cml_buff_22_cmos_out_en(cml_buff_22_cmos_out_en),
    .cml_buff_22_cml_out_en(cml_buff_22_cml_out_en),
    .HDBT_XTAL_OUT(HDBT_XTAL_OUT),
    .HDBT_XCLK_H(HDBT_XCLK_H),
    .HDBT_REXT(HDBT_REXT),
    .afe_if_edt_channels_out(afe_if_edt_channels_out),
    .scan_mode_out(scan_mode_out),
    .i2sclk_pll_rx1_REFDIV(i2sclk_pll_rx1_REFDIV),
    .i2sclk_pll_rx1_FBDIV(i2sclk_pll_rx1_FBDIV),
    .i2sclk_pll_rx1_FRAC(i2sclk_pll_rx1_FRAC),
    .i2sclk_pll_rx1_POSTDIV1(i2sclk_pll_rx1_POSTDIV1),
    .i2sclk_pll_rx1_POSTDIV2(i2sclk_pll_rx1_POSTDIV2),
    .i2sclk_pll_rx1_PD(i2sclk_pll_rx1_PD),
    .i2sclk_pll_rx1_DACPD(i2sclk_pll_rx1_DACPD),
    .i2sclk_pll_rx1_DSMPD(i2sclk_pll_rx1_DSMPD),
    .i2sclk_pll_rx1_FOUTPOSTDIVPD(i2sclk_pll_rx1_FOUTPOSTDIVPD),
    .i2sclk_pll_rx1_FOUT4PHASEPD(i2sclk_pll_rx1_FOUT4PHASEPD),
    .i2sclk_pll_rx1_FOUTVCOPD(i2sclk_pll_rx1_FOUTVCOPD),
    .i2sclk_pll_rx1_BYPASS(i2sclk_pll_rx1_BYPASS),
    .i2sclk_pll_tx1_REFDIV(i2sclk_pll_tx1_REFDIV),
    .i2sclk_pll_tx1_FBDIV(i2sclk_pll_tx1_FBDIV),
    .i2sclk_pll_tx1_FRAC(i2sclk_pll_tx1_FRAC),
    .i2sclk_pll_tx1_POSTDIV1(i2sclk_pll_tx1_POSTDIV1),
    .i2sclk_pll_tx1_POSTDIV2(i2sclk_pll_tx1_POSTDIV2),
    .i2sclk_pll_tx1_PD(i2sclk_pll_tx1_PD),
    .i2sclk_pll_tx1_DACPD(i2sclk_pll_tx1_DACPD),
    .i2sclk_pll_tx1_DSMPD(i2sclk_pll_tx1_DSMPD),
    .i2sclk_pll_tx1_FOUTPOSTDIVPD(i2sclk_pll_tx1_FOUTPOSTDIVPD),
    .i2sclk_pll_tx1_FOUT4PHASEPD(i2sclk_pll_tx1_FOUT4PHASEPD),
    .i2sclk_pll_tx1_FOUTVCOPD(i2sclk_pll_tx1_FOUTVCOPD),
    .i2sclk_pll_tx1_BYPASS(i2sclk_pll_tx1_BYPASS),
    .fpga_config_0(),
    .fpga_config_1(),
    .pcie_cml_out_refclk_p(pcie_cml_out_refclk_p),
    .pcie_cml_out_refclk_n(pcie_cml_out_refclk_n),
    .afe_i2s_pll_sys_clk_sel(afe_i2s_pll_sys_clk_sel),
    .hdphy_cm_sysclk(hdphy_cm_sysclk),
    .hdphy_l_refclk_m(hdphy_l_refclk_m),
    .hdphy_l_refclk_p(hdphy_l_refclk_p),
    .hdphy_r_refclk_m(hdphy_r_refclk_m),
    .hdphy_r_refclk_p(hdphy_r_refclk_p),
    .TxDhdiPhy_cmos_ck_in(TxDhdiPhy_cmos_ck_in),
    .TxDhdiPhy_txda(TxDhdiPhy_txda),
    .TxDhdiTestPhy_txda(TxDhdiTestPhy_txda),
    .vm_clk(vm_clk),
    .vm0_tm_te(),
    .vm0_tm_ld(vm0_tm_ld),
    .vm0_tm_tval(vm0_tm_tval),
    .vm0_tm_si(),
    .vm0_tm_se(),
    .vm0_trim0(vm0_trim0),
    .vm0_trim1(vm0_trim1),
    .vm0_trim2(vm0_trim2),
    .vm0_trim3(vm0_trim3),
    .vm0_sel_vin0(vm0_sel_vin0),
    .vm0_sel_vin1(vm0_sel_vin1),
    .vm0_sel_vin2(vm0_sel_vin2),
    .vm0_sel_vin3(vm0_sel_vin3),
    .vm0_sde(vm0_sde),
    .vm0_run(vm0_run),
    .vm0_pd(vm0_pd),
    .vm0_ip_reset_n(vm0_ip_reset_n),
    .ts_clk(ts_clk),
    .ts0_cal(ts0_cal),
    .ts0_tm_an0(ts0_tm_an0),
    .ts0_tm_an1(ts0_tm_an1),
    .ts0_tm_an2(ts0_tm_an2),
    .ts0_tm_an3(ts0_tm_an3),
    .ts0_sgn_en(ts0_sgn_en),
    .ts0_ser_en(ts0_ser_en),
    .ts0_run(ts0_run),
    .ts0_pd(ts0_pd),
    .ts0_ip_reset_n(ts0_ip_reset_n),
    .ts1_cal(ts1_cal),
    .ts1_tm_an0(ts1_tm_an0),
    .ts1_tm_an1(ts1_tm_an1),
    .ts1_tm_an2(ts1_tm_an2),
    .ts1_tm_an3(ts1_tm_an3),
    .ts1_sgn_en(ts1_sgn_en),
    .ts1_ser_en(ts1_ser_en),
    .ts1_run(ts1_run),
    .ts1_pd(ts1_pd),
    .ts1_ip_reset_n(ts1_ip_reset_n),
    .pd_clk(pd_clk),
    .pd0_cfg1_0(pd0_cfg1_0),
    .pd0_cfg1_1(pd0_cfg1_1),
    .pd0_cfg1_2(pd0_cfg1_2),
    .pd0_cfg1_3(pd0_cfg1_3),
    .pd0_cfg1_4(pd0_cfg1_4),
    .pd0_cfg1_5(pd0_cfg1_5),
    .pd0_cfg1_6(pd0_cfg1_6),
    .pd0_cfg1_7(pd0_cfg1_7),
    .pd0_cfg2_0(pd0_cfg2_0),
    .pd0_cfg2_1(pd0_cfg2_1),
    .pd0_cfg2_2(pd0_cfg2_2),
    .pd0_cfg2_3(pd0_cfg2_3),
    .pd0_cfg2_4(pd0_cfg2_4),
    .pd0_cfg2_5(pd0_cfg2_5),
    .pd0_cfg2_6(pd0_cfg2_6),
    .pd0_cfg2_7(pd0_cfg2_7),
    .pd0_cfg3_0(pd0_cfg3_0),
    .pd0_cfg3_1(pd0_cfg3_1),
    .pd0_cfg3_2(pd0_cfg3_2),
    .pd0_cfg3_3(pd0_cfg3_3),
    .pd0_cfg3_4(pd0_cfg3_4),
    .pd0_cfg3_5(pd0_cfg3_5),
    .pd0_cfg3_6(pd0_cfg3_6),
    .pd0_cfg3_7(pd0_cfg3_7),
    .pd0_run(pd0_run),
    .pd0_cload(pd0_cload),
    .pd0_ip_reset_n(pd0_ip_reset_n),
    .pd1_cfg1_0(pd1_cfg1_0),
    .pd1_cfg1_1(pd1_cfg1_1),
    .pd1_cfg1_2(pd1_cfg1_2),
    .pd1_cfg1_3(pd1_cfg1_3),
    .pd1_cfg1_4(pd1_cfg1_4),
    .pd1_cfg1_5(pd1_cfg1_5),
    .pd1_cfg1_6(pd1_cfg1_6),
    .pd1_cfg1_7(pd1_cfg1_7),
    .pd1_cfg2_0(pd1_cfg2_0),
    .pd1_cfg2_1(pd1_cfg2_1),
    .pd1_cfg2_2(pd1_cfg2_2),
    .pd1_cfg2_3(pd1_cfg2_3),
    .pd1_cfg2_4(pd1_cfg2_4),
    .pd1_cfg2_5(pd1_cfg2_5),
    .pd1_cfg2_6(pd1_cfg2_6),
    .pd1_cfg2_7(pd1_cfg2_7),
    .pd1_cfg3_0(pd1_cfg3_0),
    .pd1_cfg3_1(pd1_cfg3_1),
    .pd1_cfg3_2(pd1_cfg3_2),
    .pd1_cfg3_3(pd1_cfg3_3),
    .pd1_cfg3_4(pd1_cfg3_4),
    .pd1_cfg3_5(pd1_cfg3_5),
    .pd1_cfg3_6(pd1_cfg3_6),
    .pd1_cfg3_7(pd1_cfg3_7),
    .pd1_run(pd1_run),
    .pd1_cload(pd1_cload),
    .pd1_ip_reset_n(pd1_ip_reset_n),
    .efuse_csb_w(efuse_csb_w),
    .efuse_strobe_w(efuse_strobe_w),
    .efuse_load_w(efuse_load_w),
    .efuse_PS(efuse_PS),
    .efuse_PD(efuse_PD),
    .efuse_mr(efuse_mr),
    .efuse_addr(efuse_addr),
    .efuse_rwl(efuse_rwl),
    .efuse_rsb(efuse_rsb),
    .efuse_PGENB_to_efuse(efuse_PGENB_to_efuse),
    .otp0_shfMR(otp0_shfMR),
    .otp0_shfSEL(otp0_shfSEL),
    .otp0_shfSTB(otp0_shfSTB),
    .otp0_shfWE(otp0_shfWE),
    .otp0_shfOE(otp0_shfOE),
    .otp0_shfPWD(otp0_shfPWD),
    .otp0_shfA(otp0_shfA),
    .otp0_shfD(otp0_shfD),
    .otp0_ipsMRR(otp0_ipsMRR),
    .otp0_ipsPGM(otp0_ipsPGM),
    .otp1_shfMR(otp1_shfMR),
    .otp1_shfSEL(otp1_shfSEL),
    .otp1_shfSTB(otp1_shfSTB),
    .otp1_shfWE(otp1_shfWE),
    .otp1_shfOE(otp1_shfOE),
    .otp1_shfPWD(otp1_shfPWD),
    .otp1_shfA(otp1_shfA),
    .otp1_shfD(otp1_shfD),
    .otp1_ipsMRR(otp1_ipsMRR),
    .otp1_ipsPGM(otp1_ipsPGM),
    .otp2_shfMR(otp2_shfMR),
    .otp2_shfSEL(otp2_shfSEL),
    .otp2_shfSTB(otp2_shfSTB),
    .otp2_shfWE(otp2_shfWE),
    .otp2_shfOE(otp2_shfOE),
    .otp2_shfPWD(otp2_shfPWD),
    .otp2_shfA(otp2_shfA),
    .otp2_shfD(otp2_shfD),
    .otp2_ipsMRR(otp2_ipsMRR),
    .otp2_ipsPGM(otp2_ipsPGM),
    .otp3_shfMR(otp3_shfMR),
    .otp3_shfSEL(otp3_shfSEL),
    .otp3_shfSTB(otp3_shfSTB),
    .otp3_shfWE(otp3_shfWE),
    .otp3_shfOE(otp3_shfOE),
    .otp3_shfPWD(otp3_shfPWD),
    .otp3_shfA(otp3_shfA),
    .otp3_shfD(otp3_shfD),
    .otp3_ipsMRR(otp3_ipsMRR),
    .otp3_ipsPGM(otp3_ipsPGM),
    .TxDhdiPhy_pll_frac(TxDhdiPhy_pll_frac),
    .TxDhdiPhy_pll_nf(TxDhdiPhy_pll_nf),
    .TxDhdiPhy_gray_ctrl_global(TxDhdiPhy_gray_ctrl_global),
    .TxDhdiPhy_gray_ctrl_clk(TxDhdiPhy_gray_ctrl_clk),
    .TxDhdiPhy_gray_ctrl0(TxDhdiPhy_gray_ctrl0),
    .TxDhdiPhy_gray_ctrl1(TxDhdiPhy_gray_ctrl1),
    .TxDhdiPhy_gray_ctrl2(TxDhdiPhy_gray_ctrl2),
    .TxDhdiPhy_gray_ctrl3(TxDhdiPhy_gray_ctrl3),
    .TxDhdiPhy_gray_ctrl4(TxDhdiPhy_gray_ctrl4),
    .TxDhdiPhy_gray_ctrl5(TxDhdiPhy_gray_ctrl5),
    .TxDhdiPhy_gray_ctrl6(TxDhdiPhy_gray_ctrl6),
    .TxDhdiPhy_gray_ctrl7(TxDhdiPhy_gray_ctrl7),
    .TxDhdiPhy_gray_ctrl8(TxDhdiPhy_gray_ctrl8),
    .TxDhdiPhy_thermo_ctrl_global(TxDhdiPhy_thermo_ctrl_global),
    .TxDhdiPhy_thermo_ctrl_clk(TxDhdiPhy_thermo_ctrl_clk),
    .TxDhdiPhy_thermo_ctrl0(TxDhdiPhy_thermo_ctrl0),
    .TxDhdiPhy_thermo_ctrl1(TxDhdiPhy_thermo_ctrl1),
    .TxDhdiPhy_thermo_ctrl2(TxDhdiPhy_thermo_ctrl2),
    .TxDhdiPhy_thermo_ctrl3(TxDhdiPhy_thermo_ctrl3),
    .TxDhdiPhy_thermo_ctrl4(TxDhdiPhy_thermo_ctrl4),
    .TxDhdiPhy_thermo_ctrl5(TxDhdiPhy_thermo_ctrl5),
    .TxDhdiPhy_thermo_ctrl6(TxDhdiPhy_thermo_ctrl6),
    .TxDhdiPhy_thermo_ctrl7(TxDhdiPhy_thermo_ctrl7),
    .TxDhdiPhy_thermo_ctrl8(TxDhdiPhy_thermo_ctrl8),
    .TxDhdiPhy_pll_bw(TxDhdiPhy_pll_bw),
    .TxDhdiPhy_pll_bypass(TxDhdiPhy_pll_bypass),
    .TxDhdiPhy_pll_dsmpd(TxDhdiPhy_pll_dsmpd),
    .TxDhdiPhy_pll_fout1pd(TxDhdiPhy_pll_fout1pd),
    .TxDhdiPhy_pll_nr(TxDhdiPhy_pll_nr),
    .TxDhdiPhy_pll_pd(TxDhdiPhy_pll_pd),
    .TxDhdiPhy_pll_pdphases(TxDhdiPhy_pll_pdphases),
    .TxDhdiPhy_pll_postdiven(TxDhdiPhy_pll_postdiven),
    .TxDhdiPhy_pllrefclk_sel(TxDhdiPhy_pllrefclk_sel),
    .TxDhdiPhy_resetn_des(TxDhdiPhy_resetn_des),
    .TxDhdiPhy_resetn_ser(TxDhdiPhy_resetn_ser),
    .TxDhdiPhy_bgtrim(TxDhdiPhy_bgtrim),
    .TxDhdiPhy_selvdd(TxDhdiPhy_selvdd),
    .TxDhdiPhy_rterm_en(TxDhdiPhy_rterm_en),
    .TxDhdiPhy_rtt_cal(TxDhdiPhy_rtt_cal),
    .TxDhdiPhy_rtt_cal_en(TxDhdiPhy_rtt_cal_en),
    .TxDhdiPhy_rxterm_val(TxDhdiPhy_rxterm_val),
    .TxDhdiPhy_rx_en(TxDhdiPhy_rx_en),
    .TxDhdiPhy_rx_cm_gen(TxDhdiPhy_rx_cm_gen),
    .TxDhdiPhy_phintsel(TxDhdiPhy_phintsel),
    .TxDhdiPhy_gray_global_tx(TxDhdiPhy_gray_global_tx),
    .TxDhdiPhy_thermo_global_tx(TxDhdiPhy_thermo_global_tx),
    .TxDhdiPhy_inv_rxpclk(TxDhdiPhy_inv_rxpclk),
    .TxDhdiPhy_tx_en(TxDhdiPhy_tx_en),
    .TxDhdiPhy_reg_refen(TxDhdiPhy_reg_refen),
    .TxDhdiPhy_txdrv(TxDhdiPhy_txdrv),
    .TxDhdiPhy_txodrv(TxDhdiPhy_txodrv),
    .TxDhdiPhy_inv_mux_txpclk(TxDhdiPhy_inv_mux_txpclk),
    .TxDhdiPhy_tx_cm(TxDhdiPhy_tx_cm),
    .TxDhdiPhy_tx_emph_ctl(TxDhdiPhy_tx_emph_ctl),
    .TxDhdiPhy_rx_eq_ctl(TxDhdiPhy_rx_eq_ctl),
    .TxDhdiPhy_atestbus_en(TxDhdiPhy_atestbus_en),
    .TxDhdiPhy_atestbus0_ctl(TxDhdiPhy_atestbus0_ctl),
    .TxDhdiPhy_atestbus1_ctl(TxDhdiPhy_atestbus1_ctl),
    .TxDhdiPhy_bias_en(TxDhdiPhy_bias_en),
    .TxDhdiPhy_dlpbk_en(TxDhdiPhy_dlpbk_en),
    .TxDhdiPhy_cmlbuf_out_0_pd(TxDhdiPhy_cmlbuf_out_0_pd),
    .TxDhdiPhy_cmlbuf_out_1_pd(TxDhdiPhy_cmlbuf_out_1_pd),
    .TxDhdiPhy_cml2cmos_mux_pd(TxDhdiPhy_cml2cmos_mux_pd),
    .TxDhdiPhy_cmos_ck_in_pd(TxDhdiPhy_cmos_ck_in_pd),
    .TxDhdiPhy_spare(TxDhdiPhy_spare),
    .TxDhdiPhy_tx_phase_sel_en(TxDhdiPhy_tx_phase_sel_en),
    .TxDhdiPhy_ck_dtesten(TxDhdiPhy_ck_dtesten),
    .TxDhdiPhy_ck_dtestsel(TxDhdiPhy_ck_dtestsel),
    .TxDhdiPhy_lane0_dtesten(TxDhdiPhy_lane0_dtesten),
    .TxDhdiPhy_lane1_dtesten(TxDhdiPhy_lane1_dtesten),
    .TxDhdiPhy_lane2_dtesten(TxDhdiPhy_lane2_dtesten),
    .TxDhdiPhy_lane3_dtesten(TxDhdiPhy_lane3_dtesten),
    .TxDhdiPhy_lane4_dtesten(TxDhdiPhy_lane4_dtesten),
    .TxDhdiPhy_lane5_dtesten(TxDhdiPhy_lane5_dtesten),
    .TxDhdiPhy_lane6_dtesten(TxDhdiPhy_lane6_dtesten),
    .TxDhdiPhy_lane7_dtesten(TxDhdiPhy_lane7_dtesten),
    .TxDhdiPhy_lane8_dtesten(TxDhdiPhy_lane8_dtesten),
    .TxDhdiPhy_lane0_dtestsel(TxDhdiPhy_lane0_dtestsel),
    .TxDhdiPhy_lane1_dtestsel(TxDhdiPhy_lane1_dtestsel),
    .TxDhdiPhy_lane2_dtestsel(TxDhdiPhy_lane2_dtestsel),
    .TxDhdiPhy_lane3_dtestsel(TxDhdiPhy_lane3_dtestsel),
    .TxDhdiPhy_lane4_dtestsel(TxDhdiPhy_lane4_dtestsel),
    .TxDhdiPhy_lane5_dtestsel(TxDhdiPhy_lane5_dtestsel),
    .TxDhdiPhy_lane6_dtestsel(TxDhdiPhy_lane6_dtestsel),
    .TxDhdiPhy_lane7_dtestsel(TxDhdiPhy_lane7_dtestsel),
    .TxDhdiPhy_lane8_dtestsel(TxDhdiPhy_lane8_dtestsel),
    .TxDhdiPhy_dtesten(TxDhdiPhy_dtesten),
    .TxDhdiPhy_dtestsel0(TxDhdiPhy_dtestsel0),
    .TxDhdiPhy_dtestsel1(TxDhdiPhy_dtestsel1),
    .TxDhdiPhy_enrxse(TxDhdiPhy_enrxse),
    .tx_dhdi_dhdi_mode(tx_dhdi_dhdi_mode),
    .TxDhdiPhy_scan_en(TxDhdiPhy_scan_en),
    .TxDhdiPhy_scan_reset_n(TxDhdiPhy_scan_reset_n),
    .TxDhdiPhy1_bias_en(TxDhdiPhy1_bias_en),
    .TxDhdiPhy1_cmos_ck_in_pd(TxDhdiPhy1_cmos_ck_in_pd),
    .TxDhdiPhy1_inv_mux_txpclk(TxDhdiPhy1_inv_mux_txpclk),
    .TxDhdiPhy1_pll_dsmpd(TxDhdiPhy1_pll_dsmpd),
    .TxDhdiPhy1_pll_fout1pd(TxDhdiPhy1_pll_fout1pd),
    .TxDhdiPhy1_pll_pd(TxDhdiPhy1_pll_pd),
    .TxDhdiPhy1_pll_pdphases(TxDhdiPhy1_pll_pdphases),
    .TxDhdiPhy1_tx_cm(TxDhdiPhy1_tx_cm),
    .TxDhdiPhy1_tx_emph_ctl(TxDhdiPhy1_tx_emph_ctl),
    .TxDhdiPhy1_tx_en(TxDhdiPhy1_tx_en),
    .TxDhdiPhy1_tx_phase_sel_en(TxDhdiPhy1_tx_phase_sel_en),
    .TxDhdiPhy1_txdrv(TxDhdiPhy1_txdrv),
    .TxDhdiPhy1_txodrv(TxDhdiPhy1_txodrv),
    .int_pre_reset_n(int_pre_reset_n),
    .por_from_cnt(por_from_cnt),
    .PCIE_TX_P_LN_0(PCIE_TX_P_LN_0),
    .PCIE_TX_P_LN_1(PCIE_TX_P_LN_1),
    .PCIE_TX_M_LN_0(PCIE_TX_M_LN_0),
    .PCIE_TX_M_LN_1(PCIE_TX_M_LN_1),
    .EFUSE_PGENB_d0(EFUSE_PGENB_d0),
    .EFUSE_PGENB_d1(EFUSE_PGENB_d1),
    .EFUSE_PGENB_pe(EFUSE_PGENB_pe),
    .EFUSE_PGENB_ps(EFUSE_PGENB_ps),
    .EFUSE_PGENB_s0(EFUSE_PGENB_s0),
    .EFUSE_PGENB_s1(EFUSE_PGENB_s1),
    .EFUSE_PGENB_sl(EFUSE_PGENB_sl),
    .EFUSE_PS_d0(EFUSE_PS_d0),
    .EFUSE_PS_d1(EFUSE_PS_d1),
    .EFUSE_PS_pe(EFUSE_PS_pe),
    .EFUSE_PS_ps(EFUSE_PS_ps),
    .EFUSE_PS_s0(EFUSE_PS_s0),
    .EFUSE_PS_s1(EFUSE_PS_s1),
    .EFUSE_PS_sl(EFUSE_PS_sl),
    .GPIO0_d0(GPIO0_d0),
    .GPIO0_d1(GPIO0_d1),
    .GPIO0_pe(GPIO0_pe),
    .GPIO0_ps(GPIO0_ps),
    .GPIO0_s0(GPIO0_s0),
    .GPIO0_s1(GPIO0_s1),
    .GPIO0_sl(GPIO0_sl),
    .GPIO10_d0(GPIO10_d0),
    .GPIO10_d1(GPIO10_d1),
    .GPIO10_pe(GPIO10_pe),
    .GPIO10_ps(GPIO10_ps),
    .GPIO10_s0(GPIO10_s0),
    .GPIO10_s1(GPIO10_s1),
    .GPIO10_sl(GPIO10_sl),
    .GPIO11_d0(GPIO11_d0),
    .GPIO11_d1(GPIO11_d1),
    .GPIO11_pe(GPIO11_pe),
    .GPIO11_ps(GPIO11_ps),
    .GPIO11_s0(GPIO11_s0),
    .GPIO11_s1(GPIO11_s1),
    .GPIO11_sl(GPIO11_sl),
    .GPIO12_d0(GPIO12_d0),
    .GPIO12_d1(GPIO12_d1),
    .GPIO12_pe(GPIO12_pe),
    .GPIO12_ps(GPIO12_ps),
    .GPIO12_s0(GPIO12_s0),
    .GPIO12_s1(GPIO12_s1),
    .GPIO12_sl(GPIO12_sl),
    .GPIO13_d0(GPIO13_d0),
    .GPIO13_d1(GPIO13_d1),
    .GPIO13_pe(GPIO13_pe),
    .GPIO13_ps(GPIO13_ps),
    .GPIO13_s0(GPIO13_s0),
    .GPIO13_s1(GPIO13_s1),
    .GPIO13_sl(GPIO13_sl),
    .GPIO14_d0(GPIO14_d0),
    .GPIO14_d1(GPIO14_d1),
    .GPIO14_pe(GPIO14_pe),
    .GPIO14_ps(GPIO14_ps),
    .GPIO14_s0(GPIO14_s0),
    .GPIO14_s1(GPIO14_s1),
    .GPIO14_sl(GPIO14_sl),
    .GPIO15_d0(GPIO15_d0),
    .GPIO15_d1(GPIO15_d1),
    .GPIO15_pe(GPIO15_pe),
    .GPIO15_ps(GPIO15_ps),
    .GPIO15_s0(GPIO15_s0),
    .GPIO15_s1(GPIO15_s1),
    .GPIO15_sl(GPIO15_sl),
    .GPIO16_d0(GPIO16_d0),
    .GPIO16_d1(GPIO16_d1),
    .GPIO16_pe(GPIO16_pe),
    .GPIO16_ps(GPIO16_ps),
    .GPIO16_s0(GPIO16_s0),
    .GPIO16_s1(GPIO16_s1),
    .GPIO16_sl(GPIO16_sl),
    .GPIO17_d0(GPIO17_d0),
    .GPIO17_d1(GPIO17_d1),
    .GPIO17_pe(GPIO17_pe),
    .GPIO17_ps(GPIO17_ps),
    .GPIO17_s0(GPIO17_s0),
    .GPIO17_s1(GPIO17_s1),
    .GPIO17_sl(GPIO17_sl),
    .GPIO1_d0(GPIO1_d0),
    .GPIO1_d1(GPIO1_d1),
    .GPIO1_pe(GPIO1_pe),
    .GPIO1_ps(GPIO1_ps),
    .GPIO1_s0(GPIO1_s0),
    .GPIO1_s1(GPIO1_s1),
    .GPIO1_sl(GPIO1_sl),
    .GPIO24_d0(GPIO24_d0),
    .GPIO24_d1(GPIO24_d1),
    .GPIO24_pe(GPIO24_pe),
    .GPIO24_ps(GPIO24_ps),
    .GPIO24_s0(GPIO24_s0),
    .GPIO24_s1(GPIO24_s1),
    .GPIO24_sl(GPIO24_sl),
    .GPIO25_d0(GPIO25_d0),
    .GPIO25_d1(GPIO25_d1),
    .GPIO25_pe(GPIO25_pe),
    .GPIO25_ps(GPIO25_ps),
    .GPIO25_s0(GPIO25_s0),
    .GPIO25_s1(GPIO25_s1),
    .GPIO25_sl(GPIO25_sl),
    .GPIO26_d0(GPIO26_d0),
    .GPIO26_d1(GPIO26_d1),
    .GPIO26_pe(GPIO26_pe),
    .GPIO26_ps(GPIO26_ps),
    .GPIO26_s0(GPIO26_s0),
    .GPIO26_s1(GPIO26_s1),
    .GPIO26_sl(GPIO26_sl),
    .GPIO27_d0(GPIO27_d0),
    .GPIO27_d1(GPIO27_d1),
    .GPIO27_pe(GPIO27_pe),
    .GPIO27_ps(GPIO27_ps),
    .GPIO27_s0(GPIO27_s0),
    .GPIO27_s1(GPIO27_s1),
    .GPIO27_sl(GPIO27_sl),
    .GPIO28_d0(GPIO28_d0),
    .GPIO28_d1(GPIO28_d1),
    .GPIO28_pe(GPIO28_pe),
    .GPIO28_ps(GPIO28_ps),
    .GPIO28_s0(GPIO28_s0),
    .GPIO28_s1(GPIO28_s1),
    .GPIO28_sl(GPIO28_sl),
    .GPIO29_d0(GPIO29_d0),
    .GPIO29_d1(GPIO29_d1),
    .GPIO29_pe(GPIO29_pe),
    .GPIO29_ps(GPIO29_ps),
    .GPIO29_s0(GPIO29_s0),
    .GPIO29_s1(GPIO29_s1),
    .GPIO29_sl(GPIO29_sl),
    .GPIO2_d0(GPIO2_d0),
    .GPIO2_d1(GPIO2_d1),
    .GPIO2_pe(GPIO2_pe),
    .GPIO2_ps(GPIO2_ps),
    .GPIO2_s0(GPIO2_s0),
    .GPIO2_s1(GPIO2_s1),
    .GPIO2_sl(GPIO2_sl),
    .GPIO32_d0(GPIO32_d0),
    .GPIO32_d1(GPIO32_d1),
    .GPIO32_pe(GPIO32_pe),
    .GPIO32_ps(GPIO32_ps),
    .GPIO32_s0(GPIO32_s0),
    .GPIO32_s1(GPIO32_s1),
    .GPIO32_sl(GPIO32_sl),
    .GPIO33_d0(GPIO33_d0),
    .GPIO33_d1(GPIO33_d1),
    .GPIO33_pe(GPIO33_pe),
    .GPIO33_ps(GPIO33_ps),
    .GPIO33_s0(GPIO33_s0),
    .GPIO33_s1(GPIO33_s1),
    .GPIO33_sl(GPIO33_sl),
    .GPIO3_d0(GPIO3_d0),
    .GPIO3_d1(GPIO3_d1),
    .GPIO3_pe(GPIO3_pe),
    .GPIO3_ps(GPIO3_ps),
    .GPIO3_s0(GPIO3_s0),
    .GPIO3_s1(GPIO3_s1),
    .GPIO3_sl(GPIO3_sl),
    .GPIO4_d0(GPIO4_d0),
    .GPIO4_d1(GPIO4_d1),
    .GPIO4_pe(GPIO4_pe),
    .GPIO4_ps(GPIO4_ps),
    .GPIO4_s0(GPIO4_s0),
    .GPIO4_s1(GPIO4_s1),
    .GPIO4_sl(GPIO4_sl),
    .GPIO5_d0(GPIO5_d0),
    .GPIO5_d1(GPIO5_d1),
    .GPIO5_pe(GPIO5_pe),
    .GPIO5_ps(GPIO5_ps),
    .GPIO5_s0(GPIO5_s0),
    .GPIO5_s1(GPIO5_s1),
    .GPIO5_sl(GPIO5_sl),
    .GPIO6_d0(GPIO6_d0),
    .GPIO6_d1(GPIO6_d1),
    .GPIO6_pe(GPIO6_pe),
    .GPIO6_ps(GPIO6_ps),
    .GPIO6_s0(GPIO6_s0),
    .GPIO6_s1(GPIO6_s1),
    .GPIO6_sl(GPIO6_sl),
    .GPIO7_d0(GPIO7_d0),
    .GPIO7_d1(GPIO7_d1),
    .GPIO7_pe(GPIO7_pe),
    .GPIO7_ps(GPIO7_ps),
    .GPIO7_s0(GPIO7_s0),
    .GPIO7_s1(GPIO7_s1),
    .GPIO7_sl(GPIO7_sl),
    .GPIO8_d0(GPIO8_d0),
    .GPIO8_d1(GPIO8_d1),
    .GPIO8_pe(GPIO8_pe),
    .GPIO8_ps(GPIO8_ps),
    .GPIO8_s0(GPIO8_s0),
    .GPIO8_s1(GPIO8_s1),
    .GPIO8_sl(GPIO8_sl),
    .GPIO9_d0(GPIO9_d0),
    .GPIO9_d1(GPIO9_d1),
    .GPIO9_pe(GPIO9_pe),
    .GPIO9_ps(GPIO9_ps),
    .GPIO9_s0(GPIO9_s0),
    .GPIO9_s1(GPIO9_s1),
    .GPIO9_sl(GPIO9_sl),
    .GPO0_d0(GPO0_d0),
    .GPO0_d1(GPO0_d1),
    .GPO0_pe(GPO0_pe),
    .GPO0_ps(GPO0_ps),
    .GPO0_s0(GPO0_s0),
    .GPO0_s1(GPO0_s1),
    .GPO0_sl(GPO0_sl),
    .GPO1_d0(GPO1_d0),
    .GPO1_d1(GPO1_d1),
    .GPO1_pe(GPO1_pe),
    .GPO1_ps(GPO1_ps),
    .GPO1_s0(GPO1_s0),
    .GPO1_s1(GPO1_s1),
    .GPO1_sl(GPO1_sl),
    .GPO2_d0(GPO2_d0),
    .GPO2_d1(GPO2_d1),
    .GPO2_pe(GPO2_pe),
    .GPO2_ps(GPO2_ps),
    .GPO2_s0(GPO2_s0),
    .GPO2_s1(GPO2_s1),
    .GPO2_sl(GPO2_sl),
    .GPO3_d0(GPO3_d0),
    .GPO3_d1(GPO3_d1),
    .GPO3_pe(GPO3_pe),
    .GPO3_ps(GPO3_ps),
    .GPO3_s0(GPO3_s0),
    .GPO3_s1(GPO3_s1),
    .GPO3_sl(GPO3_sl),
    .GPO4_d0(GPO4_d0),
    .GPO4_d1(GPO4_d1),
    .GPO4_pe(GPO4_pe),
    .GPO4_ps(GPO4_ps),
    .GPO4_s0(GPO4_s0),
    .GPO4_s1(GPO4_s1),
    .GPO4_sl(GPO4_sl),
    .GPO5_d0(GPO5_d0),
    .GPO5_d1(GPO5_d1),
    .GPO5_pe(GPO5_pe),
    .GPO5_ps(GPO5_ps),
    .GPO5_s0(GPO5_s0),
    .GPO5_s1(GPO5_s1),
    .GPO5_sl(GPO5_sl),
    .GPO6_d0(GPO6_d0),
    .GPO6_d1(GPO6_d1),
    .GPO6_pe(GPO6_pe),
    .GPO6_ps(GPO6_ps),
    .GPO6_s0(GPO6_s0),
    .GPO6_s1(GPO6_s1),
    .GPO6_sl(GPO6_sl),
    .GPO8_d0(GPO8_d0),
    .GPO8_d1(GPO8_d1),
    .GPO8_pe(GPO8_pe),
    .GPO8_ps(GPO8_ps),
    .GPO8_s0(GPO8_s0),
    .GPO8_s1(GPO8_s1),
    .GPO8_sl(GPO8_sl),
    .HDI_RDY_IN_d0(HDI_RDY_IN_d0),
    .HDI_RDY_IN_d1(HDI_RDY_IN_d1),
    .HDI_RDY_IN_pe(HDI_RDY_IN_pe),
    .HDI_RDY_IN_ps(HDI_RDY_IN_ps),
    .HDI_RDY_IN_s0(HDI_RDY_IN_s0),
    .HDI_RDY_IN_s1(HDI_RDY_IN_s1),
    .HDI_RDY_IN_sl(HDI_RDY_IN_sl),
    .HDI_RDY_OUT_d0(HDI_RDY_OUT_d0),
    .HDI_RDY_OUT_d1(HDI_RDY_OUT_d1),
    .HDI_RDY_OUT_pe(HDI_RDY_OUT_pe),
    .HDI_RDY_OUT_ps(HDI_RDY_OUT_ps),
    .HDI_RDY_OUT_s0(HDI_RDY_OUT_s0),
    .HDI_RDY_OUT_s1(HDI_RDY_OUT_s1),
    .HDI_RDY_OUT_sl(HDI_RDY_OUT_sl),
    .I2C_SCL_SLAVE_H_d0(I2C_SCL_SLAVE_H_d0),
    .I2C_SCL_SLAVE_H_d1(I2C_SCL_SLAVE_H_d1),
    .I2C_SCL_SLAVE_H_pe(I2C_SCL_SLAVE_H_pe),
    .I2C_SCL_SLAVE_H_ps(I2C_SCL_SLAVE_H_ps),
    .I2C_SCL_SLAVE_H_s0(I2C_SCL_SLAVE_H_s0),
    .I2C_SCL_SLAVE_H_s1(I2C_SCL_SLAVE_H_s1),
    .I2C_SCL_SLAVE_H_sl(I2C_SCL_SLAVE_H_sl),
    .I2C_SDA_SLAVE_H_d0(I2C_SDA_SLAVE_H_d0),
    .I2C_SDA_SLAVE_H_d1(I2C_SDA_SLAVE_H_d1),
    .I2C_SDA_SLAVE_H_pe(I2C_SDA_SLAVE_H_pe),
    .I2C_SDA_SLAVE_H_ps(I2C_SDA_SLAVE_H_ps),
    .I2C_SDA_SLAVE_H_s0(I2C_SDA_SLAVE_H_s0),
    .I2C_SDA_SLAVE_H_s1(I2C_SDA_SLAVE_H_s1),
    .I2C_SDA_SLAVE_H_sl(I2C_SDA_SLAVE_H_sl),
    .I2S4_RX_BCLK_d0(I2S4_RX_BCLK_d0),
    .I2S4_RX_BCLK_d1(I2S4_RX_BCLK_d1),
    .I2S4_RX_BCLK_pe(I2S4_RX_BCLK_pe),
    .I2S4_RX_BCLK_ps(I2S4_RX_BCLK_ps),
    .I2S4_RX_BCLK_s0(I2S4_RX_BCLK_s0),
    .I2S4_RX_BCLK_s1(I2S4_RX_BCLK_s1),
    .I2S4_RX_BCLK_sl(I2S4_RX_BCLK_sl),
    .I2S4_RX_D0_d0(I2S4_RX_D0_d0),
    .I2S4_RX_D0_d1(I2S4_RX_D0_d1),
    .I2S4_RX_D0_pe(I2S4_RX_D0_pe),
    .I2S4_RX_D0_ps(I2S4_RX_D0_ps),
    .I2S4_RX_D0_s0(I2S4_RX_D0_s0),
    .I2S4_RX_D0_s1(I2S4_RX_D0_s1),
    .I2S4_RX_D0_sl(I2S4_RX_D0_sl),
    .I2S4_RX_WCLK_d0(I2S4_RX_WCLK_d0),
    .I2S4_RX_WCLK_d1(I2S4_RX_WCLK_d1),
    .I2S4_RX_WCLK_pe(I2S4_RX_WCLK_pe),
    .I2S4_RX_WCLK_ps(I2S4_RX_WCLK_ps),
    .I2S4_RX_WCLK_s0(I2S4_RX_WCLK_s0),
    .I2S4_RX_WCLK_s1(I2S4_RX_WCLK_s1),
    .I2S4_RX_WCLK_sl(I2S4_RX_WCLK_sl),
    .I2S4_TX_BCLK_d0(I2S4_TX_BCLK_d0),
    .I2S4_TX_BCLK_d1(I2S4_TX_BCLK_d1),
    .I2S4_TX_BCLK_pe(I2S4_TX_BCLK_pe),
    .I2S4_TX_BCLK_ps(I2S4_TX_BCLK_ps),
    .I2S4_TX_BCLK_s0(I2S4_TX_BCLK_s0),
    .I2S4_TX_BCLK_s1(I2S4_TX_BCLK_s1),
    .I2S4_TX_BCLK_sl(I2S4_TX_BCLK_sl),
    .I2S4_TX_D0_d0(I2S4_TX_D0_d0),
    .I2S4_TX_D0_d1(I2S4_TX_D0_d1),
    .I2S4_TX_D0_pe(I2S4_TX_D0_pe),
    .I2S4_TX_D0_ps(I2S4_TX_D0_ps),
    .I2S4_TX_D0_s0(I2S4_TX_D0_s0),
    .I2S4_TX_D0_s1(I2S4_TX_D0_s1),
    .I2S4_TX_D0_sl(I2S4_TX_D0_sl),
    .I2S4_TX_WCLK_d0(I2S4_TX_WCLK_d0),
    .I2S4_TX_WCLK_d1(I2S4_TX_WCLK_d1),
    .I2S4_TX_WCLK_pe(I2S4_TX_WCLK_pe),
    .I2S4_TX_WCLK_ps(I2S4_TX_WCLK_ps),
    .I2S4_TX_WCLK_s0(I2S4_TX_WCLK_s0),
    .I2S4_TX_WCLK_s1(I2S4_TX_WCLK_s1),
    .I2S4_TX_WCLK_sl(I2S4_TX_WCLK_sl),
    .PCIE_PERST_d0(PCIE_PERST_d0),
    .PCIE_PERST_d1(PCIE_PERST_d1),
    .PCIE_PERST_pe(PCIE_PERST_pe),
    .PCIE_PERST_ps(PCIE_PERST_ps),
    .PCIE_PERST_s0(PCIE_PERST_s0),
    .PCIE_PERST_s1(PCIE_PERST_s1),
    .PCIE_PERST_sl(PCIE_PERST_sl),
    .PMS_UART_RX_d0(PMS_UART_RX_d0),
    .PMS_UART_RX_d1(PMS_UART_RX_d1),
    .PMS_UART_RX_pe(PMS_UART_RX_pe),
    .PMS_UART_RX_ps(PMS_UART_RX_ps),
    .PMS_UART_RX_s0(PMS_UART_RX_s0),
    .PMS_UART_RX_s1(PMS_UART_RX_s1),
    .PMS_UART_RX_sl(PMS_UART_RX_sl),
    .PMS_UART_TX_d0(PMS_UART_TX_d0),
    .PMS_UART_TX_d1(PMS_UART_TX_d1),
    .PMS_UART_TX_pe(PMS_UART_TX_pe),
    .PMS_UART_TX_ps(PMS_UART_TX_ps),
    .PMS_UART_TX_s0(PMS_UART_TX_s0),
    .PMS_UART_TX_s1(PMS_UART_TX_s1),
    .PMS_UART_TX_sl(PMS_UART_TX_sl),
    .QSPI_CLK_d0(QSPI_CLK_d0),
    .QSPI_CLK_d1(QSPI_CLK_d1),
    .QSPI_CLK_pe(QSPI_CLK_pe),
    .QSPI_CLK_ps(QSPI_CLK_ps),
    .QSPI_CLK_s0(QSPI_CLK_s0),
    .QSPI_CLK_s1(QSPI_CLK_s1),
    .QSPI_CLK_sl(QSPI_CLK_sl),
    .QSPI_CSN_d0(QSPI_CSN_d0),
    .QSPI_CSN_d1(QSPI_CSN_d1),
    .QSPI_CSN_pe(QSPI_CSN_pe),
    .QSPI_CSN_ps(QSPI_CSN_ps),
    .QSPI_CSN_s0(QSPI_CSN_s0),
    .QSPI_CSN_s1(QSPI_CSN_s1),
    .QSPI_CSN_sl(QSPI_CSN_sl),
    .QSPI_D0_d0(QSPI_D0_d0),
    .QSPI_D0_d1(QSPI_D0_d1),
    .QSPI_D0_pe(QSPI_D0_pe),
    .QSPI_D0_ps(QSPI_D0_ps),
    .QSPI_D0_s0(QSPI_D0_s0),
    .QSPI_D0_s1(QSPI_D0_s1),
    .QSPI_D0_sl(QSPI_D0_sl),
    .QSPI_D1_d0(QSPI_D1_d0),
    .QSPI_D1_d1(QSPI_D1_d1),
    .QSPI_D1_pe(QSPI_D1_pe),
    .QSPI_D1_ps(QSPI_D1_ps),
    .QSPI_D1_s0(QSPI_D1_s0),
    .QSPI_D1_s1(QSPI_D1_s1),
    .QSPI_D1_sl(QSPI_D1_sl),
    .QSPI_D2_d0(QSPI_D2_d0),
    .QSPI_D2_d1(QSPI_D2_d1),
    .QSPI_D2_pe(QSPI_D2_pe),
    .QSPI_D2_ps(QSPI_D2_ps),
    .QSPI_D2_s0(QSPI_D2_s0),
    .QSPI_D2_s1(QSPI_D2_s1),
    .QSPI_D2_sl(QSPI_D2_sl),
    .QSPI_D3_d0(QSPI_D3_d0),
    .QSPI_D3_d1(QSPI_D3_d1),
    .QSPI_D3_pe(QSPI_D3_pe),
    .QSPI_D3_ps(QSPI_D3_ps),
    .QSPI_D3_s0(QSPI_D3_s0),
    .QSPI_D3_s1(QSPI_D3_s1),
    .QSPI_D3_sl(QSPI_D3_sl),
    .RIF_UART_RX0_d0(RIF_UART_RX0_d0),
    .RIF_UART_RX0_d1(RIF_UART_RX0_d1),
    .RIF_UART_RX0_pe(RIF_UART_RX0_pe),
    .RIF_UART_RX0_ps(RIF_UART_RX0_ps),
    .RIF_UART_RX0_s0(RIF_UART_RX0_s0),
    .RIF_UART_RX0_s1(RIF_UART_RX0_s1),
    .RIF_UART_RX0_sl(RIF_UART_RX0_sl),
    .RIF_UART_TX0_d0(RIF_UART_TX0_d0),
    .RIF_UART_TX0_d1(RIF_UART_TX0_d1),
    .RIF_UART_TX0_pe(RIF_UART_TX0_pe),
    .RIF_UART_TX0_ps(RIF_UART_TX0_ps),
    .RIF_UART_TX0_s0(RIF_UART_TX0_s0),
    .RIF_UART_TX0_s1(RIF_UART_TX0_s1),
    .RIF_UART_TX0_sl(RIF_UART_TX0_sl),
    .edt_scan_out(logic_edt_channels_out),
    .GPIO0_oe(GPIO0_oe),
    .GPIO0_out(GPIO0_out),
    .GPIO10_oe(GPIO10_oe),
    .GPIO10_out(GPIO10_out),
    .GPIO11_oe(GPIO11_oe),
    .GPIO11_out(GPIO11_out),
    .GPIO12_oe(GPIO12_oe),
    .GPIO12_out(GPIO12_out),
    .GPIO13_oe(GPIO13_oe),
    .GPIO13_out(GPIO13_out),
    .GPIO14_oe(GPIO14_oe),
    .GPIO14_out(GPIO14_out),
    .GPIO15_oe(GPIO15_oe),
    .GPIO15_out(GPIO15_out),
    .GPIO16_oe(GPIO16_oe),
    .GPIO16_out(GPIO16_out),
    .GPIO17_oe(GPIO17_oe),
    .GPIO17_out(GPIO17_out),
    .GPIO1_oe(GPIO1_oe),
    .GPIO1_out(GPIO1_out),
    .GPIO24_oe(GPIO24_oe),
    .GPIO24_out(GPIO24_out),
    .GPIO25_oe(GPIO25_oe),
    .GPIO25_out(GPIO25_out),
    .GPIO26_oe(GPIO26_oe),
    .GPIO26_out(GPIO26_out),
    .GPIO27_oe(GPIO27_oe),
    .GPIO27_out(GPIO27_out),
    .GPIO28_oe(GPIO28_oe),
    .GPIO28_out(GPIO28_out),
    .GPIO29_oe(GPIO29_oe),
    .GPIO29_out(GPIO29_out),
    .GPIO2_oe(GPIO2_oe),
    .GPIO2_out(GPIO2_out),
    .GPIO32_oe(GPIO32_oe),
    .GPIO32_out(GPIO32_out),
    .GPIO33_oe(GPIO33_oe),
    .GPIO33_out(GPIO33_out),
    .GPIO3_oe(GPIO3_oe),
    .GPIO3_out(GPIO3_out),
    .GPIO4_oe(GPIO4_oe),
    .GPIO4_out(GPIO4_out),
    .GPIO5_oe(GPIO5_oe),
    .GPIO5_out(GPIO5_out),
    .GPIO6_oe(GPIO6_oe),
    .GPIO6_out(GPIO6_out),
    .GPIO7_oe(GPIO7_oe),
    .GPIO7_out(GPIO7_out),
    .GPIO8_oe(GPIO8_oe),
    .GPIO8_out(GPIO8_out),
    .GPIO9_oe(GPIO9_oe),
    .GPIO9_out(GPIO9_out),
    .GPO0_oe(GPO0_oe),
    .GPO0_out(GPO0_out),
    .GPO1_oe(GPO1_oe),
    .GPO1_out(GPO1_out),
    .GPO2_oe(GPO2_oe),
    .GPO2_out(GPO2_out),
    .GPO3_oe(GPO3_oe),
    .GPO3_out(GPO3_out),
    .GPO4_oe(GPO4_oe),
    .GPO4_out(GPO4_out),
    .GPO5_oe(GPO5_oe),
    .GPO5_out(GPO5_out),
    .GPO6_oe(GPO6_oe),
    .GPO6_out(GPO6_out),
    .GPO8_oe(GPO8_oe),
    .GPO8_out(GPO8_out),
    .HDI_RDY_IN_oe(HDI_RDY_IN_oe),
    .HDI_RDY_IN_out(HDI_RDY_IN_out),
    .HDI_RDY_OUT_oe(HDI_RDY_OUT_oe),
    .HDI_RDY_OUT_out(HDI_RDY_OUT_out),
    .I2C_SCL_SLAVE_H_oe(I2C_SCL_SLAVE_H_oe),
    .I2C_SCL_SLAVE_H_out(I2C_SCL_SLAVE_H_out),
    .I2C_SDA_SLAVE_H_oe(I2C_SDA_SLAVE_H_oe),
    .I2C_SDA_SLAVE_H_out(I2C_SDA_SLAVE_H_out),
    .I2S4_RX_BCLK_oe(I2S4_RX_BCLK_oe),
    .I2S4_RX_BCLK_out(I2S4_RX_BCLK_out),
    .I2S4_RX_D0_oe(I2S4_RX_D0_oe),
    .I2S4_RX_D0_out(I2S4_RX_D0_out),
    .I2S4_RX_WCLK_oe(I2S4_RX_WCLK_oe),
    .I2S4_RX_WCLK_out(I2S4_RX_WCLK_out),
    .I2S4_TX_BCLK_oe(I2S4_TX_BCLK_oe),
    .I2S4_TX_BCLK_out(I2S4_TX_BCLK_out),
    .I2S4_TX_D0_oe(I2S4_TX_D0_oe),
    .I2S4_TX_D0_out(I2S4_TX_D0_out),
    .I2S4_TX_WCLK_oe(I2S4_TX_WCLK_oe),
    .I2S4_TX_WCLK_out(I2S4_TX_WCLK_out),
    .PCIE_PERST_oe(PCIE_PERST_oe),
    .PCIE_PERST_out(PCIE_PERST_out),
    .PMS_UART_RX_oe(PMS_UART_RX_oe),
    .PMS_UART_RX_out(PMS_UART_RX_out),
    .PMS_UART_TX_oe(PMS_UART_TX_oe),
    .PMS_UART_TX_out(PMS_UART_TX_out),
    .QSPI_CLK_oe(QSPI_CLK_oe),
    .QSPI_CLK_out(QSPI_CLK_out),
    .QSPI_CSN_oe(QSPI_CSN_oe),
    .QSPI_CSN_out(QSPI_CSN_out),
    .QSPI_D0_oe(QSPI_D0_oe),
    .QSPI_D0_out(QSPI_D0_out),
    .QSPI_D1_oe(QSPI_D1_oe),
    .QSPI_D1_out(QSPI_D1_out),
    .QSPI_D2_oe(QSPI_D2_oe),
    .QSPI_D2_out(QSPI_D2_out),
    .QSPI_D3_oe(QSPI_D3_oe),
    .QSPI_D3_out(QSPI_D3_out),
    .RIF_UART_RX0_oe(RIF_UART_RX0_oe),
    .RIF_UART_RX0_out(RIF_UART_RX0_out),
    .RIF_UART_TX0_oe(RIF_UART_TX0_oe),
    .RIF_UART_TX0_out(RIF_UART_TX0_out),
    .TESTBUS_CLK_oe(TESTBUS_CLK_oe),
    .TESTBUS_CLK_out(TESTBUS_CLK_out),
    .scan_enable_out(scan_enable_out),
    .phys_dhdi_edt_channels_in(dhdi_edt_channels_in),
    .phys_edt_channels_in(afe_if_edt_channels_in),
    .logic_edt_channels_in(logic_edt_channels_in),
    .scan_clk2(scan_clk2),
    .scan_clk3(),
    .scan_clk1(),
    .RESET_N_scan(),
    .comp_clk(comp_clk),
    .mask_enable(mask_enable),
    .comp_enable(comp_enable),
    .spreader_enable(spreader_enable),
    .scan_speed_sel(),
    .tdo_out(tdo_out),
    .tdo_oe(tdo_oe)
   ); 


   
   SGMII_PHY_2p5
    SGMII_Phy_Tadpt_i
   (
    .tx_cm(sgmii_tx_cm),
    .RXN(SGMPHY_T_RXN),
    .rxen(sgmii_rxen),
    .refclksel(sgmii_refclksel),
    .rx_rt_en(sgmii_rx_rt_en),
    .reset_n(sgmii_phy_reset_n),
    .rtt_cal_en(sgmii_rtt_cal_en),
    .RXP(SGMPHY_T_RXP),
    .txpll_bw(sgmii_txpll_bw),
    .txpll_frac(sgmii_txpll_frac),
    .rterm_cal(sgmii_rterm_cal),
    .rxpll_nf(sgmii_rxpll_nf),
    .rxdtestbus_sel(sgmii_rxdtestbus_sel),
    .selvdd(sgmii_selvdd),
    .rx_cm_en(sgmii_rx_cm_en),
    .atestbus_sel(sgmii_atestbus_sel),
    .refclkp(sgmii_refclkp),
    .pd(sgmii_pd),
    .tx_rt_en(sgmii_tx_rt_en),
    .rxdtestbus_en(sgmii_rxdtestbus_en),
    .rxpll_nr(sgmii_rxpll_nr),
    .atestbus_en(sgmii_atestbus_en),
    .hs_echo_lpbk(sgmii_hs_echo_lpbk),
    .txen(sgmii_txen),
    .txdrv(sgmii_txdrv),
    .rx_pllmode(sgmii_rx_pllmode),
    .txpll_nr(sgmii_txpll_nr),
    .refclkn(sgmii_refclkn),
    .txpll_dsmpd(sgmii_txpll_dsmpd),
    .rtt_cal(sgmii_rtt_cal),
    .cmosclkin(sgmii_cmosclkin),
    .hs_dig_lpbk(sgmii_hs_dig_lpbk),
    .fmonen(sgmii_fmonen),
    .txdata(sgmii_tcg),
    .bgtrim(sgmii_bgtrim),
    .txpll_nf(sgmii_txpll_nf),
    .ATESTBUS(SGMII_ATB),
    .VDD(VDD),
    .VSSS(SGMPHY_T_VSSS),
    .VDDA(SGMPHY_T_VDDA),
    .RREXT(),
    .VSS(VSS),
    .VDDIO(SGMPHY_T_VDDIO),
    .rxclk10(sgmii_pma_clk),
    .TXN(SGMPHY_T_TXN),
    .TXP(SGMPHY_T_TXP),
    .txclk10(sgmii_gtx_clki),
    .txlock(sgmii_txlock),
    .rterm_cmp(sgmii_rterm_cmp),
    .rxlock(sgmii_rxlock),
    .rxdata(sgmii_rcg),
    .overrun_detect(sgmii_overrun_detect),
    .rxdtestbusout(sgmii_rxdtestbusout)
   ); 


   
   vl_clock_gator
    vl_clock_gator_buff2_i
   (
    .enable(ref_clk_from_pad_en),
    .clk(I2C_SCL_SLAVE_H_in),
    .reset_n(1'b0),
    .scan_enable(scan_enable_out),
    .clock(gtm_refclk_bp_gated)
   ); 


   
   Bsor_Dhditop
    DHDI_Phy0_i
   (
    .VDDA(DHDI_VDDA),
    .VDD(VDD),
    .VDDIO(DHDI_VDDIO),
    .VSSS(DHDI_VSSS),
    .VSS(VSS),
    .bgtrim(TxDhdiPhy_bgtrim),
    .selvdd(TxDhdiPhy_selvdd),
    .rterm_en(TxDhdiPhy_rterm_en),
    .rtt_cal(TxDhdiPhy_rtt_cal),
    .rtt_cal_en(TxDhdiPhy_rtt_cal_en),
    .rxterm_val(TxDhdiPhy_rxterm_val),
    .rx_en(TxDhdiPhy_rx_en),
    .enrxse(TxDhdiPhy_enrxse),
    .rx_cm_gen(TxDhdiPhy_rx_cm_gen),
    .phintsel(TxDhdiPhy_phintsel),
    .sclk_sl_phs_sel_gr_global_tx(TxDhdiPhy_gray_global_tx),
    .sclk_sl_phs_sel_th_global_tx(TxDhdiPhy_thermo_global_tx),
    .sclk_sl_phs_sel_gr_global_rx(TxDhdiPhy_gray_ctrl_global),
    .sclk_sl_phs_sel_th_global_rx(TxDhdiPhy_thermo_ctrl_global),
    .lane0_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl0),
    .lane1_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl1),
    .lane2_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl2),
    .lane3_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl3),
    .lane4_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl4),
    .lane5_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl5),
    .lane6_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl6),
    .lane7_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl7),
    .lane8_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl8),
    .lane0_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl0),
    .lane1_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl1),
    .lane2_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl2),
    .lane3_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl3),
    .lane4_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl4),
    .lane5_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl5),
    .lane6_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl6),
    .lane7_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl7),
    .lane8_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl8),
    .ck_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl_clk),
    .ck_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl_clk),
    .inv_rxpclk(TxDhdiPhy_inv_rxpclk),
    .tx_en(TxDhdiPhy_tx_en),
    .txda(TxDhdiPhy_txda),
    .txdrv(TxDhdiPhy_txdrv),
    .txodrv(TxDhdiPhy_txodrv),
    .inv_mux_txpclk(TxDhdiPhy_inv_mux_txpclk),
    .tx_cm(TxDhdiPhy_tx_cm),
    .tx_emph_ctl(TxDhdiPhy_tx_emph_ctl),
    .rx_eq_ctl(TxDhdiPhy_rx_eq_ctl),
    .pll_pd(TxDhdiPhy_pll_pd),
    .pll_nr(TxDhdiPhy_pll_nr),
    .pll_nf(TxDhdiPhy_pll_nf),
    .pll_frac(TxDhdiPhy_pll_frac),
    .pll_dsmpd(TxDhdiPhy_pll_dsmpd),
    .pll_pdphases(TxDhdiPhy_pll_pdphases),
    .pll_fout1pd(TxDhdiPhy_pll_fout1pd),
    .pllrefclk_sel(TxDhdiPhy_pllrefclk_sel),
    .pll_bypass(TxDhdiPhy_pll_bypass),
    .pll_bw(TxDhdiPhy_pll_bw),
    .pll_postdiven(TxDhdiPhy_pll_postdiven),
    .resetn_ser(TxDhdiPhy_resetn_ser),
    .resetn_des(TxDhdiPhy_resetn_des),
    .atestbus_en(TxDhdiPhy_atestbus_en),
    .atestbus0_ctl(TxDhdiPhy_atestbus0_ctl),
    .atestbus1_ctl(TxDhdiPhy_atestbus1_ctl),
    .bias_en(TxDhdiPhy_bias_en),
    .dhdi_mode(tx_dhdi_dhdi_mode),
    .dlpbk_en(TxDhdiPhy_dlpbk_en),
    .cmos_ck_in(TxDhdiPhy_cmos_ck_in),
    .cml_ck_in_0_P(cml_refclk7_p),
    .cml_ck_in_0_N(cml_refclk7_n),
    .cml_ck_in_1_P(1'b1),
    .cml_ck_in_1_N(1'b0),
    .cmlbuf_out_0_pd(TxDhdiPhy_cmlbuf_out_0_pd),
    .cmlbuf_out_1_pd(TxDhdiPhy_cmlbuf_out_1_pd),
    .cml2cmos_mux_pd(TxDhdiPhy_cml2cmos_mux_pd),
    .cmos_ck_in_pd(TxDhdiPhy_cmos_ck_in_pd),
    .spare(TxDhdiPhy_spare),
    .tx_phase_sel_en(TxDhdiPhy_tx_phase_sel_en),
    .ck_dtesten(TxDhdiPhy_ck_dtesten),
    .reg_refen(TxDhdiPhy_reg_refen),
    .lane0_dtesten(TxDhdiPhy_lane0_dtesten),
    .lane1_dtesten(TxDhdiPhy_lane1_dtesten),
    .lane2_dtesten(TxDhdiPhy_lane2_dtesten),
    .lane3_dtesten(TxDhdiPhy_lane3_dtesten),
    .lane4_dtesten(TxDhdiPhy_lane4_dtesten),
    .lane5_dtesten(TxDhdiPhy_lane5_dtesten),
    .lane6_dtesten(TxDhdiPhy_lane6_dtesten),
    .lane7_dtesten(TxDhdiPhy_lane7_dtesten),
    .lane8_dtesten(TxDhdiPhy_lane8_dtesten),
    .dtesten(TxDhdiPhy_dtesten),
    .dtestsel0(TxDhdiPhy_dtestsel0),
    .dtestsel1(TxDhdiPhy_dtestsel1),
    .ck_dtestsel(TxDhdiPhy_ck_dtestsel),
    .lane0_dtestsel(TxDhdiPhy_lane0_dtestsel),
    .lane1_dtestsel(TxDhdiPhy_lane1_dtestsel),
    .lane2_dtestsel(TxDhdiPhy_lane2_dtestsel),
    .lane3_dtestsel(TxDhdiPhy_lane3_dtestsel),
    .lane4_dtestsel(TxDhdiPhy_lane4_dtestsel),
    .lane5_dtestsel(TxDhdiPhy_lane5_dtestsel),
    .lane6_dtestsel(TxDhdiPhy_lane6_dtestsel),
    .lane7_dtestsel(TxDhdiPhy_lane7_dtestsel),
    .lane8_dtestsel(TxDhdiPhy_lane8_dtestsel),
    .pllrefclk_ext(1'b0),
    .scan_clk(scan_clk2),
    .scan_reset_n(TxDhdiPhy_scan_reset_n),
    .scan_mode(scan_mode_out),
    .scan_enable(TxDhdiPhy_scan_en),
    .comp_en(comp_enable),
    .comp_clk(comp_clk),
    .sprdr_en(spreader_enable),
    .mask_en(mask_enable),
    .edt_channels_in(dhdi_edt_channels_in),
    .ATESTBUS_0(DHDI_ATB_0),
    .ATESTBUS_1(DHDI_ATB_1),
    .DP_0(DHDI_0P),
    .DP_1(DHDI_1P),
    .DP_2(DHDI_2P),
    .DP_3(DHDI_3P),
    .DP_4(DHDI_4P),
    .DP_5(DHDI_5P),
    .DP_6(DHDI_6P),
    .DP_7(DHDI_7P),
    .DP_8(DHDI_8P),
    .DN_0(DHDI_0N),
    .DN_1(DHDI_1N),
    .DN_2(DHDI_2N),
    .DN_3(DHDI_3N),
    .DN_4(DHDI_4N),
    .DN_5(DHDI_5N),
    .DN_6(DHDI_6N),
    .DN_7(DHDI_7N),
    .DN_8(DHDI_8N),
    .CKP(DHDI_CKP),
    .CKN(DHDI_CKN),
    .RREXT(DHDI_RREXT),
    .lane0_dtestout(),
    .lane1_dtestout(),
    .lane2_dtestout(),
    .lane3_dtestout(),
    .lane4_dtestout(),
    .lane5_dtestout(),
    .lane6_dtestout(),
    .lane7_dtestout(),
    .lane8_dtestout(),
    .ck_dtestout(),
    .txpclk(TxDhdiPhy_txpclk),
    .txpclk_x2(TxDhdiPhy_txpclk_x2),
    .pll_clksscg(TxDhdiPhy_pll_clksscg),
    .pll_lock(TxDhdiPhy_pll_lock),
    .cml_ck_out_0_P(dhdiphy0_cml_ck_out_0_P),
    .cml_ck_out_0_N(dhdiphy0_cml_ck_out_0_N),
    .cml_ck_out_1_P(),
    .cml_ck_out_1_N(),
    .early(TxDhdiPhy_early),
    .late(TxDhdiPhy_late),
    .error(TxDhdiPhy_error),
    .early_ck(TxDhdiPhy_early_clk),
    .late_ck(TxDhdiPhy_late_clk),
    .error_ck(TxDhdiPhy_error_clk),
    .rterm_cmp(TxDhdiPhy_rterm_cmp),
    .rxda(TxDhdiPhy_rxda),
    .rxpclk(TxDhdiPhy_rxpclk),
    .rxpclk_x2(TxDhdiPhy_rxpclk_x2),
    .dtestout_0(),
    .dtestout_1(),
    .line_clk(TxDhdiPhy_line_clk),
    .line_rxda(TxDhdiPhy_line_rxda),
    .edt_channels_out(dhdi_edt_channels_out)
   ); 


   
   Bsor_Dhditop
    DHDI_Phy1_i
   (
    .VDDA(DHDI2_VDDA),
    .VDD(VDD),
    .VDDIO(DHDI2_VDDIO),
    .VSSS(DHDI2_VSSS),
    .VSS(VSS),
    .bgtrim(TxDhdiPhy_bgtrim),
    .selvdd(TxDhdiPhy_selvdd),
    .rterm_en(TxDhdiPhy_rterm_en),
    .rtt_cal(TxDhdiPhy_rtt_cal),
    .rtt_cal_en(TxDhdiPhy_rtt_cal_en),
    .rxterm_val(TxDhdiPhy_rxterm_val),
    .rx_en(TxDhdiPhy_rx_en),
    .enrxse(TxDhdiPhy_enrxse),
    .rx_cm_gen(TxDhdiPhy_rx_cm_gen),
    .phintsel(TxDhdiPhy_phintsel),
    .sclk_sl_phs_sel_gr_global_tx(TxDhdiPhy_gray_global_tx),
    .sclk_sl_phs_sel_th_global_tx(TxDhdiPhy_thermo_global_tx),
    .sclk_sl_phs_sel_gr_global_rx(TxDhdiPhy_gray_ctrl_global),
    .sclk_sl_phs_sel_th_global_rx(TxDhdiPhy_thermo_ctrl_global),
    .lane0_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl0),
    .lane1_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl1),
    .lane2_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl2),
    .lane3_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl3),
    .lane4_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl4),
    .lane5_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl5),
    .lane6_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl6),
    .lane7_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl7),
    .lane8_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl8),
    .lane0_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl0),
    .lane1_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl1),
    .lane2_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl2),
    .lane3_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl3),
    .lane4_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl4),
    .lane5_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl5),
    .lane6_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl6),
    .lane7_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl7),
    .lane8_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl8),
    .ck_sclk_sl_phs_sel_gr(TxDhdiPhy_gray_ctrl_clk),
    .ck_sclk_sl_phs_sel_th(TxDhdiPhy_thermo_ctrl_clk),
    .inv_rxpclk(TxDhdiPhy_inv_rxpclk),
    .tx_en(TxDhdiPhy1_tx_en),
    .txda(TxDhdiTestPhy_txda),
    .txdrv(TxDhdiPhy1_txdrv),
    .txodrv(TxDhdiPhy1_txodrv),
    .inv_mux_txpclk(TxDhdiPhy1_inv_mux_txpclk),
    .tx_cm(TxDhdiPhy1_tx_cm),
    .tx_emph_ctl(TxDhdiPhy1_tx_emph_ctl),
    .rx_eq_ctl(TxDhdiPhy_rx_eq_ctl),
    .pll_pd(TxDhdiPhy1_pll_pd),
    .pll_nr(TxDhdiPhy_pll_nr),
    .pll_nf(TxDhdiPhy_pll_nf),
    .pll_frac(TxDhdiPhy_pll_frac),
    .pll_dsmpd(TxDhdiPhy1_pll_dsmpd),
    .pll_pdphases(TxDhdiPhy1_pll_pdphases),
    .pll_fout1pd(TxDhdiPhy1_pll_fout1pd),
    .pllrefclk_sel(TxDhdiPhy_pllrefclk_sel),
    .pll_bypass(TxDhdiPhy_pll_bypass),
    .pll_bw(TxDhdiPhy_pll_bw),
    .pll_postdiven(TxDhdiPhy_pll_postdiven),
    .resetn_ser(TxDhdiPhy_resetn_ser),
    .resetn_des(TxDhdiPhy_resetn_des),
    .atestbus_en(TxDhdiPhy_atestbus_en),
    .atestbus0_ctl(TxDhdiPhy_atestbus0_ctl),
    .atestbus1_ctl(TxDhdiPhy_atestbus1_ctl),
    .bias_en(TxDhdiPhy1_bias_en),
    .dhdi_mode(tx_dhdi_dhdi_mode),
    .dlpbk_en(TxDhdiPhy_dlpbk_en),
    .cmos_ck_in(TxDhdiPhy_cmos_ck_in),
    .cml_ck_in_0_P(dhdiphy0_cml_ck_out_0_P),
    .cml_ck_in_0_N(dhdiphy0_cml_ck_out_0_N),
    .cml_ck_in_1_P(1'b1),
    .cml_ck_in_1_N(1'b0),
    .cmlbuf_out_0_pd(TxDhdiPhy_cmlbuf_out_0_pd),
    .cmlbuf_out_1_pd(TxDhdiPhy_cmlbuf_out_1_pd),
    .cml2cmos_mux_pd(TxDhdiPhy_cml2cmos_mux_pd),
    .cmos_ck_in_pd(TxDhdiPhy1_cmos_ck_in_pd),
    .spare(TxDhdiPhy_spare),
    .tx_phase_sel_en(TxDhdiPhy1_tx_phase_sel_en),
    .ck_dtesten(TxDhdiPhy_ck_dtesten),
    .reg_refen(TxDhdiPhy_reg_refen),
    .lane0_dtesten(TxDhdiPhy_lane0_dtesten),
    .lane1_dtesten(TxDhdiPhy_lane1_dtesten),
    .lane2_dtesten(TxDhdiPhy_lane2_dtesten),
    .lane3_dtesten(TxDhdiPhy_lane3_dtesten),
    .lane4_dtesten(TxDhdiPhy_lane4_dtesten),
    .lane5_dtesten(TxDhdiPhy_lane5_dtesten),
    .lane6_dtesten(TxDhdiPhy_lane6_dtesten),
    .lane7_dtesten(TxDhdiPhy_lane7_dtesten),
    .lane8_dtesten(TxDhdiPhy_lane8_dtesten),
    .dtesten(TxDhdiPhy_dtesten),
    .dtestsel0(TxDhdiPhy_dtestsel0),
    .dtestsel1(TxDhdiPhy_dtestsel1),
    .ck_dtestsel(TxDhdiPhy_ck_dtestsel),
    .lane0_dtestsel(TxDhdiPhy_lane0_dtestsel),
    .lane1_dtestsel(TxDhdiPhy_lane1_dtestsel),
    .lane2_dtestsel(TxDhdiPhy_lane2_dtestsel),
    .lane3_dtestsel(TxDhdiPhy_lane3_dtestsel),
    .lane4_dtestsel(TxDhdiPhy_lane4_dtestsel),
    .lane5_dtestsel(TxDhdiPhy_lane5_dtestsel),
    .lane6_dtestsel(TxDhdiPhy_lane6_dtestsel),
    .lane7_dtestsel(TxDhdiPhy_lane7_dtestsel),
    .lane8_dtestsel(TxDhdiPhy_lane8_dtestsel),
    .pllrefclk_ext(1'b0),
    .scan_clk(scan_clk2),
    .scan_reset_n(TxDhdiPhy_scan_reset_n),
    .scan_mode(scan_mode_out),
    .scan_enable(TxDhdiPhy_scan_en),
    .comp_en(comp_enable),
    .comp_clk(comp_clk),
    .sprdr_en(spreader_enable),
    .mask_en(mask_enable),
    .edt_channels_in(1'b0),
    .ATESTBUS_0(DHDI_ATB_0),
    .ATESTBUS_1(DHDI_ATB_1),
    .DP_0(DHDI2_0P),
    .DP_1(DHDI2_1P),
    .DP_2(DHDI2_2P),
    .DP_3(DHDI2_3P),
    .DP_4(DHDI2_4P),
    .DP_5(DHDI2_5P),
    .DP_6(DHDI2_6P),
    .DP_7(DHDI2_7P),
    .DP_8(DHDI2_8P),
    .DN_0(DHDI2_0N),
    .DN_1(DHDI2_1N),
    .DN_2(DHDI2_2N),
    .DN_3(DHDI2_3N),
    .DN_4(DHDI2_4N),
    .DN_5(DHDI2_5N),
    .DN_6(DHDI2_6N),
    .DN_7(DHDI2_7N),
    .DN_8(DHDI2_8N),
    .CKP(DHDI2_CKP),
    .CKN(DHDI2_CKN),
    .RREXT(),
    .lane0_dtestout(),
    .lane1_dtestout(),
    .lane2_dtestout(),
    .lane3_dtestout(),
    .lane4_dtestout(),
    .lane5_dtestout(),
    .lane6_dtestout(),
    .lane7_dtestout(),
    .lane8_dtestout(),
    .ck_dtestout(),
    .txpclk(DhdiPhy1_txpclk),
    .txpclk_x2(DhdiPhy1_txpclk_x2),
    .pll_clksscg(),
    .pll_lock(DhdiPhy1_pll_lock_s),
    .cml_ck_out_0_P(),
    .cml_ck_out_0_N(),
    .cml_ck_out_1_P(),
    .cml_ck_out_1_N(),
    .early(DhdiPhy1_early),
    .late(DhdiPhy1_late),
    .error(DhdiPhy1_error),
    .early_ck(DhdiPhy1_early_clk),
    .late_ck(DhdiPhy1_late_clk),
    .error_ck(DhdiPhy1_error_clk),
    .rterm_cmp(DhdiPhy1_rterm_cmp_s),
    .rxda(),
    .rxpclk(DhdiPhy1_rxpclk),
    .rxpclk_x2(DhdiPhy1_rxpclk_x2),
    .dtestout_0(),
    .dtestout_1(),
    .line_clk(),
    .line_rxda(),
    .edt_channels_out()
   ); 


   
   POR_env
    POR_1_inst
   (
    .VDD18(VDDPST18_2),
    .VDD18P(VDDPST18_2),
    .VDD(VDD),
    .VSSS(VSS),
    .in_3_3V(POR_AVDD_33),
    .en_3_3V_monitor(POR_EN_3_3V_MONITOR_in),
    .por_bypass(1'b0),
    .resetB_ext(1'b1),
    .por_resetB_from_counter(por_from_cnt),
    .por_reset18B_bdir(POR_RESET_N_BDIR),
X!X!X ->    .sysrstB(por_reset_n),
    .resetB(por_to_cnt),
    .reset18B()
   ); 


   
   POR_env
    POR_2_inst
   (
    .VDD18(VDDPST18_2),
    .VDD18P(VDDPST18_2),
    .VDD(VDDA_CML_HDBT_L),
    .VSSS(VSS),
    .in_3_3V(POR_AVDD_33),
    .en_3_3V_monitor(POR_EN_3_3V_MONITOR_in),
    .por_bypass(1'b0),
    .resetB_ext(1'b1),
    .por_resetB_from_counter(por_from_cnt),
    .por_reset18B_bdir(),
    .sysrstB(),
    .resetB(por_to_cnt2),
    .reset18B()
   ); 


   
   Temperature_sensor
    ts0_inst
   (
    .clk(ts_clk),
    .pd(ts0_pd),
    .run(ts0_run),
    .rstn(ts0_ip_reset_n),
    .cal(ts0_cal),
    .ser_en(ts0_ser_en),
    .sgn_en(ts0_sgn_en),
    .tm_an0(ts0_tm_an0),
    .tm_an1(ts0_tm_an1),
    .tm_an2(ts0_tm_an2),
    .tm_an3(ts0_tm_an3),
    .VDD(VDD),
    .VDDA(VDDPST18_1),
    .VSS(VSS),
    .an_test0(),
    .an_test1(),
    .an_test2(),
    .an_test3(),
    .vcal(),
    .vss_sense(),
    .rdy(ts0_rdy),
    .dout0(ts0_dout0),
    .dout1(ts0_dout1),
    .dout2(ts0_dout2),
    .dout3(ts0_dout3),
    .dout4(ts0_dout4),
    .dout5(ts0_dout5),
    .dout6(ts0_dout6),
    .dout7(ts0_dout7),
    .dout8(ts0_dout8),
    .dout9(ts0_dout9),
    .dout10(ts0_dout10),
    .dout11(ts0_dout11),
    .digo()
   ); 


   
   Temperature_sensor
    ts1_inst
   (
    .clk(ts_clk),
    .pd(ts1_pd),
    .run(ts1_run),
    .rstn(ts1_ip_reset_n),
    .cal(ts1_cal),
    .ser_en(ts1_ser_en),
    .sgn_en(ts1_sgn_en),
    .tm_an0(ts1_tm_an0),
    .tm_an1(ts1_tm_an1),
    .tm_an2(ts1_tm_an2),
    .tm_an3(ts1_tm_an3),
    .VDD(VDD),
    .VDDA(VDDPST18_2),
    .VSS(VSS),
    .an_test0(),
    .an_test1(),
    .an_test2(),
    .an_test3(),
    .vcal(),
    .vss_sense(),
    .rdy(ts1_rdy),
    .dout0(ts1_dout0),
    .dout1(ts1_dout1),
    .dout2(ts1_dout2),
    .dout3(ts1_dout3),
    .dout4(ts1_dout4),
    .dout5(ts1_dout5),
    .dout6(ts1_dout6),
    .dout7(ts1_dout7),
    .dout8(ts1_dout8),
    .dout9(ts1_dout9),
    .dout10(ts1_dout10),
    .dout11(ts1_dout11),
    .digo()
   ); 


   
   Voltage_monitor
    vm0_inst
   (
    .clk(vm_clk),
    .pd(vm0_pd),
    .run(vm0_run),
    .rstn(vm0_ip_reset_n),
    .sde(vm0_sde),
    .tm_se(1'b0),
    .tm_si(1'b0),
    .tm_tval(vm0_tm_tval),
    .tm_ld(vm0_tm_ld),
    .tm_te(1'b0),
    .sel_vin0(vm0_sel_vin0),
    .sel_vin1(vm0_sel_vin1),
    .sel_vin2(vm0_sel_vin2),
    .sel_vin3(vm0_sel_vin3),
    .trim0(vm0_trim0),
    .trim1(vm0_trim1),
    .trim2(vm0_trim2),
    .trim3(vm0_trim3),
    .tm_a0(1'b0),
    .tm_a1(1'b0),
    .tm_a2(1'b0),
    .tm_a3(1'b0),
    .an_vm0(an_vm0),
    .an_vm1(an_vm1),
    .an_vm2(an_vm2),
    .an_vm3(an_vm3),
    .an_vm4(an_vm4),
    .an_vm5(VM_AN_VM5),
    .an_vm6(an_vm6),
    .an_vm7(VDDA_CML_HDBT_R),
    .vdda(VDDPST18_1),
    .vdd(VDD),
    .vss(VSS),
    .an_vref(),
    .rdy(vm0_rdy),
    .dout0(vm0_dout0),
    .dout1(vm0_dout1),
    .dout2(vm0_dout2),
    .dout3(vm0_dout3),
    .dout4(vm0_dout4),
    .dout5(vm0_dout5),
    .dout6(vm0_dout6),
    .dout7(vm0_dout7),
    .dout8(vm0_dout8),
    .dout9(vm0_dout9),
    .dout10(vm0_dout10),
    .dout11(vm0_dout11),
    .tm_so()
   ); 


   
   PD_108
    pd0_inst
   (
    .clk(pd_clk),
    .run(pd0_run),
    .rstn(pd0_ip_reset_n),
    .cload(pd0_cload),
    .cfg1_0(pd0_cfg1_0),
    .cfg1_1(pd0_cfg1_1),
    .cfg1_2(pd0_cfg1_2),
    .cfg1_3(pd0_cfg1_3),
    .cfg1_4(pd0_cfg1_4),
    .cfg1_5(pd0_cfg1_5),
    .cfg1_6(pd0_cfg1_6),
    .cfg1_7(pd0_cfg1_7),
    .cfg2_0(pd0_cfg2_0),
    .cfg2_1(pd0_cfg2_1),
    .cfg2_2(pd0_cfg2_2),
    .cfg2_3(pd0_cfg2_3),
    .cfg2_4(pd0_cfg2_4),
    .cfg2_5(pd0_cfg2_5),
    .cfg2_6(pd0_cfg2_6),
    .cfg2_7(pd0_cfg2_7),
    .cfg3_0(pd0_cfg3_0),
    .cfg3_1(pd0_cfg3_1),
    .cfg3_2(pd0_cfg3_2),
    .cfg3_3(pd0_cfg3_3),
    .cfg3_4(pd0_cfg3_4),
    .cfg3_5(pd0_cfg3_5),
    .cfg3_6(pd0_cfg3_6),
    .cfg3_7(pd0_cfg3_7),
    .scan_in(1'b0),
    .scan_en(1'b0),
    .scan_test(1'b0),
    .VDD(VDD),
    .VDDA(VDDPST18_1),
    .VSS(VSS),
    .dout0(pd0_dout0),
    .dout1(pd0_dout1),
    .dout2(pd0_dout2),
    .dout3(pd0_dout3),
    .dout4(pd0_dout4),
    .dout5(pd0_dout5),
    .dout6(pd0_dout6),
    .dout7(pd0_dout7),
    .dout8(pd0_dout8),
    .dout9(pd0_dout9),
    .dout10(pd0_dout10),
    .dout11(pd0_dout11),
    .rdy(pd0_rdy),
    .dout_type(pd0_dout_type),
    .faultn(pd0_faultn),
    .scan_out()
   ); 


   
   PD_108
    pd1_inst
   (
    .clk(pd_clk),
    .run(pd1_run),
    .rstn(pd1_ip_reset_n),
    .cload(pd1_cload),
    .cfg1_0(pd1_cfg1_0),
    .cfg1_1(pd1_cfg1_1),
    .cfg1_2(pd1_cfg1_2),
    .cfg1_3(pd1_cfg1_3),
    .cfg1_4(pd1_cfg1_4),
    .cfg1_5(pd1_cfg1_5),
    .cfg1_6(pd1_cfg1_6),
    .cfg1_7(pd1_cfg1_7),
    .cfg2_0(pd1_cfg2_0),
    .cfg2_1(pd1_cfg2_1),
    .cfg2_2(pd1_cfg2_2),
    .cfg2_3(pd1_cfg2_3),
    .cfg2_4(pd1_cfg2_4),
    .cfg2_5(pd1_cfg2_5),
    .cfg2_6(pd1_cfg2_6),
    .cfg2_7(pd1_cfg2_7),
    .cfg3_0(pd1_cfg3_0),
    .cfg3_1(pd1_cfg3_1),
    .cfg3_2(pd1_cfg3_2),
    .cfg3_3(pd1_cfg3_3),
    .cfg3_4(pd1_cfg3_4),
    .cfg3_5(pd1_cfg3_5),
    .cfg3_6(pd1_cfg3_6),
    .cfg3_7(pd1_cfg3_7),
    .scan_in(1'b0),
    .scan_en(1'b0),
    .scan_test(1'b0),
    .VDD(VDD),
    .VDDA(VDDPST18_2),
    .VSS(VSS),
    .dout0(pd1_dout0),
    .dout1(pd1_dout1),
    .dout2(pd1_dout2),
    .dout3(pd1_dout3),
    .dout4(pd1_dout4),
    .dout5(pd1_dout5),
    .dout6(pd1_dout6),
    .dout7(pd1_dout7),
    .dout8(pd1_dout8),
    .dout9(pd1_dout9),
    .dout10(pd1_dout10),
    .dout11(pd1_dout11),
    .rdy(pd1_rdy),
    .dout_type(pd1_dout_type),
    .faultn(pd1_faultn),
    .scan_out()
   ); 


   
   otp_sidense_shf
    otp_sidense_shf_0_inst
   (
    .otp_shfMR(otp0_shfMR),
    .otp_shfSEL(otp0_shfSEL),
    .otp_shfSTB(otp0_shfSTB),
    .otp_shfWE(otp0_shfWE),
    .otp_shfOE(otp0_shfOE),
    .otp_shfPWD(otp0_shfPWD),
    .otp_shfA(otp0_shfA),
    .otp_shfD(otp0_shfD),
    .otp_ipsMRR(otp0_ipsMRR),
    .otp_ipsPGM(otp0_ipsPGM),
    .VDD(VDD),
    .VCC(VDDPST18_2),
    .VSS(VSS),
    .otp_shfQ(otp0_shfQ),
    .otp_ipsPWG(otp0_ipsPWG)
   ); 


   
   otp_sidense_shf
    otp_sidense_shf_1_inst
   (
    .otp_shfMR(otp1_shfMR),
    .otp_shfSEL(otp1_shfSEL),
    .otp_shfSTB(otp1_shfSTB),
    .otp_shfWE(otp1_shfWE),
    .otp_shfOE(otp1_shfOE),
    .otp_shfPWD(otp1_shfPWD),
    .otp_shfA(otp1_shfA),
    .otp_shfD(otp1_shfD),
    .otp_ipsMRR(otp1_ipsMRR),
    .otp_ipsPGM(otp1_ipsPGM),
    .VDD(VDD),
    .VCC(VDDPST18_2),
    .VSS(VSS),
    .otp_shfQ(otp1_shfQ),
    .otp_ipsPWG(otp1_ipsPWG)
   ); 


   
   otp_sidense_shf
    otp_sidense_shf_2_inst
   (
    .otp_shfMR(otp2_shfMR),
    .otp_shfSEL(otp2_shfSEL),
    .otp_shfSTB(otp2_shfSTB),
    .otp_shfWE(otp2_shfWE),
    .otp_shfOE(otp2_shfOE),
    .otp_shfPWD(otp2_shfPWD),
    .otp_shfA(otp2_shfA),
    .otp_shfD(otp2_shfD),
    .otp_ipsMRR(otp2_ipsMRR),
    .otp_ipsPGM(otp2_ipsPGM),
    .VDD(VDD),
    .VCC(VDDPST18_2),
    .VSS(VSS),
    .otp_shfQ(otp2_shfQ),
    .otp_ipsPWG(otp2_ipsPWG)
   ); 


   
   otp_sidense_shf
    otp_sidense_shf_3_inst
   (
    .otp_shfMR(otp3_shfMR),
    .otp_shfSEL(otp3_shfSEL),
    .otp_shfSTB(otp3_shfSTB),
    .otp_shfWE(otp3_shfWE),
    .otp_shfOE(otp3_shfOE),
    .otp_shfPWD(otp3_shfPWD),
    .otp_shfA(otp3_shfA),
    .otp_shfD(otp3_shfD),
    .otp_ipsMRR(otp3_ipsMRR),
    .otp_ipsPGM(otp3_ipsPGM),
    .VDD(VDD),
    .VCC(VDDPST18_2),
    .VSS(VSS),
    .otp_shfQ(otp3_shfQ),
    .otp_ipsPWG(otp3_ipsPWG)
   ); 


   
   Bsor_lvds_wrapper
    LVDS_TX_inst
   (
    .VDD(VDDA),
    .VDDIO(VDDA18_4),
    .VSS(VSSA),
    .VSSS(VSSA18_4),
    .bias_en(LVDS_TX_bias_en),
    .cp(1'b0),
    .ddr_en(1'b0),
    .inv_cp(1'b0),
    .reset_n(LVDS_TX_reset_n),
    .rterm_en(LVDS_TX_rterm_en),
    .rterm_val(LVDS_TX_rterm_val),
    .sync_en(1'b0),
    .tx_cm(LVDS_TX_tx_cm),
    .txda_1(1'b0),
    .txda_0(cml_refclk20),
    .txdrv(LVDS_TX_txdrv),
    .txen(LVDS_TX_txen),
    .vbias_in(lvds_tx_vbias_in),
    .vbias_sel(LVDS_TX_vbias_sel),
    .PAD_N(LVDSTX_100M_OUT_M),
    .PAD_P(LVDSTX_100M_OUT_P)
   ); 


   
   BIASTOP
    biastop_inst
   (
    .VDDIO(VDDA18_4),
    .VDDA(VDDA),
    .VSSS(VSSA),
    .en(biastop_en),
    .selvdd(biastop_selvdd),
    .trim_0(biastop_trim_0),
    .trim_1(biastop_trim_1),
    .ibg16u_0(),
    .ibg16u_1(),
    .ibg16u_2(),
    .ibg16u_3(),
    .ibg16u_4(),
    .ibg16u_5(),
    .iptat16u(),
    .iptat8u(),
    .vbg(lvds_tx_vbias_in)
   ); 


   
   CML_BUFF
    CML_BUFF0_i
   (
    .VDDA(VDDA_CML_HDBT_R),
    .AVSS(VSSA_CML),
    .cmlouten(1'b0),
    .cmosouten(1'b1),
    .inp(hdphy_r_refclk_p),
    .inn(hdphy_r_refclk_m),
    .cmosin(1'b0),
    .cmos_in_sel(1'b0),
    .cmosout(r_ckdiv_in),
    .outp(),
    .outn()
   ); 


   
   CML_BUFF
    CML_BUFF1_i
   (
    .VDDA(VDDA_CML),
    .AVSS(VSSA_CML),
    .cmlouten(cml_buff_1_cml_out_en),
    .cmosouten(1'b0),
    .inp(1'b1),
    .inn(1'b0),
    .cmosin(refclk_r_25),
    .cmos_in_sel(1'b1),
    .cmosout(),
    .outp(cml_refclk1_p),
    .outn(cml_refclk1_n)
   ); 


   
   CML_BUFF
    CML_BUFF2_i
   (
    .VDDA(VDDA_CML),
    .AVSS(VSSA_CML),
    .cmlouten(cml_buff_2_cml_out_en),
    .cmosouten(1'b0),
    .inp(cml_refclk1_p),
    .inn(cml_refclk1_n),
    .cmosin(gtm_refclk_bp_gated),
    .cmos_in_sel(ref_clk_from_pad_en),
    .cmosout(),
    .outp(cml_refclk2_p),
    .outn(cml_refclk2_n)
   ); 


   
   CML_BUFF
    CML_BUFF3_i
   (
    .VDDA(VDDA_CML),
    .AVSS(VSSA_CML),
    .cmlouten(cml_buff_3_cml_out_en),
    .cmosouten(1'b0),
    .inp(cml_refclk2_p),
    .inn(cml_refclk2_n),
    .cmosin(1'b0),
    .cmos_in_sel(1'b0),
    .cmosout(),
    .outp(cml_refclk3_p),
    .outn(cml_refclk3_n)
   ); 


   
   CML_BUFF
    CML_BUFF4_i
   (
    .VDDA(VDDA_CML),
    .AVSS(VSSA_CML),
    .cmlouten(cml_buff_4_cml_out_en),
    .cmosouten(1'b0),
    .inp(cml_refclk3_p),
    .inn(cml_refclk3_n),
    .cmosin(1'b0),
    .cmos_in_sel(1'b0),
    .cmosout(),
    .outp(cml_refclk4_p),
    .outn(cml_refclk4_n)
   ); 


   
   CML_BUFF
    CML_BUFF5_i
   (
    .VDDA(VDDA_CML),
    .AVSS(VSSA_CML),
    .cmlouten(1'b0),
    .cmosouten(cml_buff_5_cmos_out_en),
    .inp(cml_refclk4_p),
    .inn(cml_refclk4_n),
    .cmosin(1'b0),
    .cmos_in_sel(1'b0),
    .cmosout(i2sclk_pll_rx1_FREF),
    .outp(),
    .outn()
   ); 


   
   CML_BUFF
    CML_BUFF6_i
   (
    .VDDA(VDDA_CML),
    .AVSS(VSSA_CML),
    .cmlouten(1'b0),
    .cmosouten(cml_buff_6_cmos_out_en),
    .inp(cml_refclk4_p),
    .inn(cml_refclk4_n),
    .cmosin(1'b0),
    .cmos_in_sel(1'b0),
    .cmosout(i2sclk_pll_tx1_FREF),
    .outp(),
    .outn()
   ); 


   
   CML_BUFF
    CML_BUFF7_i
   (
    .VDDA(VDDA_CML),
    .AVSS(VSSA_CML),
    .cmlouten(cml_buff_7_cml_out_en),
    .cmosouten(1'b0),
    .inp(cml_refclk4_p),
    .inn(cml_refclk4_n),
    .cmosin(1'b0),
    .cmos_in_sel(1'b0),
    .cmosout(),
    .outp(cml_refclk7_p),
    .outn(cml_refclk7_n)
   ); 


   
   CML_BUFF
    CML_BUFF8_i
   (
    .VDDA(VDDA_CML_HDBT_R),
    .AVSS(VSSA_CML),
    .cmlouten(1'b0),
    .cmosouten(1'b1),
    .inp(hdphy_r_synthclk_p),
    .inn(hdphy_r_synthclk_m),
    .cmosin(1'b0),
    .cmos_in_sel(1'b0),
    .cmosout(cml_refclk8),
    .outp(),
    .outn()
   ); 


   
   CML_BUFF
    CML_BUFF9_i
   (
    .VDDA(VDDA_CML),
    .AVSS(VSSA_CML),
    .cmlouten(cml_buff_9_cml_out_en),
    .cmosouten(1'b0),
    .inp(1'b1),
    .inn(1'b0),
    .cmosin(cml_refclk8),
    .cmos_in_sel(1'b1),
    .cmosout(),
    .outp(cml_refclk9_p),
    .outn(cml_refclk9_n)
   ); 


   
   CML_BUFF
    CML_BUFF10_i
   (
    .VDDA(VDDA_CML),
    .AVSS(VSSA_CML),
    .cmlouten(cml_buff_10_cml_out_en),
    .cmosouten(1'b0),
    .inp(cml_refclk9_p),
    .inn(cml_refclk9_n),
    .cmosin(1'b0),
    .cmos_in_sel(1'b0),
    .cmosout(),
    .outp(cml_refclk10_p),
    .outn(cml_refclk10_n)
   ); 


   
   CML_BUFF
    CML_BUFF11_i
   (
    .VDDA(VDDA_CML),
    .AVSS(VSSA_CML),
    .cmlouten(cml_buff_11_cml_out_en),
    .cmosouten(1'b0),
    .inp(cml_refclk10_p),
    .inn(cml_refclk10_n),
    .cmosin(1'b0),
    .cmos_in_sel(1'b0),
    .cmosout(),
    .outp(cml_refclk11_p),
    .outn(cml_refclk11_n)
   ); 


   
   CML_BUFF
    CML_BUFF12_i
   (
    .VDDA(VDDA_CML),
    .AVSS(VSSA_CML),
    .cmlouten(cml_buff_12_cml_out_en),
    .cmosouten(1'b0),
    .inp(cml_refclk11_p),
    .inn(cml_refclk11_n),
    .cmosin(1'b0),
    .cmos_in_sel(1'b0),
    .cmosout(),
    .outp(cml_refclk12_p),
    .outn(cml_refclk12_n)
   ); 


   
   CML_BUFF
    CML_BUFF13_i
   (
    .VDDA(VDDA_CML),
    .AVSS(VSSA_CML),
    .cmlouten(cml_buff_13_cml_out_en),
    .cmosouten(1'b0),
    .inp(cml_refclk12_p),
    .inn(cml_refclk12_n),
    .cmosin(1'b0),
    .cmos_in_sel(1'b0),
    .cmosout(),
    .outp(cml_refclk13_p),
    .outn(cml_refclk13_n)
   ); 


   
   CML_BUFF
    CML_BUFF14_i
   (
    .VDDA(VDDA_CML),
    .AVSS(VSSA_CML),
    .cmlouten(cml_buff_14_cml_out_en),
    .cmosouten(1'b0),
    .inp(cml_refclk13_p),
    .inn(cml_refclk13_n),
    .cmosin(1'b0),
    .cmos_in_sel(1'b0),
    .cmosout(),
    .outp(cml_refclk14_p),
    .outn(cml_refclk14_n)
   ); 


   
   CML_BUFF
    CML_BUFF15_i
   (
    .VDDA(VDDA_CML),
    .AVSS(VSSA_CML),
    .cmlouten(cml_buff_15_cml_out_en),
    .cmosouten(1'b0),
    .inp(cml_refclk14_p),
    .inn(cml_refclk14_n),
    .cmosin(1'b0),
    .cmos_in_sel(1'b0),
    .cmosout(),
    .outp(pcie_cml_in_refclk_p),
    .outn(pcie_cml_in_refclk_n)
   ); 


   
   CML_BUFF
    CML_BUFF19_i
   (
    .VDDA(VDDA_CML),
    .AVSS(VSSA_CML),
    .cmlouten(cml_buff_19_cml_out_en),
    .cmosouten(1'b0),
    .inp(pcie_cml_out_refclk_p),
    .inn(pcie_cml_out_refclk_n),
    .cmosin(1'b0),
    .cmos_in_sel(1'b0),
    .cmosout(),
    .outp(cml_refclk19_p),
    .outn(cml_refclk19_n)
   ); 


   
   CML_BUFF
    CML_BUFF20_i
   (
    .VDDA(VDDA_CML),
    .AVSS(VSSA_CML),
    .cmlouten(1'b0),
    .cmosouten(cml_buff_20_cmos_out_en),
    .inp(cml_refclk19_p),
    .inn(cml_refclk19_n),
    .cmosin(1'b0),
    .cmos_in_sel(1'b0),
    .cmosout(cml_refclk20),
    .outp(),
    .outn()
   ); 


   
   CML_BUFF
    CML_BUFF21_i
   (
    .VDDA(VDDA_CML_HDBT_L),
    .AVSS(VSS),
    .cmlouten(1'b0),
    .cmosouten(1'b1),
    .inp(hdphy_l_refclk_p),
    .inn(hdphy_l_refclk_m),
    .cmosin(1'b0),
    .cmos_in_sel(1'b0),
    .cmosout(ckdiv_in),
    .outp(),
    .outn()
   ); 


   
   CML_BUFF
    CML_BUFF22_i
   (
    .VDDA(VDDA_CML),
    .AVSS(VSSA_CML),
    .cmlouten(cml_buff_22_cml_out_en),
    .cmosouten(cml_buff_22_cmos_out_en),
    .inp(cml_refclk7_p),
    .inn(cml_refclk7_n),
    .cmosin(clk_multi_gig),
    .cmos_in_sel(cml_buff_22_cmos_in_sel),
    .cmosout(sgmii_cmosclkin),
    .outp(sgmii_refclkp),
    .outn(sgmii_refclkn)
   ); 


   
   vl_clock_mux
    sys_clk_mux_i
   (
    .A(hdphy_cm_sysclk),
    .B(i2sclk_pll_tx1_FOUT1PH90),
    .S(afe_i2s_pll_sys_clk_sel),
    .Z(clk_sys_mux_clk)
   ); 


   
   PLLTS28HPMFRAC_env
    i2sclk_pll_rx1_i
   (
    .FREF(i2sclk_pll_rx1_FREF),
    .REFDIV(i2sclk_pll_rx1_REFDIV),
    .FBDIV(i2sclk_pll_rx1_FBDIV),
    .FRAC(i2sclk_pll_rx1_FRAC),
    .POSTDIV1(i2sclk_pll_rx1_POSTDIV1),
    .POSTDIV2(i2sclk_pll_rx1_POSTDIV2),
    .PD(i2sclk_pll_rx1_PD),
    .DACPD(i2sclk_pll_rx1_DACPD),
    .DSMPD(i2sclk_pll_rx1_DSMPD),
    .FOUTPOSTDIVPD(i2sclk_pll_rx1_FOUTPOSTDIVPD),
    .FOUT4PHASEPD(i2sclk_pll_rx1_FOUT4PHASEPD),
    .FOUTVCOPD(i2sclk_pll_rx1_FOUTVCOPD),
    .BYPASS(i2sclk_pll_rx1_BYPASS),
    .VDDHV(PLL_I2S_1_VDDA18),
    .VDDREF(PLL_I2S_1_VDDA),
    .VDDPOST(PLL_I2S_1_VDDA),
    .VSS(PLL_I2S_1_VSSA),
    .FOUTVCO(i2sclk_pll_rx1_FOUTVCO),
    .FOUTPOSTDIV(i2sclk_pll_rx1_FOUTPOSTDIV),
    .FOUT1PH0(i2sclk_pll_rx1_FOUT1PH0),
    .FOUT1PH90(i2sclk_pll_rx1_FOUT1PH90),
    .FOUT1PH180(i2sclk_pll_rx1_FOUT1PH180),
    .FOUT1PH270(i2sclk_pll_rx1_FOUT1PH270),
    .FOUT2(i2sclk_pll_rx1_FOUT2),
    .FOUT3(i2sclk_pll_rx1_FOUT3),
    .FOUT4(i2sclk_pll_rx1_FOUT4),
    .LOCK(i2sclk_pll_rx1_LOCK),
    .CLKSSCG(i2sclk_pll_rx1_CLKSSCG)
   ); 


   
   PLLTS28HPMFRAC_env
    i2sclk_pll_tx1_i
   (
    .FREF(i2sclk_pll_tx1_FREF),
    .REFDIV(i2sclk_pll_tx1_REFDIV),
    .FBDIV(i2sclk_pll_tx1_FBDIV),
    .FRAC(i2sclk_pll_tx1_FRAC),
    .POSTDIV1(i2sclk_pll_tx1_POSTDIV1),
    .POSTDIV2(i2sclk_pll_tx1_POSTDIV2),
    .PD(i2sclk_pll_tx1_PD),
    .DACPD(i2sclk_pll_tx1_DACPD),
    .DSMPD(i2sclk_pll_tx1_DSMPD),
    .FOUTPOSTDIVPD(i2sclk_pll_tx1_FOUTPOSTDIVPD),
    .FOUT4PHASEPD(i2sclk_pll_tx1_FOUT4PHASEPD),
    .FOUTVCOPD(i2sclk_pll_tx1_FOUTVCOPD),
    .BYPASS(i2sclk_pll_tx1_BYPASS),
    .VDDHV(PLL_I2S_2_VDDA18),
    .VDDREF(PLL_I2S_2_VDDA),
    .VDDPOST(PLL_I2S_2_VDDA),
    .VSS(PLL_I2S_2_VSSA),
    .FOUTVCO(i2sclk_pll_tx1_FOUTVCO),
    .FOUTPOSTDIV(i2sclk_pll_tx1_FOUTPOSTDIV),
    .FOUT1PH0(i2sclk_pll_tx1_FOUT1PH0),
    .FOUT1PH90(i2sclk_pll_tx1_FOUT1PH90),
    .FOUT1PH180(i2sclk_pll_tx1_FOUT1PH180),
    .FOUT1PH270(i2sclk_pll_tx1_FOUT1PH270),
    .FOUT2(i2sclk_pll_tx1_FOUT2),
    .FOUT3(i2sclk_pll_tx1_FOUT3),
    .FOUT4(i2sclk_pll_tx1_FOUT4),
    .LOCK(i2sclk_pll_tx1_LOCK),
    .CLKSSCG(i2sclk_pll_tx1_CLKSSCG)
   ); 


   
   vl_sync
    vl_sync_clkmux_rst_i
   (
    .data_in(int_pre_reset_n),
    .clk(ckdiv_in),
    .reset_n(int_pre_reset_n),
    .data_out(reset_n_in_ckdiv)
   ); 


   
   vl_sync
    vl_sync_clkmux_rst_r_i
   (
    .data_in(int_pre_reset_n),
    .clk(r_ckdiv_in),
    .reset_n(int_pre_reset_n),
    .data_out(r_reset_n_in_ckdiv)
   ); 


   
   vl_ckdiv_mux
    vl_ckdiv_mux_l_i
   (
    .VSS(VSS),
    .VDD(VDD),
    .clk_in_25(ckdiv_in),
    .clk_in_125(ckdiv_in),
    .reset_n(reset_n_in_ckdiv),
    .select(REFCLK_SEL_in),
    .clk_out(refclk_25)
   ); 


   
   vl_ckdiv_mux
    vl_ckdiv_mux_r_i
   (
    .VSS(VSSA_CML),
    .VDD(VDDA_CML),
    .clk_in_25(r_ckdiv_in),
    .clk_in_125(r_ckdiv_in),
    .reset_n(r_reset_n_in_ckdiv),
    .select(REFCLK_SEL_in),
    .clk_out(refclk_r_25)
   ); 


   
   Yarden_Efuse_Env
    Yarden_Efuse_0_i
   (
    .VDD(VDD),
    .VSS(VSS),
    .VQPS(VDDPST18_2),
    .efuse_csb_w(efuse_csb_w),
    .efuse_strobe_w(efuse_strobe_w),
    .efuse_load_w(efuse_load_w),
    .efuse_PS(efuse_PS),
    .efuse_PD(efuse_PD),
    .efuse_mr(efuse_mr),
    .efuse_addr(efuse_addr),
    .efuse_rwl(efuse_rwl),
    .efuse_rsb(efuse_rsb),
    .efuse_PGENB(efuse_PGENB_to_efuse),
    .efuse_Q(efuse_Q)
   ); 


   
   TEF28HPCESD_P
    EFUSE_1_ESD_inst
   (
    .VQPS(VDDPST18_2),
    .VSS(VSS)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_2_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_3_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_4_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_5_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_6_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_7_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_8_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_9_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_10_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_11_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_12_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_13_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_14_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_15_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_16_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_17_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1ANAE_H_G
    VDDA_CML_HDBT_R_18_inst
   (
    .AVDD(VDDA_CML_HDBT_R),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1ANAE_H_G
    VDDA_CML_HDBT_R_19_inst
   (
    .AVDD(VDDA_CML_HDBT_R),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1ANAE_H_G
    VDDA_CML_HDBT_R_20_inst
   (
    .AVDD(VDDA_CML_HDBT_R),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_21_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_22_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_23_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1ANAE_H_G
    VDDA_CML_24_inst
   (
    .AVDD(VDDA_CML),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1ANAE_H_G
    VDDA_CML_25_inst
   (
    .AVDD(VDDA_CML),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1ANAE_H_G
    VDDA_CML_26_inst
   (
    .AVDD(VDDA_CML),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_27_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_28_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_29_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1ANAE_H_G
    VSSA_CML_30_inst
   (
    .AVSS(VSSA_CML),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1ANAE_H_G
    VSSA_CML_31_inst
   (
    .AVSS(VSSA_CML),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1ANAE_H_G
    VSSA_CML_32_inst
   (
    .AVSS(VSSA_CML),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PCLAMPEC_H_G
    PCLAMP_VDDA_CML_1
   (
    .VDDESD(VDDA_CML),
    .VSSESD(VSSA_CML)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_34_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_35_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_36_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_37_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_38_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_39_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_40_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_41_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_42_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_43_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_44_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_45_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_46_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_47_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_48_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_49_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    TESTMODE0_50_inst
   (
    .PE(1'b1),
    .IE(1'b1),
    .I(1'b0),
    .OEN(1'b1),
    .PS(1'b0),
    .SL(1'b0),
    .ST0(1'b0),
    .ST1(1'b0),
    .HE(1'b0),
    .DS0(1'b0),
    .DS1(1'b0),
    .PAD(TESTMODE0),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(TESTMODE0_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_51_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_52_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_53_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_54_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_55_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    TESTMODE1_56_inst
   (
    .PE(1'b1),
    .IE(1'b1),
    .I(1'b0),
    .OEN(1'b1),
    .PS(1'b0),
    .SL(1'b0),
    .ST0(1'b0),
    .ST1(1'b0),
    .HE(1'b0),
    .DS0(1'b0),
    .DS1(1'b0),
    .PAD(TESTMODE1),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(TESTMODE1_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_57_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_58_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_59_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_60_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_61_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    TESTMODE2_62_inst
   (
    .PE(1'b1),
    .IE(1'b1),
    .I(1'b0),
    .OEN(1'b1),
    .PS(1'b0),
    .SL(1'b0),
    .ST0(1'b0),
    .ST1(1'b0),
    .HE(1'b0),
    .DS0(1'b0),
    .DS1(1'b0),
    .PAD(TESTMODE2),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(TESTMODE2_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_63_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_64_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_65_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_66_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_67_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    JTAG_TCK_68_inst
   (
    .PE(1'b1),
    .IE(1'b1),
    .I(1'b0),
    .OEN(1'b1),
    .PS(1'b1),
    .SL(1'b0),
    .ST0(1'b1),
    .ST1(1'b0),
    .HE(1'b0),
    .DS0(1'b0),
    .DS1(1'b0),
    .PAD(JTAG_TCK),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(tck_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_69_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_70_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_71_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_72_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_73_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    JTAG_TDI_74_inst
   (
    .PE(1'b1),
    .IE(1'b1),
    .I(1'b0),
    .OEN(1'b1),
    .PS(1'b1),
    .SL(1'b0),
    .ST0(1'b1),
    .ST1(1'b0),
    .HE(1'b0),
    .DS0(1'b0),
    .DS1(1'b0),
    .PAD(JTAG_TDI),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(tdi_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_75_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_76_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PCLAMPEC_V_G
    PCLAMP_VDD_1
   (
    .VDDESD(VDD),
    .VSSESD(VSS)
   ); 


   
   PVDD1CDE_H_G
    VDD_78_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_79_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_80_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    JTAG_TDO_81_inst
   (
    .PE(1'b0),
    .IE(1'b0),
    .I(tdo_out),
    .OEN(tdo_oe),
    .PS(1'b0),
    .SL(1'b0),
    .ST0(1'b0),
    .ST1(1'b0),
    .HE(1'b0),
    .DS0(1'b0),
    .DS1(1'b0),
    .PAD(JTAG_TDO),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C()
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_82_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_83_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_84_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_85_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_86_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    JTAG_TRST_93_inst
   (
    .PE(1'b1),
    .IE(1'b1),
    .I(1'b0),
    .OEN(1'b1),
    .PS(1'b0),
    .SL(1'b0),
    .ST0(1'b1),
    .ST1(1'b0),
    .HE(1'b0),
    .DS0(1'b0),
    .DS1(1'b0),
    .PAD(JTAG_TRST),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(trst_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_88_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_89_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_90_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_91_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_92_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    JTAG_TMS_87_inst
   (
    .PE(1'b1),
    .IE(1'b1),
    .I(1'b0),
    .OEN(1'b1),
    .PS(1'b1),
    .SL(1'b0),
    .ST0(1'b1),
    .ST1(1'b0),
    .HE(1'b0),
    .DS0(1'b0),
    .DS1(1'b0),
    .PAD(JTAG_TMS),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(tms_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_94_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_95_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_96_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_97_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_98_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    I2C_SDA_SLAVE_H_109_inst
   (
    .PE(I2C_SDA_SLAVE_H_pe),
    .IE(1'b1),
    .I(I2C_SDA_SLAVE_H_out),
    .OEN(I2C_SDA_SLAVE_H_oe),
    .PS(I2C_SDA_SLAVE_H_ps),
    .SL(I2C_SDA_SLAVE_H_sl),
    .ST0(I2C_SDA_SLAVE_H_s0),
    .ST1(I2C_SDA_SLAVE_H_s1),
    .HE(1'b0),
    .DS0(I2C_SDA_SLAVE_H_d0),
    .DS1(I2C_SDA_SLAVE_H_d1),
    .PAD(I2C_SDA_SLAVE_H),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(I2C_SDA_SLAVE_H_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_100_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_101_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_102_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_103_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_104_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    I2C_SCL_SLAVE_H_110_inst
   (
    .PE(I2C_SCL_SLAVE_H_pe),
    .IE(1'b1),
    .I(I2C_SCL_SLAVE_H_out),
    .OEN(I2C_SCL_SLAVE_H_oe),
    .PS(I2C_SCL_SLAVE_H_ps),
    .SL(I2C_SCL_SLAVE_H_sl),
    .ST0(I2C_SCL_SLAVE_H_s0),
    .ST1(I2C_SCL_SLAVE_H_s1),
    .HE(1'b0),
    .DS0(I2C_SCL_SLAVE_H_d0),
    .DS1(I2C_SCL_SLAVE_H_d1),
    .PAD(I2C_SCL_SLAVE_H),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(I2C_SCL_SLAVE_H_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_106_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_107_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_108_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_109_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_110_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    PMS_UART_RX_115_inst
   (
    .PE(PMS_UART_RX_pe),
    .IE(1'b1),
    .I(PMS_UART_RX_out),
    .OEN(PMS_UART_RX_oe),
    .PS(PMS_UART_RX_ps),
    .SL(PMS_UART_RX_sl),
    .ST0(PMS_UART_RX_s0),
    .ST1(PMS_UART_RX_s1),
    .HE(1'b0),
    .DS0(PMS_UART_RX_d0),
    .DS1(PMS_UART_RX_d1),
    .PAD(PMS_UART_RX),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(PMS_UART_RX_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_112_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_113_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_114_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_115_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_116_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    PMS_UART_TX_116_inst
   (
    .PE(PMS_UART_TX_pe),
    .IE(1'b1),
    .I(PMS_UART_TX_out),
    .OEN(PMS_UART_TX_oe),
    .PS(PMS_UART_TX_ps),
    .SL(PMS_UART_TX_sl),
    .ST0(PMS_UART_TX_s0),
    .ST1(PMS_UART_TX_s1),
    .HE(1'b0),
    .DS0(PMS_UART_TX_d0),
    .DS1(PMS_UART_TX_d1),
    .PAD(PMS_UART_TX),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(PMS_UART_TX_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_118_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_119_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_120_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_121_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_122_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    RIF_UART_RX0_121_inst
   (
    .PE(RIF_UART_RX0_pe),
    .IE(1'b1),
    .I(RIF_UART_RX0_out),
    .OEN(RIF_UART_RX0_oe),
    .PS(RIF_UART_RX0_ps),
    .SL(RIF_UART_RX0_sl),
    .ST0(RIF_UART_RX0_s0),
    .ST1(RIF_UART_RX0_s1),
    .HE(1'b0),
    .DS0(RIF_UART_RX0_d0),
    .DS1(RIF_UART_RX0_d1),
    .PAD(RIF_UART_RX0),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(RIF_UART_RX0_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_124_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_125_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_126_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_127_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_128_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    RIF_UART_TX0_122_inst
   (
    .PE(RIF_UART_TX0_pe),
    .IE(1'b1),
    .I(RIF_UART_TX0_out),
    .OEN(RIF_UART_TX0_oe),
    .PS(RIF_UART_TX0_ps),
    .SL(RIF_UART_TX0_sl),
    .ST0(RIF_UART_TX0_s0),
    .ST1(RIF_UART_TX0_s1),
    .HE(1'b0),
    .DS0(RIF_UART_TX0_d0),
    .DS1(RIF_UART_TX0_d1),
    .PAD(RIF_UART_TX0),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(RIF_UART_TX0_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_130_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_131_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_132_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_133_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1ANAE_H_G
    VSSA_CML_134_inst
   (
    .AVSS(VSSA_CML),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1ANAE_H_G
    VSSA_CML_135_inst
   (
    .AVSS(VSSA_CML),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1ANAE_H_G
    VSSA_CML_136_inst
   (
    .AVSS(VSSA_CML),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_137_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_138_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_139_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1ANAE_H_G
    VDDA_CML_140_inst
   (
    .AVDD(VDDA_CML),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1ANAE_H_G
    VDDA_CML_141_inst
   (
    .AVDD(VDDA_CML),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1ANAE_H_G
    VDDA_CML_142_inst
   (
    .AVDD(VDDA_CML),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_143_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_144_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_145_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_146_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPIO33_717_inst
   (
    .PE(GPIO33_pe),
    .IE(1'b1),
    .I(GPIO33_out),
    .OEN(GPIO33_oe),
    .PS(GPIO33_ps),
    .SL(GPIO33_sl),
    .ST0(GPIO33_s0),
    .ST1(GPIO33_s1),
    .HE(1'b0),
    .DS0(GPIO33_d0),
    .DS1(GPIO33_d1),
    .PAD(GPIO33),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(GPIO33_in)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPIO8_127_inst
   (
    .PE(GPIO8_pe),
    .IE(1'b1),
    .I(GPIO8_out),
    .OEN(GPIO8_oe),
    .PS(GPIO8_ps),
    .SL(GPIO8_sl),
    .ST0(GPIO8_s0),
    .ST1(GPIO8_s1),
    .HE(1'b0),
    .DS0(GPIO8_d0),
    .DS1(GPIO8_d1),
    .PAD(GPIO8),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(GPIO8_in)
   ); 


   
   PVDD2POCE_H_G
    VDDPST18_1_149_inst
   (
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .POC(POC_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_150_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_151_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_152_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPIO9_128_inst
   (
    .PE(GPIO9_pe),
    .IE(1'b1),
    .I(GPIO9_out),
    .OEN(GPIO9_oe),
    .PS(GPIO9_ps),
    .SL(GPIO9_sl),
    .ST0(GPIO9_s0),
    .ST1(GPIO9_s1),
    .HE(1'b0),
    .DS0(GPIO9_d0),
    .DS1(GPIO9_d1),
    .PAD(GPIO9),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(GPIO9_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_154_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_155_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_156_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_157_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_158_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPIO24_714_inst
   (
    .PE(GPIO24_pe),
    .IE(1'b1),
    .I(GPIO24_out),
    .OEN(GPIO24_oe),
    .PS(GPIO24_ps),
    .SL(GPIO24_sl),
    .ST0(GPIO24_s0),
    .ST1(GPIO24_s1),
    .HE(1'b0),
    .DS0(GPIO24_d0),
    .DS1(GPIO24_d1),
    .PAD(GPIO24),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(GPIO24_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_160_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_161_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_162_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_163_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_164_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPIO25_715_inst
   (
    .PE(GPIO25_pe),
    .IE(1'b1),
    .I(GPIO25_out),
    .OEN(GPIO25_oe),
    .PS(GPIO25_ps),
    .SL(GPIO25_sl),
    .ST0(GPIO25_s0),
    .ST1(GPIO25_s1),
    .HE(1'b0),
    .DS0(GPIO25_d0),
    .DS1(GPIO25_d1),
    .PAD(GPIO25),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(GPIO25_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_166_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_167_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_168_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_169_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_170_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPIO12_139_inst
   (
    .PE(GPIO12_pe),
    .IE(1'b1),
    .I(GPIO12_out),
    .OEN(GPIO12_oe),
    .PS(GPIO12_ps),
    .SL(GPIO12_sl),
    .ST0(GPIO12_s0),
    .ST1(GPIO12_s1),
    .HE(1'b0),
    .DS0(GPIO12_d0),
    .DS1(GPIO12_d1),
    .PAD(GPIO12),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(GPIO12_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_172_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_173_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_174_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_175_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_176_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPIO13_140_inst
   (
    .PE(GPIO13_pe),
    .IE(1'b1),
    .I(GPIO13_out),
    .OEN(GPIO13_oe),
    .PS(GPIO13_ps),
    .SL(GPIO13_sl),
    .ST0(GPIO13_s0),
    .ST1(GPIO13_s1),
    .HE(1'b0),
    .DS0(GPIO13_d0),
    .DS1(GPIO13_d1),
    .PAD(GPIO13),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(GPIO13_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_178_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_179_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_180_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_181_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_182_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPO8_481_inst
   (
    .PE(GPO8_pe),
    .IE(1'b1),
    .I(GPO8_out),
    .OEN(GPO8_oe),
    .PS(GPO8_ps),
    .SL(GPO8_sl),
    .ST0(GPO8_s0),
    .ST1(GPO8_s1),
    .HE(1'b0),
    .DS0(GPO8_d0),
    .DS1(GPO8_d1),
    .PAD(GPO8),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(GPO8_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_184_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_185_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_186_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_187_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_188_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    I2S4_RX_WCLK_158_inst
   (
    .PE(I2S4_RX_WCLK_pe),
    .IE(1'b1),
    .I(I2S4_RX_WCLK_out),
    .OEN(I2S4_RX_WCLK_oe),
    .PS(I2S4_RX_WCLK_ps),
    .SL(I2S4_RX_WCLK_sl),
    .ST0(I2S4_RX_WCLK_s0),
    .ST1(I2S4_RX_WCLK_s1),
    .HE(1'b0),
    .DS0(I2S4_RX_WCLK_d0),
    .DS1(I2S4_RX_WCLK_d1),
    .PAD(I2S4_RX_WCLK),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(I2S4_RX_WCLK_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_190_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_191_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PCLAMPEC_H_G
    PCLAMP_VDD_2
   (
    .VDDESD(VDD),
    .VSSESD(VSS)
   ); 


   
   PVDD1CDE_H_G
    VDD_193_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_194_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_195_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    I2S4_RX_BCLK_163_inst
   (
    .PE(I2S4_RX_BCLK_pe),
    .IE(1'b1),
    .I(I2S4_RX_BCLK_out),
    .OEN(I2S4_RX_BCLK_oe),
    .PS(I2S4_RX_BCLK_ps),
    .SL(I2S4_RX_BCLK_sl),
    .ST0(I2S4_RX_BCLK_s0),
    .ST1(I2S4_RX_BCLK_s1),
    .HE(1'b0),
    .DS0(I2S4_RX_BCLK_d0),
    .DS1(I2S4_RX_BCLK_d1),
    .PAD(I2S4_RX_BCLK),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(I2S4_RX_BCLK_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_197_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_198_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_199_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_200_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_201_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2ANAE_H_G
    VM_AN_VM5_144_inst
   (
    .AVDD(VM_AN_VM5),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_203_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    I2S4_RX_D0_157_inst
   (
    .PE(I2S4_RX_D0_pe),
    .IE(1'b1),
    .I(I2S4_RX_D0_out),
    .OEN(I2S4_RX_D0_oe),
    .PS(I2S4_RX_D0_ps),
    .SL(I2S4_RX_D0_sl),
    .ST0(I2S4_RX_D0_s0),
    .ST1(I2S4_RX_D0_s1),
    .HE(1'b0),
    .DS0(I2S4_RX_D0_d0),
    .DS1(I2S4_RX_D0_d1),
    .PAD(I2S4_RX_D0),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(I2S4_RX_D0_in)
   ); 


   
   PVSS1CDE_H_G
    VSS_205_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_206_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_207_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    I2S4_TX_WCLK_169_inst
   (
    .PE(I2S4_TX_WCLK_pe),
    .IE(1'b1),
    .I(I2S4_TX_WCLK_out),
    .OEN(I2S4_TX_WCLK_oe),
    .PS(I2S4_TX_WCLK_ps),
    .SL(I2S4_TX_WCLK_sl),
    .ST0(I2S4_TX_WCLK_s0),
    .ST1(I2S4_TX_WCLK_s1),
    .HE(1'b0),
    .DS0(I2S4_TX_WCLK_d0),
    .DS1(I2S4_TX_WCLK_d1),
    .PAD(I2S4_TX_WCLK),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(I2S4_TX_WCLK_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_209_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_210_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_211_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_212_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_213_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    I2S4_TX_D0_164_inst
   (
    .PE(I2S4_TX_D0_pe),
    .IE(1'b1),
    .I(I2S4_TX_D0_out),
    .OEN(I2S4_TX_D0_oe),
    .PS(I2S4_TX_D0_ps),
    .SL(I2S4_TX_D0_sl),
    .ST0(I2S4_TX_D0_s0),
    .ST1(I2S4_TX_D0_s1),
    .HE(1'b0),
    .DS0(I2S4_TX_D0_d0),
    .DS1(I2S4_TX_D0_d1),
    .PAD(I2S4_TX_D0),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(I2S4_TX_D0_in)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    I2S4_TX_BCLK_170_inst
   (
    .PE(I2S4_TX_BCLK_pe),
    .IE(1'b1),
    .I(I2S4_TX_BCLK_out),
    .OEN(I2S4_TX_BCLK_oe),
    .PS(I2S4_TX_BCLK_ps),
    .SL(I2S4_TX_BCLK_sl),
    .ST0(I2S4_TX_BCLK_s0),
    .ST1(I2S4_TX_BCLK_s1),
    .HE(1'b0),
    .DS0(I2S4_TX_BCLK_d0),
    .DS1(I2S4_TX_BCLK_d1),
    .PAD(I2S4_TX_BCLK),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C(I2S4_TX_BCLK_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_216_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_217_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PCLAMPE_G
    PCLAMP_VDDPST18_1
   (
    .VDDESD(VDDPST18_1),
    .VSSESD(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_219_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_220_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    TESTBUS_CLK_457_inst
   (
    .PE(1'b0),
    .IE(1'b0),
    .I(TESTBUS_CLK_out),
    .OEN(TESTBUS_CLK_oe),
    .PS(1'b0),
    .SL(1'b0),
    .ST0(1'b0),
    .ST1(1'b0),
    .HE(1'b0),
    .DS0(1'b0),
    .DS1(1'b0),
    .PAD(TESTBUS_CLK),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1),
    .C()
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_222_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_223_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_224_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_225_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_226_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_227_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_H_G
    VDD_228_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_H_G
    VSS_229_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_230_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_1_231_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_1_232_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_1_234_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1ANAE_V_G
    VDDA_CML_235_inst
   (
    .AVDD(VDDA_CML),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1ANAE_V_G
    VDDA_CML_236_inst
   (
    .AVDD(VDDA_CML),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1ANAE_V_G
    VDDA_CML_237_inst
   (
    .AVDD(VDDA_CML),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1ANAE_V_G
    VSSA_CML_238_inst
   (
    .AVSS(VSSA_CML),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1ANAE_V_G
    VSSA_CML_239_inst
   (
    .AVSS(VSSA_CML),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1ANAE_V_G
    VSSA_CML_240_inst
   (
    .AVSS(VSSA_CML),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_1_241_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1ANAE_V_G
    PLL_I2S_1_VDDA_242_inst
   (
    .AVDD(PLL_I2S_1_VDDA),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1ANAE_V_G
    PLL_I2S_1_VDDA_243_inst
   (
    .AVDD(PLL_I2S_1_VDDA),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1ANAE_V_G
    PLL_I2S_1_VSSA_244_inst
   (
    .AVSS(PLL_I2S_1_VSSA),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PCLAMPEC_H_G
    PCLAMP_PLL_I2S_1_VDDA
   (
    .VDDESD(PLL_I2S_1_VDDA),
    .VSSESD(PLL_I2S_1_VSSA)
   ); 


   
   PVSS1ANAE_V_G
    PLL_I2S_1_VSSA_246_inst
   (
    .AVSS(PLL_I2S_1_VSSA),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_V_G
    VDD_247_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_V_G
    VSS_248_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2ANAE_V_G
    PLL_I2S_1_VSSA18_249_inst
   (
    .AVSS(PLL_I2S_1_VSSA18),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2ANAE_V_G
    PLL_I2S_1_VSSA18_250_inst
   (
    .AVSS(PLL_I2S_1_VSSA18),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PCLAMPE_G
    PCLAMP_PLL_I2S_1_VDDA18
   (
    .VDDESD(PLL_I2S_1_VDDA18),
    .VSSESD(PLL_I2S_1_VSSA18)
   ); 


   
   PVDD2ANAE_V_G
    PLL_I2S_1_VDDA18_252_inst
   (
    .AVDD(PLL_I2S_1_VDDA18),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_1_253_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2ANAE_V_G
    PLL_I2S_1_VDDA18_254_inst
   (
    .AVDD(PLL_I2S_1_VDDA18),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_1_255_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1ANAE_V_G
    PLL_I2S_2_VDDA_256_inst
   (
    .AVDD(PLL_I2S_2_VDDA),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1ANAE_V_G
    PLL_I2S_2_VDDA_257_inst
   (
    .AVDD(PLL_I2S_2_VDDA),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1ANAE_V_G
    PLL_I2S_2_VSSA_258_inst
   (
    .AVSS(PLL_I2S_2_VSSA),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PCLAMPEC_H_G
    PCLAMP_PLL_I2S_2_VDDA
   (
    .VDDESD(PLL_I2S_2_VDDA),
    .VSSESD(PLL_I2S_2_VSSA)
   ); 


   
   PVSS1ANAE_V_G
    PLL_I2S_2_VSSA_260_inst
   (
    .AVSS(PLL_I2S_2_VSSA),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD1CDE_V_G
    VDD_261_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_V_G
    VSS_262_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2ANAE_V_G
    PLL_I2S_2_VSSA18_263_inst
   (
    .AVSS(PLL_I2S_2_VSSA18),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2ANAE_V_G
    PLL_I2S_2_VSSA18_264_inst
   (
    .AVSS(PLL_I2S_2_VSSA18),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PCLAMPE_G
    PCLAMP_PLL_I2S_2_VDDA18
   (
    .VDDESD(PLL_I2S_2_VDDA18),
    .VSSESD(PLL_I2S_2_VSSA18)
   ); 


   
   PVDD2ANAE_V_G
    PLL_I2S_2_VDDA18_266_inst
   (
    .AVDD(PLL_I2S_2_VDDA18),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_1_267_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVDD2ANAE_V_G
    PLL_I2S_2_VDDA18_268_inst
   (
    .AVDD(PLL_I2S_2_VDDA18),
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_1_269_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_V_G
    VSS_270_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS3CDE_V_G
    VSS_279_inst
   (
    .POC(POC_2),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_1)
   ); 


   
   PVDD1CDE_V_G
    VDD_280_inst
   (
    .POC(POC_2),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_1),
    .VSSPST(VSS)
   ); 


   
   PVDD2POCE_V_G
    VDDA18_1_281_inst
   (
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_1),
    .VSSPST(VSS),
    .POC(POC_2)
   ); 


   
   PVSS3CDE_V_G
    VSS_282_inst
   (
    .POC(POC_2),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_1)
   ); 


   
   PVDD2CDE_V_G
    VDDA18_1_283_inst
   (
    .POC(POC_2),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_1),
    .VSSPST(VSS)
   ); 


   
   PVSS3CDE_V_G
    VSS_284_inst
   (
    .POC(POC_2),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_1)
   ); 


   
   PVSS3CDE_V_G
    VSS_312_inst
   (
    .POC(POC_3),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_2)
   ); 


   
   PVDD1CDE_V_G
    VDD_313_inst
   (
    .POC(POC_3),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_2),
    .VSSPST(VSS)
   ); 


   
   PVDD2POCE_V_G
    VDDA18_2_314_inst
   (
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_2),
    .VSSPST(VSS),
    .POC(POC_3)
   ); 


   
   PVSS3CDE_V_G
    VSS_315_inst
   (
    .POC(POC_3),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_2)
   ); 


   
   PVDD1CDE_V_G
    VDD_316_inst
   (
    .POC(POC_3),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_2),
    .VSSPST(VSS)
   ); 


   
   PVDD2CDE_V_G
    VDDA18_2_317_inst
   (
    .POC(POC_3),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_2),
    .VSSPST(VSS)
   ); 


   
   PVSS3CDE_V_G
    VSS_318_inst
   (
    .POC(POC_3),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_2)
   ); 


   
   PVDD1CDE_V_G
    VDD_319_inst
   (
    .POC(POC_3),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_2),
    .VSSPST(VSS)
   ); 


   
   PVDD2CDE_V_G
    VDDA18_2_320_inst
   (
    .POC(POC_3),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_2),
    .VSSPST(VSS)
   ); 


   
   PVSS3CDE_V_G
    VSS_321_inst
   (
    .POC(POC_3),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_2)
   ); 


   
   PVDD1CDE_V_G
    VDD_322_inst
   (
    .POC(POC_3),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_2),
    .VSSPST(VSS)
   ); 


   
   PVDD2CDE_V_G
    VDDA18_2_323_inst
   (
    .POC(POC_3),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_2),
    .VSSPST(VSS)
   ); 


   
   PCLAMPEC_V_G
    PCLAMP_VDD_3
   (
    .VDDESD(VDD),
    .VSSESD(VSS)
   ); 


   
   PVSS3CDE_V_G
    VSS_288_inst
   (
    .POC(POC_3),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_350_inst
   (
    .POC(POC_4),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_3),
    .VSSPST(VSSA18_3)
   ); 


   
   PVDD1CDE_V_G
    VDD_351_inst
   (
    .POC(POC_4),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_3),
    .VSSPST(VSSA18_3)
   ); 


   
   PVSS2CDE_V_G
    VSSA18_3_352_inst
   (
    .POC(POC_4),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_3),
    .VSSPST(VSSA18_3)
   ); 


   
   PVDD2POCE_V_G
    VDDA18_3_353_inst
   (
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_3),
    .VSSPST(VSSA18_3),
    .POC(POC_4)
   ); 


   
   PVSS1CDE_V_G
    VSS_354_inst
   (
    .POC(POC_4),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_3),
    .VSSPST(VSSA18_3)
   ); 


   
   PVDD1CDE_V_G
    VDD_355_inst
   (
    .POC(POC_4),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_3),
    .VSSPST(VSSA18_3)
   ); 


   
   PVSS2CDE_V_G
    VSSA18_3_356_inst
   (
    .POC(POC_4),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_3),
    .VSSPST(VSSA18_3)
   ); 


   
   PRWDWUWHWSWDGE_V_G
    HDI_RDY_OUT_320_inst
   (
    .PE(HDI_RDY_OUT_pe),
    .IE(1'b1),
    .I(HDI_RDY_OUT_out),
    .OEN(HDI_RDY_OUT_oe),
    .PS(HDI_RDY_OUT_ps),
    .SL(HDI_RDY_OUT_sl),
    .ST0(HDI_RDY_OUT_s0),
    .ST1(HDI_RDY_OUT_s1),
    .HE(1'b0),
    .DS0(HDI_RDY_OUT_d0),
    .DS1(HDI_RDY_OUT_d1),
    .PAD(HDI_RDY_OUT),
    .POC(POC_4),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_3),
    .VSSPST(VSSA18_3),
    .C(HDI_RDY_OUT_in)
   ); 


   
   PRWDWUWHWSWDGE_V_G
    HDI_RDY_IN_321_inst
   (
    .PE(HDI_RDY_IN_pe),
    .IE(1'b1),
    .I(HDI_RDY_IN_out),
    .OEN(HDI_RDY_IN_oe),
    .PS(HDI_RDY_IN_ps),
    .SL(HDI_RDY_IN_sl),
    .ST0(HDI_RDY_IN_s0),
    .ST1(HDI_RDY_IN_s1),
    .HE(1'b0),
    .DS0(HDI_RDY_IN_d0),
    .DS1(HDI_RDY_IN_d1),
    .PAD(HDI_RDY_IN),
    .POC(POC_4),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_3),
    .VSSPST(VSSA18_3),
    .C(HDI_RDY_IN_in)
   ); 


   
   PVDD2CDE_V_G
    VDDA18_3_359_inst
   (
    .POC(POC_4),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_3),
    .VSSPST(VSSA18_3)
   ); 


   
   PCLAMPEC_V_G
    PCLAMP_VDD_4
   (
    .VDDESD(VDD),
    .VSSESD(VSS)
   ); 


   
   PVDD1CDE_V_G
    VDD_361_inst
   (
    .POC(POC_4),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_3),
    .VSSPST(VSSA18_3)
   ); 


   
   PVSS1CDE_V_G
    VSS_362_inst
   (
    .POC(POC_4),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_3),
    .VSSPST(VSSA18_3)
   ); 


   
   PENDCAPE_G
    PENDCAP_VDDA18_3_end_363_inst
   (
    .POC(POC_4),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDA18_3),
    .VSSPST(VSSA18_3)
   ); 


   
   PENDCAPE_G
    PENDCAP_VDDA18_4_start_386_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS1CDE_V_G
    VSSA_387_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS2CDE_V_G
    VSSA18_4_388_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVDD2POCE_V_G
    VDDA18_4_389_inst
   (
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4),
    .POC(POC_5)
   ); 


   
   PVDD1CDE_V_G
    VDDA_390_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS1CDE_V_G
    VSSA_391_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS1CDE_V_G
    VSSA_392_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVDD2CDE_V_G
    VDDA18_4_393_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS2CDE_V_G
    VSSA18_4_394_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS2CDE_H_G
    VSSA18_4_396_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVDD2CDE_H_G
    VDDA18_4_397_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVDD1CDE_H_G
    VDDA_398_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS1CDE_H_G
    VSSA_399_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS2CDE_H_G
    VSSA18_4_400_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVDD2CDE_H_G
    VDDA18_4_401_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PCLAMPEC_H_G
    PCLAMP_VDDA_1
   (
    .VDDESD(VDDA),
    .VSSESD(VSSA)
   ); 


   
   PVDD1CDE_H_G
    VDDA_403_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS1CDE_H_G
    VSSA_404_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS2CDE_H_G
    VSSA18_4_405_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVDD2CDE_H_G
    VDDA18_4_406_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVDD1CDE_H_G
    VDDA_407_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS1CDE_H_G
    VSSA_408_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS2CDE_H_G
    VSSA18_4_409_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVDD2CDE_H_G
    VDDA18_4_410_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVDD1CDE_H_G
    VDDA_411_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS2CDE_H_G
    VSSA18_4_412_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVDD2CDE_H_G
    VDDA18_4_415_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVDD1CDE_H_G
    VDDA_416_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS2CDE_H_G
    VSSA18_4_417_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVDD2CDE_H_G
    VDDA18_4_418_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS1ANAE_H_G
    VSSA_CML_419_inst
   (
    .AVSS(VSSA_CML),
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS1ANAE_H_G
    VSSA_CML_420_inst
   (
    .AVSS(VSSA_CML),
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS1ANAE_H_G
    VSSA_CML_421_inst
   (
    .AVSS(VSSA_CML),
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVDD2CDE_H_G
    VDDA18_4_422_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PCLAMPEC_H_G
    PCLAMP_VDDA_CML_2
   (
    .VDDESD(VDDA_CML),
    .VSSESD(VSSA_CML)
   ); 


   
   PVSS2CDE_H_G
    VSSA18_4_424_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS1CDE_H_G
    VSSA_425_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVDD1ANAE_H_G
    VDDA_CML_426_inst
   (
    .AVDD(VDDA_CML),
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVDD1ANAE_H_G
    VDDA_CML_427_inst
   (
    .AVDD(VDDA_CML),
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVDD1ANAE_H_G
    VDDA_CML_428_inst
   (
    .AVDD(VDDA_CML),
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVDD2CDE_H_G
    VDDA18_4_429_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PVSS2CDE_H_G
    VSSA18_4_430_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PCLAMPE_G
    PCLAMP_VDDA18_3
   (
    .VDDESD(VDDA18_4),
    .VSSESD(VSSA18_4)
   ); 


   

   PVDD1CDE_H_G
    VDDA_432_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   

   PVSS1CDE_H_G
    VSSA_433_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   

   PVSS2CDE_H_G
    VSSA18_4_434_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   

   PVSS1CDE_H_G
    VSSA_435_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PENDCAPE_G
    PENDCAP_VDDA18_4_stop_436_inst
   (
    .POC(POC_5),
    .VDD(VDDA),
    .VSS(VSSA),
    .VDDPST(VDDA18_4),
    .VSSPST(VSSA18_4)
   ); 


   
   PENDCAPE_G
    PENDCAP_VDDPST18_2_start_400_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_438_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_439_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_440_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_441_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_442_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PCLAMPEC_H_G
    PCLAMP_VDD_5
   (
    .VDDESD(VDD),
    .VSSESD(VSS)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_444_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_445_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_446_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_447_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_448_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_449_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_450_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_451_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_452_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPIO10_133_inst
   (
    .PE(GPIO10_pe),
    .IE(1'b1),
    .I(GPIO10_out),
    .OEN(GPIO10_oe),
    .PS(GPIO10_ps),
    .SL(GPIO10_sl),
    .ST0(GPIO10_s0),
    .ST1(GPIO10_s1),
    .HE(1'b0),
    .DS0(GPIO10_d0),
    .DS1(GPIO10_d1),
    .PAD(GPIO10),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO10_in)
   ); 


   
   PVSS1CDE_H_G
    VSS_454_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_455_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_456_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_457_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_458_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPIO11_134_inst
   (
    .PE(GPIO11_pe),
    .IE(1'b1),
    .I(GPIO11_out),
    .OEN(GPIO11_oe),
    .PS(GPIO11_ps),
    .SL(GPIO11_sl),
    .ST0(GPIO11_s0),
    .ST1(GPIO11_s1),
    .HE(1'b0),
    .DS0(GPIO11_d0),
    .DS1(GPIO11_d1),
    .PAD(GPIO11),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO11_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_460_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_461_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_462_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_463_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    PCIE_PERST_421_inst
   (
    .PE(PCIE_PERST_pe),
    .IE(1'b1),
    .I(PCIE_PERST_out),
    .OEN(PCIE_PERST_oe),
    .PS(PCIE_PERST_ps),
    .SL(PCIE_PERST_sl),
    .ST0(PCIE_PERST_s0),
    .ST1(PCIE_PERST_s1),
    .HE(1'b0),
    .DS0(PCIE_PERST_d0),
    .DS1(PCIE_PERST_d1),
    .PAD(PCIE_PERST),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(PCIE_PERST_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_465_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_466_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_467_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_468_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_469_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    PCIE_WAKE_425_inst
   (
    .PE(GPIO2_pe),
    .IE(1'b1),
    .I(GPIO2_out),
    .OEN(GPIO2_oe),
    .PS(GPIO2_ps),
    .SL(GPIO2_sl),
    .ST0(GPIO2_s0),
    .ST1(GPIO2_s1),
    .HE(1'b0),
    .DS0(GPIO2_d0),
    .DS1(GPIO2_d1),
    .PAD(PCIE_WAKE),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO2_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_471_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_472_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_473_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_474_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_475_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    PCIE_PRSNT2_426_inst
   (
    .PE(GPIO3_pe),
    .IE(1'b1),
    .I(GPIO3_out),
    .OEN(GPIO3_oe),
    .PS(GPIO3_ps),
    .SL(GPIO3_sl),
    .ST0(GPIO3_s0),
    .ST1(GPIO3_s1),
    .HE(1'b0),
    .DS0(GPIO3_d0),
    .DS1(GPIO3_d1),
    .PAD(PCIE_PRSNT2),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO3_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_477_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_478_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_479_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_480_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_481_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPIO0_431_inst
   (
    .PE(GPIO0_pe),
    .IE(1'b1),
    .I(GPIO0_out),
    .OEN(GPIO0_oe),
    .PS(GPIO0_ps),
    .SL(GPIO0_sl),
    .ST0(GPIO0_s0),
    .ST1(GPIO0_s1),
    .HE(1'b0),
    .DS0(GPIO0_d0),
    .DS1(GPIO0_d1),
    .PAD(GPIO0),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO0_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_483_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_484_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_485_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_486_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_487_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPIO1_432_inst
   (
    .PE(GPIO1_pe),
    .IE(1'b1),
    .I(GPIO1_out),
    .OEN(GPIO1_oe),
    .PS(GPIO1_ps),
    .SL(GPIO1_sl),
    .ST0(GPIO1_s0),
    .ST1(GPIO1_s1),
    .HE(1'b0),
    .DS0(GPIO1_d0),
    .DS1(GPIO1_d1),
    .PAD(GPIO1),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO1_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_489_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_490_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_491_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_492_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_493_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPO14_712_inst
   (
    .PE(GPIO14_pe),
    .IE(1'b1),
    .I(GPIO14_out),
    .OEN(GPIO14_oe),
    .PS(GPIO14_ps),
    .SL(GPIO14_sl),
    .ST0(GPIO14_s0),
    .ST1(GPIO14_s1),
    .HE(1'b0),
    .DS0(GPIO14_d0),
    .DS1(GPIO14_d1),
    .PAD(GPIO14),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO14_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_495_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_496_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_497_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_498_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_499_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPIO15_437_inst
   (
    .PE(GPIO15_pe),
    .IE(1'b1),
    .I(GPIO15_out),
    .OEN(GPIO15_oe),
    .PS(GPIO15_ps),
    .SL(GPIO15_sl),
    .ST0(GPIO15_s0),
    .ST1(GPIO15_s1),
    .HE(1'b0),
    .DS0(GPIO15_d0),
    .DS1(GPIO15_d1),
    .PAD(GPIO15),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO15_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_501_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_502_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_503_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_504_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_505_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPIO16_438_inst
   (
    .PE(GPIO16_pe),
    .IE(1'b1),
    .I(GPIO16_out),
    .OEN(GPIO16_oe),
    .PS(GPIO16_ps),
    .SL(GPIO16_sl),
    .ST0(GPIO16_s0),
    .ST1(GPIO16_s1),
    .HE(1'b0),
    .DS0(GPIO16_d0),
    .DS1(GPIO16_d1),
    .PAD(GPIO16),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO16_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_507_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_508_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_509_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_510_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_511_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPO17_713_inst
   (
    .PE(GPIO17_pe),
    .IE(1'b1),
    .I(GPIO17_out),
    .OEN(GPIO17_oe),
    .PS(GPIO17_ps),
    .SL(GPIO17_sl),
    .ST0(GPIO17_s0),
    .ST1(GPIO17_s1),
    .HE(1'b0),
    .DS0(GPIO17_d0),
    .DS1(GPIO17_d1),
    .PAD(GPIO17),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO17_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_513_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_514_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_515_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_516_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_517_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPO3_445_inst
   (
    .PE(GPO3_pe),
    .IE(1'b1),
    .I(GPO3_out),
    .OEN(GPO3_oe),
    .PS(GPO3_ps),
    .SL(GPO3_sl),
    .ST0(GPO3_s0),
    .ST1(GPO3_s1),
    .HE(1'b0),
    .DS0(GPO3_d0),
    .DS1(GPO3_d1),
    .PAD(GPO3),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPO3_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_519_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_520_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_521_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_522_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_523_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPO2_451_inst
   (
    .PE(GPO2_pe),
    .IE(1'b1),
    .I(GPO2_out),
    .OEN(GPO2_oe),
    .PS(GPO2_ps),
    .SL(GPO2_sl),
    .ST0(GPO2_s0),
    .ST1(GPO2_s1),
    .HE(1'b0),
    .DS0(GPO2_d0),
    .DS1(GPO2_d1),
    .PAD(GPO2),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPO2_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_525_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_526_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_527_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_528_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_529_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPO4_463_inst
   (
    .PE(GPO4_pe),
    .IE(1'b1),
    .I(GPO4_out),
    .OEN(GPO4_oe),
    .PS(GPO4_ps),
    .SL(GPO4_sl),
    .ST0(GPO4_s0),
    .ST1(GPO4_s1),
    .HE(1'b0),
    .DS0(GPO4_d0),
    .DS1(GPO4_d1),
    .PAD(GPO4),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPO4_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_531_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_532_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_533_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_534_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_535_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPO5_469_inst
   (
    .PE(GPO5_pe),
    .IE(1'b1),
    .I(GPO5_out),
    .OEN(GPO5_oe),
    .PS(GPO5_ps),
    .SL(GPO5_sl),
    .ST0(GPO5_s0),
    .ST1(GPO5_s1),
    .HE(1'b0),
    .DS0(GPO5_d0),
    .DS1(GPO5_d1),
    .PAD(GPO5),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPO5_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_537_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_538_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_539_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_540_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_541_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPO6_475_inst
   (
    .PE(GPO6_pe),
    .IE(1'b1),
    .I(GPO6_out),
    .OEN(GPO6_oe),
    .PS(GPO6_ps),
    .SL(GPO6_sl),
    .ST0(GPO6_s0),
    .ST1(GPO6_s1),
    .HE(1'b0),
    .DS0(GPO6_d0),
    .DS1(GPO6_d1),
    .PAD(GPO6),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPO6_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_543_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_544_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_545_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_546_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_547_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPO0_599_inst
   (
    .PE(GPO0_pe),
    .IE(1'b1),
    .I(GPO0_out),
    .OEN(GPO0_oe),
    .PS(GPO0_ps),
    .SL(GPO0_sl),
    .ST0(GPO0_s0),
    .ST1(GPO0_s1),
    .HE(1'b0),
    .DS0(GPO0_d0),
    .DS1(GPO0_d1),
    .PAD(GPO0),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPO0_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_549_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_550_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_551_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_552_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_553_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPO1_605_inst
   (
    .PE(GPO1_pe),
    .IE(1'b1),
    .I(GPO1_out),
    .OEN(GPO1_oe),
    .PS(GPO1_ps),
    .SL(GPO1_sl),
    .ST0(GPO1_s0),
    .ST1(GPO1_s1),
    .HE(1'b0),
    .DS0(GPO1_d0),
    .DS1(GPO1_d1),
    .PAD(GPO1),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPO1_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_555_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_556_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_557_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_558_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_559_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    QSPI_D3_497_inst
   (
    .PE(QSPI_D3_pe),
    .IE(1'b1),
    .I(QSPI_D3_out),
    .OEN(QSPI_D3_oe),
    .PS(QSPI_D3_ps),
    .SL(QSPI_D3_sl),
    .ST0(QSPI_D3_s0),
    .ST1(QSPI_D3_s1),
    .HE(1'b0),
    .DS0(QSPI_D3_d0),
    .DS1(QSPI_D3_d1),
    .PAD(QSPI_D3),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(QSPI_D3_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_561_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_562_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_563_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_564_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_565_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    QSPI_CLK_498_inst
   (
    .PE(QSPI_CLK_pe),
    .IE(1'b1),
    .I(QSPI_CLK_out),
    .OEN(QSPI_CLK_oe),
    .PS(QSPI_CLK_ps),
    .SL(QSPI_CLK_sl),
    .ST0(QSPI_CLK_s0),
    .ST1(QSPI_CLK_s1),
    .HE(1'b0),
    .DS0(QSPI_CLK_d0),
    .DS1(QSPI_CLK_d1),
    .PAD(QSPI_CLK),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(QSPI_CLK_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_567_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_568_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_569_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_570_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_571_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    QSPI_D1_503_inst
   (
    .PE(QSPI_D1_pe),
    .IE(1'b1),
    .I(QSPI_D1_out),
    .OEN(QSPI_D1_oe),
    .PS(QSPI_D1_ps),
    .SL(QSPI_D1_sl),
    .ST0(QSPI_D1_s0),
    .ST1(QSPI_D1_s1),
    .HE(1'b0),
    .DS0(QSPI_D1_d0),
    .DS1(QSPI_D1_d1),
    .PAD(QSPI_D1),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(QSPI_D1_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_573_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_574_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_575_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_576_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_577_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    QSPI_D2_504_inst
   (
    .PE(QSPI_D2_pe),
    .IE(1'b1),
    .I(QSPI_D2_out),
    .OEN(QSPI_D2_oe),
    .PS(QSPI_D2_ps),
    .SL(QSPI_D2_sl),
    .ST0(QSPI_D2_s0),
    .ST1(QSPI_D2_s1),
    .HE(1'b0),
    .DS0(QSPI_D2_d0),
    .DS1(QSPI_D2_d1),
    .PAD(QSPI_D2),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(QSPI_D2_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_579_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_580_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_581_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_582_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_583_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    QSPI_CSN_509_inst
   (
    .PE(QSPI_CSN_pe),
    .IE(1'b0),
    .I(QSPI_CSN_out),
    .OEN(QSPI_CSN_oe),
    .PS(QSPI_CSN_ps),
    .SL(QSPI_CSN_sl),
    .ST0(QSPI_CSN_s0),
    .ST1(QSPI_CSN_s1),
    .HE(1'b0),
    .DS0(QSPI_CSN_d0),
    .DS1(QSPI_CSN_d1),
    .PAD(QSPI_CSN),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C()
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_585_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_586_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_587_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_588_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_589_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    QSPI_D0_510_inst
   (
    .PE(QSPI_D0_pe),
    .IE(1'b1),
    .I(QSPI_D0_out),
    .OEN(QSPI_D0_oe),
    .PS(QSPI_D0_ps),
    .SL(QSPI_D0_sl),
    .ST0(QSPI_D0_s0),
    .ST1(QSPI_D0_s1),
    .HE(1'b0),
    .DS0(QSPI_D0_d0),
    .DS1(QSPI_D0_d1),
    .PAD(QSPI_D0),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(QSPI_D0_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_591_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_592_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_593_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_594_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_595_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    EFUSE_PGENB_517_inst
   (
    .PE(EFUSE_PGENB_pe),
    .IE(1'b1),
    .I(1'b0),
    .OEN(1'b1),
    .PS(EFUSE_PGENB_ps),
    .SL(EFUSE_PGENB_sl),
    .ST0(EFUSE_PGENB_s0),
    .ST1(EFUSE_PGENB_s1),
    .HE(1'b0),
    .DS0(EFUSE_PGENB_d0),
    .DS1(EFUSE_PGENB_d1),
    .PAD(EFUSE_PGENB),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(EFUSE_PGENB_in)
   ); 


   
   PVDD2POCE_H_G
    VDDPST18_2_597_inst
   (
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .POC(POC_6)
   ); 


   
   PVSS1CDE_H_G
    VSS_598_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_599_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_600_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_601_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    EFUSE_PS_523_inst
   (
    .PE(EFUSE_PS_pe),
    .IE(1'b1),
    .I(1'b0),
    .OEN(1'b1),
    .PS(EFUSE_PS_ps),
    .SL(EFUSE_PS_sl),
    .ST0(EFUSE_PS_s0),
    .ST1(EFUSE_PS_s1),
    .HE(1'b0),
    .DS0(EFUSE_PS_d0),
    .DS1(EFUSE_PS_d1),
    .PAD(EFUSE_PS),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(EFUSE_PS_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_603_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_604_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_605_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_606_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_607_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_H_G
    GPIO7_593_inst
   (
    .PE(GPIO7_pe),
    .IE(1'b1),
    .I(GPIO7_out),
    .OEN(GPIO7_oe),
    .PS(GPIO7_ps),
    .SL(GPIO7_sl),
    .ST0(GPIO7_s0),
    .ST1(GPIO7_s1),
    .HE(1'b0),
    .DS0(GPIO7_d0),
    .DS1(GPIO7_d1),
    .PAD(GPIO7),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO7_in)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_609_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_610_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_611_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PCLAMPEC_H_G
    PCLAMP_VDD_6
   (
    .VDDESD(VDD),
    .VSSESD(VSS)
   ); 


   
   PVSS1CDE_H_G
    VSS_613_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_614_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_615_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_616_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_617_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_618_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_619_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_620_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_621_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_622_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_623_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_H_G
    VDD_624_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_H_G
    VSS_625_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD2CDE_H_G
    VDDPST18_2_626_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_H_G
    VSSPST18_2_627_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_2_629_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_2_630_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_V_G
    VDD_631_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_632_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_2_633_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PCLAMPE_G
    PCLAMP_VDDPST18_2
   (
    .VDDESD(VDDPST18_2),
    .VSSESD(VSSPST18_2)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_2_635_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_V_G
    VDD_636_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_637_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_2_638_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_2_639_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_V_G
    VDD_640_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_641_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_2_642_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_2_643_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_V_G
    VDD_644_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_645_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_2_646_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_V_G
    GPIO4_575_inst
   (
    .PE(GPIO4_pe),
    .IE(1'b1),
    .I(GPIO4_out),
    .OEN(GPIO4_oe),
    .PS(GPIO4_ps),
    .SL(GPIO4_sl),
    .ST0(GPIO4_s0),
    .ST1(GPIO4_s1),
    .HE(1'b0),
    .DS0(GPIO4_d0),
    .DS1(GPIO4_d1),
    .PAD(GPIO4),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO4_in)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_2_648_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_649_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_V_G
    VDD_650_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_651_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_2_652_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_V_G
    GPIO5_581_inst
   (
    .PE(GPIO5_pe),
    .IE(1'b1),
    .I(GPIO5_out),
    .OEN(GPIO5_oe),
    .PS(GPIO5_ps),
    .SL(GPIO5_sl),
    .ST0(GPIO5_s0),
    .ST1(GPIO5_s1),
    .HE(1'b0),
    .DS0(GPIO5_d0),
    .DS1(GPIO5_d1),
    .PAD(GPIO5),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO5_in)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_2_654_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_655_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_V_G
    VDD_656_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_657_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_2_658_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_V_G
    GPIO6_587_inst
   (
    .PE(GPIO6_pe),
    .IE(1'b1),
    .I(GPIO6_out),
    .OEN(GPIO6_oe),
    .PS(GPIO6_ps),
    .SL(GPIO6_sl),
    .ST0(GPIO6_s0),
    .ST1(GPIO6_s1),
    .HE(1'b0),
    .DS0(GPIO6_d0),
    .DS1(GPIO6_d1),
    .PAD(GPIO6),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO6_in)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_2_660_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_661_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_V_G
    VDD_662_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_663_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_2_664_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   
   PRWDWUWHWSWDGE_V_G
    GPIO26_716_inst
   (
    .PE(GPIO26_pe),
    .IE(1'b1),
    .I(GPIO26_out),
    .OEN(GPIO26_oe),
    .PS(GPIO26_ps),
    .SL(GPIO26_sl),
    .ST0(GPIO26_s0),
    .ST1(GPIO26_s1),
    .HE(1'b0),
    .DS0(GPIO26_d0),
    .DS1(GPIO26_d1),
    .PAD(GPIO26),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO26_in)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_2_666_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_667_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_V_G
    VDD_668_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_669_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_2_670_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   
   PRWDWUWHWSWDGE_V_G
    GPIO27_717_inst
   (
    .PE(GPIO27_pe),
    .IE(1'b1),
    .I(GPIO27_out),
    .OEN(GPIO27_oe),
    .PS(GPIO27_ps),
    .SL(GPIO27_sl),
    .ST0(GPIO27_s0),
    .ST1(GPIO27_s1),
    .HE(1'b0),
    .DS0(GPIO27_d0),
    .DS1(GPIO27_d1),
    .PAD(GPIO27),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO27_in)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_2_672_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_673_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_V_G
    VDD_674_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_675_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_2_676_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   
   PRWDWUWHWSWDGE_V_G
    GPIO28_717_inst
   (
    .PE(GPIO28_pe),
    .IE(1'b1),
    .I(GPIO28_out),
    .OEN(GPIO28_oe),
    .PS(GPIO28_ps),
    .SL(GPIO28_sl),
    .ST0(GPIO28_s0),
    .ST1(GPIO28_s1),
    .HE(1'b0),
    .DS0(GPIO28_d0),
    .DS1(GPIO28_d1),
    .PAD(GPIO28),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO28_in)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_2_678_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_679_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_V_G
    VDD_680_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_681_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_2_682_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   
   PRWDWUWHWSWDGE_V_G
    GPIO29_717_inst
   (
    .PE(GPIO29_pe),
    .IE(1'b1),
    .I(GPIO29_out),
    .OEN(GPIO29_oe),
    .PS(GPIO29_ps),
    .SL(GPIO29_sl),
    .ST0(GPIO29_s0),
    .ST1(GPIO29_s1),
    .HE(1'b0),
    .DS0(GPIO29_d0),
    .DS1(GPIO29_d1),
    .PAD(GPIO29),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO29_in)
   ); 


   
   
   PRWDWUWHWSWDGE_V_G
    GPIO32_717_inst
   (
    .PE(GPIO32_pe),
    .IE(1'b1),
    .I(GPIO32_out),
    .OEN(GPIO32_oe),
    .PS(GPIO32_ps),
    .SL(GPIO32_sl),
    .ST0(GPIO32_s0),
    .ST1(GPIO32_s1),
    .HE(1'b0),
    .DS0(GPIO32_d0),
    .DS1(GPIO32_d1),
    .PAD(GPIO32),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(GPIO32_in)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_2_685_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_V_G
    VDD_686_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_687_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_2_688_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_V_G
    CLK_SEL_529_inst
   (
    .PE(1'b0),
    .IE(1'b1),
    .I(1'b0),
    .OEN(1'b1),
    .PS(1'b0),
    .SL(1'b0),
    .ST0(1'b1),
    .ST1(1'b0),
    .HE(1'b0),
    .DS0(1'b0),
    .DS1(1'b0),
    .PAD(CLK_SEL),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(REFCLK_SEL_in)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_2_690_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_691_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_V_G
    VDD_692_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_693_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_2_694_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_V_G
    RESET_IN_611_inst
   (
    .PE(1'b0),
    .IE(1'b1),
    .I(1'b0),
    .OEN(1'b1),
    .PS(1'b0),
    .SL(1'b0),
    .ST0(1'b0),
    .ST1(1'b1),
    .HE(1'b0),
    .DS0(1'b0),
    .DS1(1'b0),
    .PAD(RESET_IN),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(RESET_N_in)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_2_696_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_697_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PCLAMPEC_H_G
    PCLAMP_VDD_7
   (
    .VDDESD(VDD),
    .VSSESD(VSS)
   ); 


   
   PVDD1CDE_V_G
    VDD_699_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_700_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_2_701_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_V_G
    RESET_SEL_618_inst
   (
    .PE(1'b1),
    .IE(1'b1),
    .I(1'b0),
    .OEN(1'b1),
    .PS(1'b0),
    .SL(1'b0),
    .ST0(1'b1),
    .ST1(1'b0),
    .HE(1'b0),
    .DS0(1'b0),
    .DS1(1'b0),
    .PAD(RESET_SEL),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(RESET_SEL_in)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_2_703_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_704_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1CDE_V_G
    VDD_705_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_706_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_2_707_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD2ANAE_V_G
    POR_RESET_N_BDIR_624_inst
   (
    .AVDD(POR_RESET_N_BDIR),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_2_709_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1ANAE_V_G
    VDDA_CML_HDBT_L_710_inst
   (
    .AVDD(VDDA_CML_HDBT_L),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1ANAE_V_G
    VDDA_CML_HDBT_L_711_inst
   (
    .AVDD(VDDA_CML_HDBT_L),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVDD1ANAE_V_G
    VDDA_CML_HDBT_L_712_inst
   (
    .AVDD(VDDA_CML_HDBT_L),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_713_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PRWDWUWHWSWDGE_V_G
    POR_EN_3_3V_MONITOR_630_inst
   (
    .PE(1'b1),
    .IE(1'b1),
    .I(1'b0),
    .OEN(1'b1),
    .PS(1'b0),
    .SL(1'b0),
    .ST0(1'b0),
    .ST1(1'b0),
    .HE(1'b0),
    .DS0(1'b0),
    .DS1(1'b0),
    .PAD(POR_EN_3_3V_MONITOR),
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2),
    .C(POR_EN_3_3V_MONITOR_in)
   ); 


   
   PVDD2CDE_V_G
    VDDPST18_2_715_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PVSS1CDE_V_G
    VSS_716_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PENDCAPE_G
    PENDCAP_VDDPST18_2_end_717_inst
   (
    .POC(POC_6),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_2),
    .VSSPST(VSSPST18_2)
   ); 


   
   PENDCAPE_G
    PENDCAP_VDDPST18_1_start_789_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS1CDE_V_G
    VSS_790_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


   
   PVSS2CDE_V_G
    VSSPST18_1_791_inst
   (
    .POC(POC_1),
    .VDD(VDD),
    .VSS(VSS),
    .VDDPST(VDDPST18_1),
    .VSSPST(VSSPST18_1)
   ); 


endmodule 
