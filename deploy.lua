-- alternate lua deploy script
require "rttlib"

tc=rtt.getTC()
d=tc:getPeer("deployer")
 
d:loadComponent("Supervisor", "OCL::LuaComponent")
sup = d:getPeer("Supervisor")

sup:exec_file("launch_fsm.lua")
sup:configure()
cmd = rttlib.port_clone_conn(sup:getPort("events"))

print ([[

rFSM - RTT example using Lua deployer.

The FSM is run in the peer "Supervisor".
A connected output port 'cmd' is available to send events to it.
Examples:

  > print(sup) 	         -- print supervisor
  > sup:start()	         -- start Supervisor
  > cmd:write('e_ping')  -- send 'e_ping' event
  > cmd:write('e_ping')  -- send 'e_ping' event

]])