.lib /usr/local/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice ss_hh
.param vvdd=1.7
.param tr=1u
.param td=100n
.ic v(vout)=0
.control
set appendwrite
option numdgt=12

set temp=80
tran 0.01u 5u uic
plot v(en) i(V2) v(vout)
meas tran vfinal find v(vout) when time=5u
meas tran iq_off find i(V2) when time=90n

echo "SS_HH,$temp,$&iq_off,$&vfinal" >> opamp_enable.csv
.endc
