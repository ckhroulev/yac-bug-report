#!/bin/bash

set -x
set -e

LIB_PREFIX=$HOME/local/dkrz

export PKG_CONFIG_PATH=${LIB_PREFIX}/lib/pkgconfig:$PKG_CONFIG_PATH

# Set RPATH since my YAC build does not know how to find YAXT:
RPATH=-Wl,-rpath,`pkg-config --variable=libdir yaxt`

make RPATH_FLAGS=${RPATH} clean all
