v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 -100 -230 30 -230 {}
T {Testbench setup} -100 -260 0 0 0.4 0.4 {}
N -110 90 -110 140 {lab=vdd}
N -20 90 -20 140 {lab=vss}
N 60 90 60 140 {lab=en}
N -30 -200 -30 -150 {lab=vdd}
N -50 -200 -50 -150 {lab=en}
N -50 -50 -50 0 {lab=ib}
N -30 -50 -30 0 {lab=vss}
N -140 -120 -90 -120 {lab=vp}
N 20 -100 70 -100 {lab=vout}
N -140 -80 -90 -80 {lab=vout}
N -140 -80 -140 30 {lab=vout}
N -140 30 50 30 {lab=vout}
N 50 -100 50 30 {lab=vout}
N 210 90 210 140 {lab=vp}
N 310 90 310 140 {lab=ib}
N 70 -100 170 -100 {lab=vout}
N 170 -100 170 -80 {lab=vout}
C {opamp.sym} -10 -90 0 0 {name=x1}
C {vsource.sym} -110 170 0 0 {name=V1 value=\{vvdd\}  savecurrent=false}
C {title.sym} -390 270 0 0 {name=l1 author="Stefan Schippers"}
C {gnd.sym} -110 200 0 0 {name=l2 lab=0}
C {vsource.sym} -20 170 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -20 200 0 0 {name=l3 lab=0}
C {vsource.sym} 60 170 0 0 {name=V3 value="pulse(0 \{vvdd\} \{td\} \{tr\} 1u 1 2)" savecurrent=false}
C {gnd.sym} 60 200 0 0 {name=l4 lab=0}
C {lab_wire.sym} -110 90 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -20 90 0 0 {name=p2 sig_type=std_logic lab=vss}
C {lab_wire.sym} 60 90 0 0 {name=p3 sig_type=std_logic lab=en}
C {vsource.sym} 210 170 0 0 {name=V4 value=\{vvdd/2\} savecurrent=false}
C {gnd.sym} 210 200 0 0 {name=l5 lab=0}
C {lab_wire.sym} 210 90 0 0 {name=p4 sig_type=std_logic lab=vp}
C {isource.sym} 310 170 0 0 {name=I0 value=5u}
C {gnd.sym} 310 200 0 0 {name=l6 lab=0}
C {lab_wire.sym} 310 90 0 0 {name=p5 sig_type=std_logic lab=ib}
C {lab_wire.sym} -30 -200 0 1 {name=p6 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -50 -200 0 0 {name=p7 sig_type=std_logic lab=en}
C {lab_wire.sym} -140 -120 0 0 {name=p8 sig_type=std_logic lab=vp}
C {lab_wire.sym} -50 0 2 1 {name=p9 sig_type=std_logic lab=ib}
C {lab_wire.sym} -30 0 2 0 {name=p10 sig_type=std_logic lab=vss}
C {capa.sym} 170 -50 0 0 {name=CL
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 170 -20 0 0 {name=l7 lab=0}
C {lab_wire.sym} 170 -100 0 1 {name=p11 sig_type=std_logic lab=vout}
C {code_shown.sym} 280 -80 0 0 {name=Spice only_toplevel=false value=
"
*.include opamp_enable_tt.sp
*.include opamp_enable_ss.sp
.include opamp_enable_ff.sp
"}
