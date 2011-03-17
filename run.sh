RFSM=`rospack find rfsm`
export LUA_PATH=";;;$LUA_PATH;$RFSM/?.lua"

rosrun ocl deployer-gnulinux -s deploy.ops
