#!/bin/sh

echo "CPU A ---------------------------------------"
cd ./cpu_A
make

echo ""
echo ""
echo ""
echo "CPU B ---------------------------------------"
cd ../cpu_B
make

echo ""
echo ""
echo ""
echo "CPU C ---------------------------------------"
cd ../cpu_C
make

echo ""
echo ""
echo ""
echo "CPU D ---------------------------------------"
cd ../cpu_D
make

echo ""
echo ""
echo ""
echo "CPU E ---------------------------------------"
cd ../cpu_E
make

echo ""
echo ""
echo ""
echo "CPU F ---------------------------------------"
cd ../cpu_F
make

echo ""
echo ""
echo ""
cd ../
