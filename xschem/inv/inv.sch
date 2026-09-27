v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -30 -10 -30 40 {lab=y}
N -30 -100 -30 -70 {lab=vdd}
N -30 100 -30 130 {lab=vss}
N -30 -40 -0 -40 {lab=vdd}
N 0 -70 0 -40 {lab=vdd}
N -30 -70 0 -70 {lab=vdd}
N -30 100 -0 100 {lab=vss}
N -0 70 -0 100 {lab=vss}
N -30 70 -0 70 {lab=vss}
N -100 -40 -70 -40 {lab=x}
N -100 -40 -100 70 {lab=x}
N -100 70 -70 70 {lab=x}
N -140 20 -100 20 {lab=x}
N -30 20 20 20 {lab=y}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -50 -40 0 0 {name=M1
W=1.2
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -50 70 0 0 {name=M2
W=0.5
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {ipin.sym} -30 -100 0 0 {name=p1 lab=vdd}
C {ipin.sym} -30 130 0 0 {name=p2 lab=vss}
C {ipin.sym} -140 20 0 0 {name=p3 lab=x}
C {opin.sym} 20 20 0 0 {name=p4 lab=y}
C {title.sym} -350 180 0 0 {name=l1 author="Guruprasad"}
