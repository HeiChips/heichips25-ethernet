v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 10 40 30 {lab=etherent_dn}
N -0 20 -0 60 {lab=data_in}
N 40 110 40 120 {lab=VGND}
N 40 -80 40 -70 {lab=VPWR}
N 40 10 150 10 {lab=etherent_dn}
N 40 -10 40 10 {lab=etherent_dn}
N -60 10 0 10 {lab=data_in}
N 0 -40 0 10 {lab=data_in}
N 40 -40 110 -40 {lab=VPWR}
N 110 -80 110 -40 {lab=VPWR}
N 40 -80 110 -80 {lab=VPWR}
N 40 -90 40 -80 {lab=VPWR}
N 40 110 130 110 {lab=VGND}
N 40 90 40 110 {lab=VGND}
N 40 60 130 60 {lab=VGND}
N 130 60 130 110 {lab=VGND}
N -0 20 130 20 {lab=data_in}
N 0 10 -0 20 {lab=data_in}
N 130 20 130 50 {lab=data_in}
N 140 120 180 120 {lab=data_in}
N 140 50 140 120 {lab=data_in}
N 130 50 140 50 {lab=data_in}
N 150 40 150 60 {lab=ethernet_dp}
N 150 60 180 60 {lab=ethernet_dp}
C {sg13g2_pr/sg13_lv_nmos.sym} 20 60 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 20 -40 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} -60 10 0 0 {name=p1 lab=data_in}
C {iopin.sym} 150 10 0 0 {name=p2 lab=etherent_dn}
C {iopin.sym} 40 120 1 0 {name=p3 lab=VGND}
C {iopin.sym} 40 -90 3 0 {name=p4 lab=VPWR}
C {iopin.sym} 150 40 0 0 {name=p5 lab=ethernet_dp}
C {res.sym} 180 90 0 0 {name=R1
value=1n
footprint=1206
device=resistor
m=1}
