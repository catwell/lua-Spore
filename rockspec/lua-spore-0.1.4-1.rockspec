package = 'lua-Spore'
version = '0.1.4-1'
source = {
    url = 'http://cloud.github.com/downloads/fperrad/lua-Spore/lua-spore-0.1.4.tar.gz',
    md5 = '54d2be13fe4b227612479251cf922efb',
    dir = 'lua-Spore-0.1.4',
}
description = {
    summary = "a generic ReST client",
    detailed = [[
        lua-Spore is an implementation of SPORE (Specification to a POrtable Rest Environment),
        see http://github.com/SPORE/specifications.

        Some specifications of service are available at
        http://github.com/SPORE/api-description.
    ]],
    homepage = 'http://fperrad.github.com/lua-Spore',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
    'luasocket >= 2.0.2',
--    'luasec >= 0.4',            -- libssl-dev
    'luajson >= 1.1',
--    'luaexpat >= 1.1.0',        -- libexpat1-dev
--    'luayaml >= 0.5.6',         -- syck 0.55
--    'lualogging >= 1.1.4',
--    'luacrypto >= 0.2.0',
    'lua-testmore >= 0.2.3',
}
build = {
    type = 'builtin',
    modules = {
        ['Spore']                               = 'src/Spore.lua',
        ['Spore.Core']                          = 'src/Spore/Core.lua',
        ['Spore.Middleware.Auth.AWS']           = 'src/Spore/Middleware/Auth/AWS.lua',
        ['Spore.Middleware.Auth.Basic']         = 'src/Spore/Middleware/Auth/Basic.lua',
        ['Spore.Middleware.Auth.Bearer']        = 'src/Spore/Middleware/Auth/Bearer.lua',
        ['Spore.Middleware.Auth.Digest']        = 'src/Spore/Middleware/Auth/Digest.lua',
        ['Spore.Middleware.Auth.OAuth']         = 'src/Spore/Middleware/Auth/OAuth.lua',
        ['Spore.Middleware.Cache']              = 'src/Spore/Middleware/Cache.lua',
        ['Spore.Middleware.DoNotTrack']         = 'src/Spore/Middleware/DoNotTrack.lua',
        ['Spore.Middleware.Format.JSON']        = 'src/Spore/Middleware/Format/JSON.lua',
        ['Spore.Middleware.Format.XML']         = 'src/Spore/Middleware/Format/XML.lua',
        ['Spore.Middleware.Format.YAML']        = 'src/Spore/Middleware/Format/YAML.lua',
        ['Spore.Middleware.Logging']            = 'src/Spore/Middleware/Logging.lua',
        ['Spore.Middleware.Mock']               = 'src/Spore/Middleware/Mock.lua',
        ['Spore.Middleware.Parameter.Default']  = 'src/Spore/Middleware/Parameter/Default.lua',
        ['Spore.Middleware.Parameter.Force']    = 'src/Spore/Middleware/Parameter/Force.lua',
        ['Spore.Middleware.Proxy.Basic']        = 'src/Spore/Middleware/Proxy/Basic.lua',
        ['Spore.Middleware.Redirection']        = 'src/Spore/Middleware/Redirection.lua',
        ['Spore.Middleware.Runtime']            = 'src/Spore/Middleware/Runtime.lua',
        ['Spore.Middleware.UserAgent']          = 'src/Spore/Middleware/UserAgent.lua',
        ['Spore.Protocols']                     = 'src/Spore/Protocols.lua',
        ['Spore.Request']                       = 'src/Spore/Request.lua',
    },
    copy_directories = { 'doc', 'test' },
}
