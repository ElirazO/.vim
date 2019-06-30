


















module DWC_hdmi_rx_ceavid(
  input  wire        ihdmiclk                 ,
  input  wire        ihdmirst_n               ,
  input  wire        ihdmien                  ,
  input  wire        ipixelclk                ,
  input  wire        ipixelrst_n              ,
  input  wire        ipixelen                 ,
  input  wire        icfg_ceavid_rst          ,
  input  wire  [3:0] iceavid_realign_th_qstc  ,
  input  wire  [3:0] iceavid_ignframe_qstc    ,
  input  wire        iceavid_vidid_qstc       ,
  input  wire        iceavid_auto_realign_qstc,
  input  wire        iceavid_vbos_qstc        ,
  input  wire        iceavid_ilace_qstc       ,
  input  wire        iceavid_vpol_qstc        ,
  input  wire        iceavid_hpol_qstc        ,
  input  wire        iceavid_man_qstc         ,
  input  wire  [3:0] iceavid_3dstructure_qstc ,
  input  wire        iceavid_3den_qstc        ,
  input  wire [15:0] iceavid_hblank_qstc      ,
  input  wire [15:0] iceavid_hactive_qstc     ,
  input  wire [15:0] iceavid_hfront_qstc      ,
  input  wire [15:0] iceavid_hsync_qstc       ,
  input  wire [15:0] iceavid_vblank_qstc      ,
  input  wire [15:0] iceavid_vactive_qstc     ,
  input  wire [15:0] iceavid_vfront_qstc      ,
  input  wire [15:0] iceavid_vsync_qstc       ,
  input  wire  [3:0] ipdec_pixel_phase        ,
  input  wire        ihactive_p               ,
  input  wire        ihblank_p                ,
  input  wire        ihfront_p                ,
  input  wire        ihsync_width_p           ,
  input  wire [15:0] ihactive                 ,
  input  wire [15:0] ihblank                  ,
  input  wire [15:0] ihfront                  ,
  input  wire [15:0] ihsync_width             ,
  input  wire [15:0] ivactive                 ,
  input  wire [15:0] ivblank                  ,
  input  wire [15:0] ivfront                  ,
  input  wire [15:0] ivsync_width             ,
  input  wire [15:0] ivback                   ,
  input  wire [15:0] ivid_red                 ,
  input  wire [15:0] ivid_blue                ,
  input  wire [15:0] ivid_green               ,
  input  wire        ivid_dataen              ,
  input  wire        ivid_devalid             ,
  input  wire        ivid_vsync               ,
  input  wire        ivid_field               ,
  input  wire  [3:0] ivid_colordepth          ,
  input  wire        iilace                   ,
  input  wire  [7:0] ivic_code                ,
  input  wire        ihdmi_mode               ,
  input  wire  [2:0] ihdmi_video_format       ,
  input  wire  [3:0] i3dstructure             ,
  input  wire        ivsync_pol               ,
  input  wire        ihsync_pol               ,
  input  wire        icfg_ceavid_status_p     ,
  output wire        ost_ceavid_empty         ,
  output wire        ost_ceavid_full          ,
  output wire        oceavid_align_sts        ,
  output wire        oceavid_vid_sts          ,
  output wire        oceavid_vsync            ,
  output wire        oceavid_hsync            ,
  output wire        oceavid_dataen           ,
  output wire [47:0] oceavid_data              
  );





wire        w3denable        ;
wire        wvid_det_p       ;
wire        wvidalign_det_p  ;
wire        wvsync_fall      ;
wire        wvidfif_hsync    ;
wire        wvidfif_vsync    ;
wire        wvidfif_dataen   ;
wire        whblank_notdiv4  ;
wire        wvidalign_valid  ;
wire        wvidfif_start    ;
reg         rvidalign_valid_d;
reg  [47:0] rvidfif_data_d1  ;
reg  [47:0] rvidfif_data_d2  ;



