#!/bin/bash

set -x
set -e

LIB_PREFIX=$HOME/local/dkrz

PKG_CONFIG_PATH=${LIB_PREFIX}/lib/pkgconfig:$PKG_CONFIG_PATH make clean all
