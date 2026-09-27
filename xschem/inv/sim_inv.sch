v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -40 40 -40 80 {lab=vdd}
N 20 40 20 80 {lab=vin}
N 80 40 80 80 {lab=vss}
N 30 -150 30 -110 {lab=vdd}
N 30 -70 30 -30 {lab=vss}
N -40 -90 0 -90 {lab=vin}
N 70 -90 140 -90 {lab=vout}
N 140 -90 170 -90 {lab=vout}
C {inv.sym} 10 -70 0 0 {name=x1}
C {vsource.sym} -40 110 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 20 110 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} 80 110 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} -40 140 0 0 {name=l1 lab=0}
C {gnd.sym} 80 140 0 0 {name=l2 lab=0}
C {gnd.sym} 20 140 0 0 {name=l3 lab=0}
C {lab_wire.sym} -40 40 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 20 40 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_wire.sym} 80 40 0 0 {name=p3 sig_type=std_logic lab=vss}
C {lab_wire.sym} 30 -150 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 30 -30 2 1 {name=p5 sig_type=std_logic lab=vss}
C {lab_wire.sym} -40 -90 0 0 {name=p6 sig_type=std_logic lab=vin}
C {capa.sym} 170 -60 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 170 -30 0 0 {name=l4 lab=0}
C {lab_wire.sym} 170 -90 0 1 {name=p7 sig_type=std_logic lab=vout}
C {sky130_fd_pr/corner.sym} 250 -100 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code_shown.sym} -350 -40 0 0 {name=spice only_toplevel=false value=
".control
dc V2 0 1.8 0.01
plot v(vout)
let i_d=abs(i(V1))
plot i_d
meas dc VSP when v(vin)=v(vout)
meas dc IMAX max i_d
print VSP IMAX >> inv_char.txt
.endc"}
C {title.sym} -450 210 0 0 {name=l5 author="Guruprasad"}
