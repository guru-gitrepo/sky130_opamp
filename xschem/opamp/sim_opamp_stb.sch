v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 -100 -230 30 -230 {}
L 4 30 -230 120 -230 {}
T {Testbench setup for Stability} -100 -260 0 0 0.4 0.4 {}
N -180 90 -180 140 {lab=vdd}
N -100 90 -100 140 {lab=vss}
N -20 90 -20 140 {lab=en}
N -30 -200 -30 -150 {lab=vdd}
N -50 -200 -50 -150 {lab=en}
N -50 -50 -50 0 {lab=ib}
N -30 -50 -30 0 {lab=vss}
N -140 -120 -90 -120 {lab=#net1}
N 20 -100 70 -100 {lab=vout}
N -140 -80 -90 -80 {lab=#net2}
N -140 -80 -140 30 {lab=#net2}
N 50 -100 50 30 {lab=vout}
N 60 90 60 140 {lab=vp}
N 160 90 160 140 {lab=ib}
N 70 -100 170 -100 {lab=vout}
N 170 -100 170 -80 {lab=vout}
N -140 30 -140 40 {lab=#net2}
N -140 40 -80 40 {lab=#net2}
N -20 40 50 40 {lab=vout}
N 50 30 50 40 {lab=vout}
N -240 -80 -240 -70 {lab=#net2}
N -240 -80 -140 -80 {lab=#net2}
N -210 -120 -200 -120 {lab=vp}
C {opamp.sym} -10 -90 0 0 {name=x1}
C {vsource.sym} -180 170 0 0 {name=V1 value=\{vvdd\} savecurrent=false}
C {title.sym} -390 270 0 0 {name=l1 author="Stefan Schippers"}
C {gnd.sym} -180 200 0 0 {name=l2 lab=0}
C {vsource.sym} -100 170 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -100 200 0 0 {name=l3 lab=0}
C {vsource.sym} -20 170 0 0 {name=V3 value=\{vvdd\} savecurrent=false}
C {gnd.sym} -20 200 0 0 {name=l4 lab=0}
C {lab_wire.sym} -180 90 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -100 90 0 0 {name=p2 sig_type=std_logic lab=vss}
C {lab_wire.sym} -20 90 0 0 {name=p3 sig_type=std_logic lab=en}
C {vsource.sym} 60 170 0 0 {name=V4 value=\{vvdd/2\} savecurrent=false}
C {gnd.sym} 60 200 0 0 {name=l5 lab=0}
C {lab_wire.sym} 60 90 0 0 {name=p4 sig_type=std_logic lab=vp}
C {isource.sym} 160 170 0 0 {name=I0 value=5u}
C {gnd.sym} 160 200 0 0 {name=l6 lab=0}
C {lab_wire.sym} 160 90 0 0 {name=p5 sig_type=std_logic lab=ib}
C {lab_wire.sym} -30 -200 0 1 {name=p6 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -50 -200 0 0 {name=p7 sig_type=std_logic lab=en}
C {lab_wire.sym} -210 -120 0 0 {name=p8 sig_type=std_logic lab=vp}
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
*.include opamp_stb_tt.sp
*.include opamp_stb_ss.sp
*.include opamp_stb_ff.sp
*.include opamp_stb_sf.sp
*.include opamp_stb_fs.sp
"}
C {res.sym} -50 40 1 0 {name=R1
value=1G
footprint=1206
device=resistor
m=1}
C {capa.sym} -240 -40 0 0 {name=C1
m=1
value=100
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -240 -10 0 0 {name=l8 lab=0}
C {vsource.sym} -170 -120 1 1 {name=V5 value=ac=1 savecurrent=false}
