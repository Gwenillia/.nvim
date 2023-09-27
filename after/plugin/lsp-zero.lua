local lsp = require('lsp-zero')

lsp.preset("recommended")

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'tsserver', 'lua_ls'},
	handlers = {
		lsp.default_setup,
	},
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
		['<C-y>'] = cmp.mapping.confirm({ select = true }),
		['<C-Space>'] = cmp.mapping.complete(),
	})
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }
	-- vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
	-- vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
	-- vim.keymap.set('n', '[d', function() vim.lsp.buf.goto_next() end, opts)
	-- vim.keymap.set('n', ']d', function() vim.lsp.buf.goto_prev() end, opts)
end)

lsp.setup()
