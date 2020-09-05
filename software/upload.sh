#!/bin/sh

#echo "CPU A ---------------------------------------"
#nios2-download -r --stop ./CPU_A/cpu_A.elf --instance 0
#echo ""

echo "CPU B ---------------------------------------"
nios2-download -r --stop ./CPU_B/cpu_B.elf --instance 1
echo ""
echo "CPU C ---------------------------------------"
nios2-download -r --stop ./CPU_C/cpu_C.elf --instance 2
echo ""
echo "CPU D ---------------------------------------"
nios2-download -r --stop ./CPU_D/cpu_D.elf --instance 3
echo ""
echo "CPU E ---------------------------------------"
nios2-download -r --stop ./CPU_E/cpu_E.elf --instance 4
echo ""
#echo "CPU F ---------------------------------------"
#nios2-download -r --stop ./CPU_F/cpu_F.elf --instance 5

echo ""
echo ""
echo "Starting ------------------------------------"
echo ""
#nios2-download -g --instance 0
nios2-download -g --instance 1
nios2-download -g --instance 2
nios2-download -g --instance 3
nios2-download -g --instance 4
#nios2-download -g --instance 5


#nios2-terminal --instance=0
