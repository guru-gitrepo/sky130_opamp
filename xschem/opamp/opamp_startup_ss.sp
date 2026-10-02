.lib /usr/local/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice ss_hh
.param vvdd=1.7
.param tr=10m
.ic v(vout)=0
.control
set appendwrite
option numdgt=12

set temp=80
tran 0.01m 10.1m uic
plot v(vdd) v(vout)
meas tran vfinal find v(vout) when time=10.1m

echo "SS_HH,$temp,$&vfinal" >> opamp_startup.csv
.endc
