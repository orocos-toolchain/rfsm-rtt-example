
return rfsm.csta:new {
   ping = rfsm.sista:new{
      entry=function()
	       print("in ping entry")
	    end, },

   pong = rfsm.sista:new{ 
      entry=function()
	       print("in pong entry")
	    end, },

   rfsm.trans:new{src="initial", tgt="ping" },
   rfsm.trans:new{src="ping", tgt="pong", events={"e_done"}},
   rfsm.trans:new{src="pong", tgt="ping", events={"e_done"}},
}
