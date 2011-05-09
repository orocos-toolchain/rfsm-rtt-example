
return rfsm.csta {
   ping = rfsm.sista {
      entry=function() print("in ping entry") end,
   },

   pong = rfsm.sista {
      entry=function() print("in pong entry") end,
   },

   rfsm.trans {src="initial", tgt="ping" },
   rfsm.trans {src="ping", tgt="pong", events={"e_pong"}},
   rfsm.trans {src="pong", tgt="ping", events={"e_ping"}},
}
