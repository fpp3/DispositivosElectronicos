v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -150 -0 -40 0 {
lab=vin}
N -0 -70 0 -40 {
lab=#net1}
N -240 -70 -240 -30 {
lab=#net1}
N -240 -70 0 -70 {
lab=#net1}
N 170 60 170 80 {
lab=GND}
N -0 80 170 80 {
lab=GND}
N -0 40 0 80 {
lab=GND}
N -240 80 0 80 {
lab=GND}
N -240 30 -240 80 {
lab=GND}
N -150 60 -150 80 {
lab=GND}
N 70 -0 170 -0 {
lab=vout}
C {vsource.sym} -240 0 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -150 30 0 0 {name=V2 value="PULSE(0 1.8 0 1n 1n 5n 10n 4)" savecurrent=false}
C {res.sym} 170 30 0 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {/home/fpp/Documentos/UTN/DispositivosElectronicos/tp6/symbol/not_gate.sym} 0 0 0 0 {name=x1}
C {gnd.sym} 0 80 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -120 0 1 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} 120 0 1 0 {name=p2 sig_type=std_logic lab=vout
}
C {sky130_fd_pr/corner.sym} -450 -140 0 0 {name=CORNER only_toplevel=true corner=tt}
C {simulator_commands_shown.sym} -440 30 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
 tran 0.5n 40n
 write sim.raw
 wrdata sim.csv vin vout
 save all
.endc
"}
