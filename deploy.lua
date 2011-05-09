-- alternate lua deploy script
require "rttlib"

tc=rtt.getTC()
d=tc:getPeer("deployer")
 
d:import("rtt")
d:import("ocl")
d:loadComponent("Supervisor", "OCL::LuaComponent")
sup = d:getPeer("Supervisor")

sup:exec_file("launch_fsm.lua")
sup:configure()
cmd = rttlib.port_clone_conn(sup:getPort("events"))
