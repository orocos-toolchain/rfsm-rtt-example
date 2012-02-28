#!/bin/bash

RFSM=`rospack find rfsm`
OCL=`rospack find ocl`

export LUA_PATH=";;;$LUA_PATH;$RFSM/?.lua;$OCL/lua/modules/?.lua"

if [[ $1 == "-l" ]]; then
    rosrun ocl rttlua-gnulinux -i deploy.lua
elif [[ $1 == "-t" ]]; then
    rosrun ocl deployer-gnulinux -s deploy.ops
else
    cat <<EOF
run.sh
launch the minimal rFSM - RTT example.

  Options:
     -t     run rtt taskbrowser
     -l     run rttlua-gnulinux deployer
     -h     print this
EOF
fi
