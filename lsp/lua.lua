local xos = require("xos")
return {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
    settings = {
        Lua = {
            workspace = {
                library = { xos.lua.runtime_path },
            },
            runtime = {
                version = 'LuaJIT',
            }
        }
    }
}
