RFSM=`rospack find rfsm`
OCL=`rospack find ocl`
export LUA_PATH=";;;$LUA_PATH;$RFSM/?.lua;$OCL/lua/modules/?.lua"

# rosrun ocl deployer-gnulinux -s deploy.ops
rosrun ocl rttlua-gnulinux -i deploy.lua
