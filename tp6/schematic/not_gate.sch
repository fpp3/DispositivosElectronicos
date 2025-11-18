v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -90 0 -70 {
lab=VDD}
N 0 70 0 90 {
lab=VDD}
N 0 -0 70 -0 {
lab=out}
N 0 -10 0 -0 {
lab=out}
N 0 -0 -0 10 {
lab=out}
N -60 0 -50 -0 {
lab=in}
N -50 -40 -40 -40 {
lab=in}
N -50 -40 -50 -0 {
lab=in}
N -50 -0 -50 40 {
lab=in}
N -50 40 -40 40 {
lab=in}
N 0 -40 10 -40 {
lab=VDD}
N 10 -90 10 -40 {
lab=VDD}
N -0 -90 10 -90 {
lab=VDD}
N 0 40 10 40 {
lab=VDD}
N 10 40 10 90 {
lab=VDD}
N -0 90 10 90 {
lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} -20 -40 0 0 {name=M1
W=1
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -20 40 0 0 {name=M2
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {ipin.sym} -60 0 0 0 {name=p1 lab=in}
C {opin.sym} 70 0 0 0 {name=p2 lab=out}
C {ipin.sym} 0 -90 1 0 {name=p3 lab=VDD}
C {ipin.sym} 0 90 3 0 {name=p4 lab=GND}
