#!/bin/sh
[ ! -e build ] && mkdir build

(
    export \
        CC=gcc-8 \
        CXX=g++-8 \
    &&
    cd build &&
    cmake .. \
        -G Ninja \
        -DCMAKE_C_FLAGS=-m32 \
        -DCMAKE_CXX_FLAGS=-m32 \
        -DCMAKE_BUILD_TYPE=Release \
    &&
    cmake --build . --config Release
)
