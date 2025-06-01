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

vim.api.nvim_create_autocmd('LspAttach', { 
    group = vim.api.nvim_create_augroup('my.lsp',{}),
    callback = function(args)
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
        if client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, args.buf, {autotrigger = true})
        end
        if not client:supports_method('textDocument/willSaveWaitUntil') and client:supports_method('textDocument/formatting') then
            vim.api.nvim_create_autocmd('BufWritePre', {
                group = vim.api.nvim_create_augroup('my.lsp', {clear = false}),
                buffer = args.buf,
                callback = function ()
                    vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000})
                end,
            })
        end
    end
})
