#!/bin/bash

NETLIST="sim_opamp_op.spice"
CORNERS=("tt" "ss" "ff" "sf" "fs")
TEMP_NETLIST="run_pvt_op.spice"

# 1. Export netlist from xschem
#xschem -n -s -q sim_comp_op.sch -o .

echo "Starting PVT Simulations..."

for CORNER in "${CORNERS[@]}"; do
    echo "------------------------------------------------"
    echo "Running Corner: $CORNER"
    
    cp "$NETLIST" "$TEMP_NETLIST"
    
    # 2. Simply remove the '*' for the active corner
    sed -i "s/\*\.include opamp_op_${CORNER}\.sp/\.include opamp_op_${CORNER}\.sp/g" "$TEMP_NETLIST"
    
    # 3. Run Ngspice
    ngspice -b $TEMP_NETLIST
    
    echo "Finished $CORNER."
done

rm -f "$TEMP_NETLIST"
echo "All simulations completed."
