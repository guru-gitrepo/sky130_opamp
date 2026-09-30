.lib /usr/local/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.param vvdd=1.8
.control
set appendwrite
option numdgt=12

set temp=27
ac dec 50 1 200MEG
let phase_deg = unwrap(ph(v(vout))) * 180 / PI
let gain_dB = db(v(vout))

plot gain_dB
plot phase_deg

meas ac UGF find frequency when gain_dB =0 fall=1
meas ac phase_at_UGF find phase_deg  when gain_dB=0
let PM= 180 + phase_at_UGF
let DC_gain=vecmax(gain_dB)
let DC_gain_3db=DC_gain-3
meas ac fp1 find frequency when gain_dB=DC_gain_3db

echo "Corner,Vin,Temp,DC_gain,UGF,PM,fp1," > opamp_stb.csv
echo "TT,$&@v1[dc],$temp,$&DC_gain,$&UGF,$&PM,$&fp1" >> opamp_stb.csv
.endc
