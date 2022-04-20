#!/bin/bash
git clone https://github.com/netwide-assembler/nasm
pushd nasm
sh autogen.sh
sh configure
make
popd
