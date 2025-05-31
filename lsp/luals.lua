return {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
  settings = {
    Lua = {
      workspace = {
          library = {"/home/hrn/.local/share/bob/nightly/share/nvim/runtime"},
      },
      runtime = {
          version = 'LuaJIT',
      }
    }
  }
}
