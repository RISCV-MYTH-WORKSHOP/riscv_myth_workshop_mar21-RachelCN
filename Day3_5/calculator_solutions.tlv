\m4_TLV_version 1d: tl-x.org
\SV

// calculator and counter in pipeline
   // =========================================
   // Welcome!  Try the tutorials via the menu.
   // =========================================

   // Default Makerchip TL-Verilog Code Template
   
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   |calc
      @1
         $val2[31:0] = $rand2[3:0];
  
         $sum[31:0] = $val1[31:0] + $val2[31:0];
         $diff[31:0] = $val1[31:0] - $val2[31:0];
         $prod[31:0] = $val1[31:0] * $val2[31:0];
         $quot[31:0] = $val1[31:0] / $val2[31:0];
         $out[31:0] = $reset ? 0: ($op[0] ? ($op[1] ? $quot[31:0] : $diff[31:0]) :
                      ($op[1] ? $prod[31:0] : $sum[31:0]));
         $val1[31:0] = >>1$out[31:0] ;  
         $cnt[31:0] = $reset ? 1: (>>1$cnt + 1);
               
   $reset = *reset;

   

   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
