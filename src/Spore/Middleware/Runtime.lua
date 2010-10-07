--
-- lua-Spore : <http://fperrad.github.com/lua-Spore/>
--

local string = string
local socket = require 'socket' -- See http://lua-users.org/wiki/HiResTimers

module 'Spore.Middleware.Runtime'

function call (self, req)
    local start_time = socket.gettime()

    return  function (res)
                local diff = socket.gettime() - start_time
                res.headers['x-spore-runtime'] = string.format('%.4f', diff)
                return res
            end
end

--
-- Copyright (c) 2010 Francois Perrad
--
-- This library is licensed under the terms of the MIT/X11 license,
-- like Lua itself.
--
