local on_attach = function(_,bufnr)
	local opts = {
		noremap = true,
		silent = true,
		buffer = bufnr,
	}
	local map = vim.keymap.set

	map("n", "gd", vim.lsp.buf.definition, opts)
	map("n", "gr", vim.lsp.buf.references, opts)
	map("n", "K", vim.lsp.buf.hover, opts)
	map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
	map("n", "<leader>rn", vim.lsp.buf.rename, opts)
	map("n", "<leader>e", vim.diagnostic.open_float, opts)
	map("n", "[d", vim.diagnostic.goto_prev, opts)
	map("n", "]d", vim.diagnostic.goto_next, opts)
end

local mason = require("mason")

mason.setup({})

require("lspconfig").lua_ls.setup({
	settings = {
		Lua = {
			runtime = { version = "LuaJIT" },
			diagnostics = { globals = { "vim" } },
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
})

local mason_lsp = require("mason-lspconfig")

mason_lsp.setup({
	ensure_installed = {
		"ts_ls", "lua_ls"
	},
})

mason_lsp.setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({
			on_attach = on_attach
		})
	end
})
