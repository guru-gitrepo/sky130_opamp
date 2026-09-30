
.lib /usr/local/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt

.param vvdd=1.8

.param tvin=0
.param tvref=20u
.param ten=40u

.param tr_vin=10u
.param tr_vref=1u
.param tr_en=100n

.param tw_en=1m

.control
set appendwrite
option numdgt=7
set temp=27
alter RL=1500

tran 0.01m 20m 
plot v(VIN)
plot v(VREF) 
plot v(EN)
Plot v(VOUT)
let IVDD=abs(i(V1))
plot IVDD

let IL=1.5/$&@rl[resistance]
let VMAX=vecmax(v(VOUT))
meas tran VFINAL find v(VOUT) at=1m
let OVERSHOOT=VMAX-VFINAL
let IMAX=vecmax(IVDD)
meas tran IOFF find i(V3) at=20m

echo "Case,IL,Temp,VMAX,VFINAL,IMAX,OVERSHOOT,IOFF" >> ldo_startup.csv
echo "1,$&IL,$temp,$&VMAX,$&VFINAL,$&IMAX,$&OVERSHOOT,$&IOFF" >> ldo_startup.csv

.endc
