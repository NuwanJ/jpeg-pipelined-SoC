#!/bin/sh

nios2-download --stop --instance 1
nios2-download --stop --instance 2
nios2-download --stop --instance 3
nios2-download --stop --instance 4
nios2-download --stop --instance 5

nios2-download -g --instance 1
nios2-download -g --instance 2
nios2-download -g --instance 3
nios2-download -g --instance 4
nios2-download -g --instance 5

#nios2-terminal --instance=0
