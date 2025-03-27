require('gitsigns').setup {
	signs = {
		add          = { text = '+' },
		change       = { text = '~' },
		delete       = { text = '_' },
		topdelete    = { text = '‾' },
		changedelete = { text = '~' },
	},
	numhl = true,  -- Highlight line numbers
	linehl = false, -- Disable full-line highlights
	watch_gitdir = { interval = 1000 },
}

vim.keymap.set('n', '<leader>gs', ':Gitsigns stage_hunk<CR>')
vim.keymap.set('n', '<leader>gp', ':Gitsigns preview_hunk<CR>')
vim.keymap.set('n', '<leader>gr', ':Gitsigns reset_hunk<CR>')
vim.keymap.set('n', '<leader>gb', ':Gitsigns toggle_current_line_blame<CR>')
vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>', { noremap = true, silent = true })

