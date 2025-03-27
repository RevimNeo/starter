local actions = require('telescope.actions')

require('telescope').setup{
	defaults = {
		-- Default configuration for telescope goes here:
		-- config_key = value,
		mappings = {
			n = {
				["<leader>q"] = actions.close,
			},
			i = {
				["<C-h>"] = "which_key"
			}
		}
	},
	pickers = {
		-- Default configuration for builtin pickers goes here:
	},
	extensions = {
		-- Your extension configuration goes here:
	}
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>pg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>ph', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>pG', builtin.git_files,{ desc = 'Telescope Git project files' })
