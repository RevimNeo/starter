-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

local function on_attach(bufnr)
	local api = require "nvim-tree.api"

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
	vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
end

-- OR setup with some options
require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
	on_attach = on_attach,
})

vim.keymap.set("n", "<leader>pt", "<cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })
