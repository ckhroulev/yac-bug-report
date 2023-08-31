#!/bin/bash

set -x
set -e

PKG_CONFIG_PATH=$HOME/local/dkrz/lib/pkgconfig:$PKG_CONFIG_PATH make clean all
