#!/bin/bash
# Usage: run_write_lef.sh <gdsfile> <cellname> <lefoutput>

GDSFILE="$1"
CELLNAME="$2"
LEFFILE="$3"

# Set PDK paths
: ${PDK_ROOT:=$HOME/.ciel}
: ${PDK:=ihp-sg13g2}

magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc > magic_lef.log << EOF
drc off
locking disable
crashbackups stop
box 0 0 0 0

# Load layout
gds read ${GDSFILE}
load ${CELLNAME}
select top cell
port makeall
port renumber

# -----------------------------
# Dynamic port processing
# -----------------------------
set first [port first]
set last  [port last]

for {set idx \$first} {\$idx <= \$last} {incr idx} {
    # Check if port exists
    set pname [port \$idx name -quiet]
    if {\$pname eq ""} {
        continue
    }
    puts "Port \$idx -> \$pname"

    # Assign class/use based on name
    if {\$pname eq "VPWR"} {
        port \$idx class inout
        port \$idx use power
    } elseif {\$pname eq "VGND"} {
        port \$idx class inout
        port \$idx use ground
    } elseif {[regexp {^(in_|in|out|ethernet)} \$pname]} {
        if {[regexp {in} \$pname]} {
            port \$idx class input
        } else {
            port \$idx class inout
        }
        port \$idx use signal
    } else {
        port \$idx class default
        port \$idx use signal
    }
    
    set pclass [port \$idx class]
    set puse   [port \$idx use]
    puts "port \$idx class -> \$pclass"
    puts "port \$idx use   -> \$puse"
}

# -----------------------------
# Write LEF
# -----------------------------
lef write ${LEFFILE} -hide -pinonly

quit -noprompt
EOF

echo "LEF written to ${LEFFILE}"
