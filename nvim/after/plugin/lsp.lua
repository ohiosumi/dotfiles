

local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local map = vim.keymap.set
    local lspbuf = vim.lsp.buf
    local bufopts = { noremap=true, silent=true, buffer=bufnr }

  map('n', 'gD', vim.lsp.buf.declaration, bufopts)
  map('n', 'gd', vim.lsp.buf.definition, bufopts)
  map('n', 'K', vim.lsp.buf.hover, bufopts)
  map('n', 'gi', vim.lsp.buf.implementation, bufopts)
  map('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  map('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  map('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  map('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  map('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  map('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  map('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  map('n', 'gr', vim.lsp.buf.references, bufopts)
  map('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

-- CoQ.Nvim
local lspc = require "lspconfig"
local coq = require "coq"
local servers = { 'tsserver', 'stylelint-lsp`'}
vim.g.coq_settings = { auto_start = 'shut-up' }

for _, lsp in ipairs(servers) do
  lspc[lsp].setup(require('coq').lsp_ensure_capabilities({
     on_attach = on_attach,
  }))
end
