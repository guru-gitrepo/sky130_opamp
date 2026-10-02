.lib /usr/local/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice ff_ll
.param vvdd=1.9
.param tr=5u
.ic v(vout)=0
.control
set appendwrite
option numdgt=12

set temp=0
tran 0.001u 10u uic
plot v(vdd) v(vout)
meas tran vfinal find v(vout) when time=10u

echo "FF_LL,$temp,$&vfinal" >> opamp_startup.csv
.endc
