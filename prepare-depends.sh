#!/bin/sh
# This script fetches, builds and locally installs Joshua Kroll's fork of libsnark.
# (Adapted from https://github.com/scipr-lab/libsnark.)

set -x -e

DEPSRC=./depsrc
DEPINST=/usr

mkdir -p $DEPSRC

cd $DEPSRC
[ ! -d libsnark ] && git clone https://github.com/ksuenaga/libsnark.git
cd libsnark
./prepare-depends.sh
make
sudo make install PREFIX=$DEPINST


