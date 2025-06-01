if vim.g.loaded_lsp then
    return
end
vim.g.loaded_lsp = true

vim.lsp.config('*', {
  capabilities = {
    textDocument = {
      semanticTokens = {
        multilineTokenSupport = true,
      }
     }
  }
})

vim.lsp.enable('lua')
vim.lsp.enable('bash')
vim.lsp.enable('golang')
vim.lsp.enable('csharp')
