local M = {}

function M.config()
	local lsp = require('lsp-zero').preset({})

	lsp.on_attach(function(client, bufnr)
		lsp.default_keymaps({buffer = bufnr})
		client.server_capabilities.semanticTokensProvider = nil
	end)

	require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

	lsp.setup()
end

return M
