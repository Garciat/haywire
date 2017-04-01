#!/bin/bash

# Getting libuv
if [ ! -d "lib/libuv" ]; then
    CMD="git clone --depth=1 https://github.com/libuv/libuv.git lib/libuv"
    echo "$CMD"
    $CMD
    cd lib/libuv
    sh autogen.sh
    ./configure
    make -j
    cd ../../
fi

# Getting Wrk
if [ ! -d "bin/wrk" ]; then
    CMD="git clone --depth=1 https://github.com/wg/wrk.git bin/wrk"
    echo "$CMD"
    $CMD
    cd bin/wrk
    make -j
    cd ../../
fi

# Getting Wrk2
if [ ! -d "bin/wrk2" ]; then
    echo "git clone --depth=1 https://github.com/giltene/wrk2.git bin/wrk2"
    echo "$CMD"
    $CMD
    cd bin/wrk2
    make -j
    cd ../../
fi

# Getting libumem
if [ ! -d "lib/libumem" ]; then
    CMD="git clone --depth=1 https://github.com/gburd/libumem.git lib/libumem"
    echo "$CMD"
    $CMD
    cd lib/libumem
    ./autogen.sh
    ./configure
    make -j
    cd ../../
fi

# Getting TCMalloc
if [ ! -d "lib/gperftools" ]; then
    CMD="git clone --depth=1 https://github.com/gperftools/gperftools.git lib/gperftools"
    echo "$CMD"
    $CMD
    cd lib/gperftools
    ./autogen.sh
    ./configure
    make -j
    cd ../../
fi

# Getting JEMalloc
if [ ! -d "lib/jemalloc" ]; then
    CMD="git clone --depth=1 https://github.com/jemalloc/jemalloc.git lib/jemalloc"
    echo "$CMD"
    $CMD
    cd lib/gperftools
    ./autogen.sh
    ./configure
    make -j
    cd ../../
fi
