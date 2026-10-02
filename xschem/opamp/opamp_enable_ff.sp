.lib /usr/local/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice ff_ll
.param vvdd=1.9
.param tr=10n
.param td=100n
.ic v(vout)=0
.control
set appendwrite
option numdgt=12

set temp=0
tran 0.001n 700n uic

plot v(en) i(V2) v(vout)
meas tran vfinal find v(vout) when time=700n
meas tran iq_off find i(V2) when time=99n

echo "FF_LL,$temp,$&iq_off,$&vfinal" >> opamp_enable.csv
.endc
