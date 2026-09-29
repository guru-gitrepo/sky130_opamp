.lib /usr/local/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.param vvdd=1.8
.control
set appendwrite
option numdgt=12

set temp=27
op
* ---------- XM1 ----------
let xm1_vgs   = @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[vgs]
let xm1_vds   = @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[vds]
let xm1_vgd   = xm1_vgs - xm1_vds
let xm1_vdsat = @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[vdsat]
let xm1_id    = @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
let xm1_gm    = @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
let xm1_vth   = @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
let xm1_mar   = xm1_vds - xm1_vdsat
let xm1_rds   = 1/(@m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[gds])

* ---------- XM2 ----------
let xm2_vgs   = @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[vgs]
let xm2_vds   = @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[vds]
let xm2_vgd   = xm2_vgs - xm2_vds
let xm2_vdsat = @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[vdsat]
let xm2_id    = @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[id]
let xm2_gm    = @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[gm]
let xm2_vth   = @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[vth]
let xm2_mar   = xm2_vds - xm2_vdsat 
let xm2_rds   = 1/(@m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[gds])

* ---------- XM3 ----------
let xm3_vgs   = @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[vgs]
let xm3_vds   = @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[vds]
let xm3_vgd   = xm3_vgs - xm3_vds
let xm3_vdsat = @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[vdsat]
let xm3_id    = @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[id]
let xm3_gm    = @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[gm]
let xm3_vth   = @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[vth]
let xm3_mar   = xm3_vds - xm3_vdsat 
let xm3_rds   = 1/(@m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[gds])

* ---------- XM4 ----------
let xm4_vgs   = @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[vgs]
let xm4_vds   = @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[vds]
let xm4_vgd   = xm4_vgs - xm4_vds
let xm4_vdsat = @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[vdsat]
let xm4_id    = @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[id]
let xm4_gm    = @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[gm]
let xm4_vth   = @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[vth]
let xm4_mar   = xm4_vds - xm4_vdsat 
let xm4_rds   = 1/(@m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[gds])

* ---------- XM5 ----------
let xm5_vgs   = @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[vgs]
let xm5_vds   = @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[vds]
let xm5_vgd   = xm5_vgs - xm5_vds
let xm5_vdsat = @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[vdsat]
let xm5_id    = @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[id]
let xm5_gm    = @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[gm]
let xm5_vth   = @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[vth]
let xm5_mar   = xm5_vds - xm5_vdsat
let xm5_rds   = 1/(@m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[gds])

* ---------- XM6 ----------
let xm6_vgs   = @m.x1.xm6.msky130_fd_pr__nfet_01v8_lvt[vgs]
let xm6_vds   = @m.x1.xm6.msky130_fd_pr__nfet_01v8_lvt[vds]
let xm6_vgd   = xm6_vgs - xm6_vds
let xm6_vdsat = @m.x1.xm6.msky130_fd_pr__nfet_01v8_lvt[vdsat]
let xm6_id    = @m.x1.xm6.msky130_fd_pr__nfet_01v8_lvt[id]
let xm6_gm    = @m.x1.xm6.msky130_fd_pr__nfet_01v8_lvt[gm]
let xm6_vth   = @m.x1.xm6.msky130_fd_pr__nfet_01v8_lvt[vth]
let xm6_mar   = xm6_vds - xm6_vdsat 
let xm6_rds   = 1/(@m.x1.xm6.msky130_fd_pr__nfet_01v8_lvt[gds])

* ---------- XM7 ----------
let xm7_vgs   = @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[vgs]
let xm7_vds   = @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[vds]
let xm7_vgd   = xm7_vgs - xm7_vds
let xm7_vdsat = @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[vdsat]
let xm7_id    = @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[id]
let xm7_gm    = @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[gm]
let xm7_vth   = @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[vth]
let xm7_mar   = xm7_vds - xm7_vdsat
let xm7_rds   = 1/(@m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[gds])

* ---------- XM8----------
let xm8_vgs   = @m.x1.xm8.msky130_fd_pr__pfet_01v8_lvt[vgs]
let xm8_vds   = @m.x1.xm8.msky130_fd_pr__pfet_01v8_lvt[vds]
let xm8_vgd   = xm8_vgs - xm8_vds
let xm8_vdsat = @m.x1.xm8.msky130_fd_pr__pfet_01v8_lvt[vdsat]
let xm8_id    = @m.x1.xm8.msky130_fd_pr__pfet_01v8_lvt[id]
let xm8_gm    = @m.x1.xm8.msky130_fd_pr__pfet_01v8_lvt[gm]
let xm8_vth   = @m.x1.xm8.msky130_fd_pr__pfet_01v8_lvt[vth]
let xm8_rds   = 1/(@m.x1.xm8.msky130_fd_pr__pfet_01v8_lvt[gds])
let xm8_mar   = xm8_vds - xm8_vdsat

*------------Other values------
echo "MOS,VGS,VDS,VGD,VDSAT,ID,GM,VTH,MARGIN,rdp,VOUT,IQ,Vin,Temp,TT" > opamp_op.csv
echo "M1,$&xm1_vgs $&xm1_vds $&xm1_vgd $&xm1_vdsat $&xm1_id $&xm1_gm $&xm1_vth $&xm1_mar $&xm1_rds  $&v(vout) $&i(V2) $&v(vdd) $temp" >> opamp_op.csv  
echo "M2,$&xm2_vgs $&xm2_vds $&xm2_vgd $&xm2_vdsat $&xm2_id $&xm2_gm $&xm2_vth $&xm2_mar $&xm2_rds" >> opamp_op.csv
echo "M3,$&xm3_vgs $&xm3_vds $&xm3_vgd $&xm3_vdsat $&xm3_id $&xm3_gm $&xm3_vth $&xm3_mar $&xm3_rds" >> opamp_op.csv
echo "M4,$&xm4_vgs $&xm4_vds $&xm4_vgd $&xm4_vdsat $&xm4_id $&xm4_gm $&xm4_vth $&xm4_mar $&xm4_rds" >> opamp_op.csv
echo "M5,$&xm5_vgs $&xm5_vds $&xm5_vgd $&xm5_vdsat $&xm5_id $&xm5_gm $&xm5_vth $&xm5_mar $&xm5_rds" >> opamp_op.csv
echo "M6,$&xm6_vgs $&xm6_vgd $&xm6_vgd $&xm6_vdsat $&xm6_id $&xm6_gm $&xm6_vth $&xm6_mar $&xm6_rds" >> opamp_op.csv
echo "M7,$&xm7_vgs $&xm7_vgd $&xm7_vgd $&xm7_vdsat $&xm7_id $&xm7_gm $&xm7_vth $&xm7_mar $&xm7_rds" >> opamp_op.csv
echo "M8,$&xm8_vgs $&xm8_vgd $&xm8_vgd $&xm8_vdsat $&xm8_id $&xm8_gm $&xm8_vth $&xm8_mar $&xm8_rds" >> opamp_op.csv

.endc
