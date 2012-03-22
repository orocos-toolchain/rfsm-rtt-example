
local state, trans, conn = rfsm.state, rfsm.trans, rfsm.conn

return state {
   ping = state {
      entry=function() print("in ping entry") end,
   },

   pong = state {
      entry=function() print("in pong entry") end,
   },

   trans {src="initial", tgt="ping", effect=function() print("paramx =", paramX) end },
   trans {src="ping", tgt="pong", events={"e_pong"}},
   trans {src="pong", tgt="ping", events={"e_ping"}},
}
