.lib /usr/local/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.param vvdd=1.8
.param tr=500u
.ic v(vout)=0
.control
set appendwrite
option numdgt=12

set temp=27
tran 0.1u 600u uic
plot v(vdd) v(vout)
meas tran vfinal find v(vout) when time=600u

echo "Corner,Temp,Vfinal" > opamp_startup.csv
echo "TT,$temp,$&vfinal" >> opamp_startup.csv
.endc
