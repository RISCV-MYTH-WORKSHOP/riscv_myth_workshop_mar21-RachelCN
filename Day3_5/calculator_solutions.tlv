\m4_TLV_version 1d: tl-x.org
\SV
   // Cycle calculator
   // =========================================
   // Welcome!  Try the tutorials via the menu.
   // =========================================

   // Default Makerchip TL-Verilog Code Template
   
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   //$reset = *reset;
   
   |calc
      //@0
         
         
      @1
         $reset = *reset;
         $val2 [31:0] = $rand2[3:0];
         $val1 [31:0] = >>2$out [31:0];
         $valid[31:0] = $reset ? 1: (>>1$valid + 1);
         $reset_or_valid = $reset | $valid ;
   
         
      ?$reset_or_valid
         @1   
            $sum [31:0] = $val1 + $val2;
            $diff[31:0] = $val1 - $val2;
            $prod[31:0] = $val1 * $val2;
            $quot[31:0] = $val1 / $val2;
            
         @2                                           
            $out[31:0] = $reset ? 0 : 
                          $reset_or_valid ? ($op[0] ? ($op[1] ? $quot[31:0] : $diff[31:0]) :
                       ($op[1] ? $prod[31:0] : $sum[31:0])) :>>2$out;
            
                 
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
