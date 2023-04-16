vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<C-left>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<C-right>', '<Cmd>BufferNext<CR>', opts)
-- Goto buffer in position...
map('n', '<leader>b1', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<leader>b2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<leader>b3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<leader>b4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<leader>b5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<leader>b6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<leader>b7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<leader>b8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<leader>b9', '<Cmd>BufferGoto 9<CR>', opts)

-- Sort automatically by...
map('n', '<leader>bb', '<Cmd>BufferOrderByDirectory<CR>', opts)
