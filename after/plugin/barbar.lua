vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<C-left>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<C-right>', '<Cmd>BufferNext<CR>', opts)

-- Sort automatically by...
map('n', '<leader>bb', '<Cmd>BufferOrderByDirectory<CR>', opts)
