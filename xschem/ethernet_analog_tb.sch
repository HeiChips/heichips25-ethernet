v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -260 50 -260 90 {lab=GND}
N -260 -30 -140 -30 {lab=vdat}
N -260 -30 -260 -10 {lab=vdat}
N -370 50 -370 90 {lab=GND}
N -370 -30 -370 -10 {lab=vdd}
N 160 30 180 30 {lab=GND}
N 180 30 180 50 {lab=GND}
N 160 -30 190 -30 {lab=vdd}
N 160 -10 210 -10 {lab=dn}
N 160 10 210 10 {lab=dp}
C {devices/code_shown.sym} 170 -310 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all
op
dc Vdata 0 1.5 0.1
plot v(vdat) v(dp) v(dn)
.endc
"}
C {devices/code_shown.sym} 280 -20 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/vsource.sym} -260 20 0 0 {name=Vdata value=1.2}
C {devices/gnd.sym} -260 90 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -370 20 0 0 {name=Vsupply value=1.5}
C {devices/gnd.sym} -370 90 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -370 -30 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 180 50 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 190 -30 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {iopin.sym} 210 -10 0 0 {name=p3 lab=dn}
C {iopin.sym} 210 10 0 0 {name=p4 lab=dp}
C {lab_wire.sym} -200 -30 0 0 {name=p5 sig_type=std_logic lab=vdat}
C {/home/pc/heichips25-ethernet/xschem/ethernet_analog.sym} 10 0 0 0 {name=x1}
