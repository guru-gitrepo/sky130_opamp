.lib /usr/local/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.param vvdd=1.8
.param tr=100n
.param td=100n
.ic v(vout)=0
.control
set appendwrite
option numdgt=12

set temp=27
tran 0.01n 700n uic
plot v(en) i(V2) v(vout)
meas tran vfinal find v(vout) when time=700n
meas tran iq_off find i(V2) when time=99n

echo "Corner,Temp,Iq_off,Vfinal" > opamp_enable.csv
echo "TT,$temp,$&iq_off,$&vfinal" >> opamp_enable.csv
.endc
