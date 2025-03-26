vim.opt.termguicolors = true
require("bufferline").setup({})

-- Navigate between buffers
vim.api.nvim_set_keymap('n', '<Leader>bn', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>bp', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>bc', ':BufferLinePickClose<CR>', { noremap = true, silent = true })
