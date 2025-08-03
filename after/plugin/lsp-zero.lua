-- Working LSP setup without mason-lspconfig (since it's not installed)

-- Setup mason
require('mason').setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

-- Setup completion
local cmp = require('cmp')
cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}),
    ['<C-n>'] = cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
})

-- Get LSP capabilities from cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Common on_attach function
local on_attach = function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }
  
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<C-h>', vim.lsp.buf.signature_help, opts)
end

-- Setup LSP servers manually
local lspconfig = require('lspconfig')

-- Check if servers are available before setting up
local function setup_server(server_name, config)
  local ok, _ = pcall(lspconfig[server_name].setup, config)
  if not ok then
    vim.notify("Failed to setup " .. server_name .. ". Install it with :Mason", vim.log.levels.WARN)
  end
end

-- Lua LSP
setup_server('lua_ls', {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = {'vim'},
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
})

-- TypeScript LSP  
setup_server('ts_ls', {
  capabilities = capabilities,
  on_attach = on_attach,
})

-- Installation reminder
vim.notify("LSP setup complete! Install language servers with :Mason", vim.log.levels.INFO)