assign w3denable = (ihdmi_video_format == 3'b010) ? 1'b1 : 1'b0;


DWC_hdmi_rx_ceavid_align
 u_align(
  .ihdmiclk                  (ihdmiclk                 ),
  .ihdmirst_n                (ihdmirst_n               ),
  .ihdmien                   (ihdmien                  ),
  .icfg_ceavid_rst           (icfg_ceavid_rst          ),
  .iceavid_realign_th_qstc   (iceavid_realign_th_qstc  ),
  .iceavid_auto_realign_qstc (iceavid_auto_realign_qstc),
  .iceavid_ignframe_qstc     (iceavid_ignframe_qstc    ),
  .ivid_colordepth           (ivid_colordepth          ),
  .ivid_devalid              (ivid_devalid             ),
  .ivid_vsync                (ivid_vsync               ),
  .ivid_dataen               (ivid_dataen              ),
  .ivback                    (ivback                   ),
  .icfg_ceavid_status_p      (icfg_ceavid_status_p     ),
  .ihblank_notdiv4           (whblank_notdiv4          ),
  .ovsync_fall               (wvsync_fall              ),
  .oceavid_align_sts         (oceavid_align_sts        ),
  .ovid_det_p                (wvid_det_p               ),
  .ovidalign_valid           (wvidalign_valid          ),
  .ovidalign_det_p           (wvidalign_det_p          )
  );


DWC_hdmi_rx_ceavid_gen
 u_gen(
  .ihdmiclk                 (ihdmiclk                ),
  .ihdmirst_n               (ihdmirst_n              ),
  .ihdmien                  (ihdmien                 ),
  .icfg_ceavid_rst          (icfg_ceavid_rst         ),
  .iceavid_vidid_qstc       (iceavid_vidid_qstc      ),
  .iceavid_vbos_qstc        (iceavid_vbos_qstc       ),
  .iceavid_ilace_qstc       (iceavid_ilace_qstc      ),
  .iceavid_vpol_qstc        (iceavid_vpol_qstc       ),
  .iceavid_hpol_qstc        (iceavid_hpol_qstc       ),
  .iceavid_man_qstc         (iceavid_man_qstc        ),
  .iceavid_3dstructure_qstc (iceavid_3dstructure_qstc),
  .iceavid_3den_qstc        (iceavid_3den_qstc       ),
  .iceavid_hblank_qstc      (iceavid_hblank_qstc     ),
  .iceavid_hactive_qstc     (iceavid_hactive_qstc    ),
  .iceavid_hfront_qstc      (iceavid_hfront_qstc     ),
  .iceavid_hsync_qstc       (iceavid_hsync_qstc      ),
  .iceavid_vblank_qstc      (iceavid_vblank_qstc     ),
  .iceavid_vactive_qstc     (iceavid_vactive_qstc    ),
  .iceavid_vfront_qstc      (iceavid_vfront_qstc     ),
  .iceavid_vsync_qstc       (iceavid_vsync_qstc      ),
  .ipdec_pixel_phase        (ipdec_pixel_phase       ),
  .ihactive_p               (ihactive_p              ),
  .ihblank_p                (ihblank_p               ),
  .ihfront_p                (ihfront_p               ),
  .ihsync_width_p           (ihsync_width_p          ),
  .ihactive                 (ihactive                ),
  .ihblank                  (ihblank                 ),
  .ihfront                  (ihfront                 ),
  .ihsync_width             (ihsync_width            ),
  .ivactive                 (ivactive                ),
  .ivblank                  (ivblank                 ),
  .ivfront                  (ivfront                 ),
  .ivsync_width             (ivsync_width            ),
  .ivid_dataen              (ivid_dataen             ),
  .ivid_field               (ivid_field              ),
  .iilace                   (iilace                  ),
  .ihdmi_mode               (ihdmi_mode              ),
  .ivic_code                (ivic_code               ),
  .i3denable                (w3denable               ),
  .i3dstructure             (i3dstructure            ),
  .ivid_colordepth          (ivid_colordepth         ),
  .ivsync_pol               (ivsync_pol              ),
  .ihsync_pol               (ihsync_pol              ),
  .ividalign_valid          (wvidalign_valid         ),
  .ivid_det_p               (wvid_det_p              ),
  .ividalign_det_p          (wvidalign_det_p         ),
  .ivsync_fall              (wvsync_fall             ),
  .ohblank_notdiv4          (whblank_notdiv4         ),
  .ovidfif_start            (wvidfif_start           ),
  .ovidfif_hsync            (wvidfif_hsync           ),
  .ovidfif_vsync            (wvidfif_vsync           ),
  .ovidfif_dataen           (wvidfif_dataen          )
  );


always @ (posedge ihdmiclk or negedge ihdmirst_n) begin : sdly_PROC
  if (!ihdmirst_n) begin
    rvidfif_data_d1   <= 48'd0;
    rvidfif_data_d2   <= 48'd0;
    rvidalign_valid_d <= 1'b0;
  end
  else begin
    if (!ihdmien) begin
      rvidfif_data_d1   <= 48'd0;
      rvidfif_data_d2   <= 48'd0;
      rvidalign_valid_d <= 1'b0;
    end
    else begin
      rvidfif_data_d1   <= {ivid_red, ivid_green, ivid_blue};
      rvidfif_data_d2   <= rvidfif_data_d1;
      rvidalign_valid_d <= wvidalign_valid;
    end
  end
end


DWC_hdmi_rx_ceavid_fifo
 u_fifo(
  .ihdmiclk           (ihdmiclk          ),
  .ihdmirst_n         (ihdmirst_n        ),
  .ihdmien            (ihdmien           ),
  .ipixelclk          (ipixelclk         ),
  .ipixelrst_n        (ipixelrst_n       ),
  .ipixelen           (ipixelen          ),
  .icfg_ceavid_rst    (icfg_ceavid_rst   ),
  .ividalign_valid    (rvidalign_valid_d ),
  .ividfif_start      (wvidfif_start     ),
  .ividfif_hsync      (wvidfif_hsync     ),
  .ividfif_vsync      (wvidfif_vsync     ),
  .ividfif_dataen     (wvidfif_dataen    ),
  .ividfif_data       (rvidfif_data_d2   ),
  .ost_ceavid_empty   (ost_ceavid_empty  ),
  .ost_ceavid_full    (ost_ceavid_full   ),
  .oceavid_vid_sts    (oceavid_vid_sts   ),
  .oceavid_vsync      (oceavid_vsync     ),
  .oceavid_hsync      (oceavid_hsync     ),
  .oceavid_dataen     (oceavid_dataen    ),
  .oceavid_data       (oceavid_data      )
  );


endmodule
