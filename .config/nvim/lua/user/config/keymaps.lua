local map = vim.keymap.set
local defaults = { noremap = true, silent = true }

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

map("n", "<leader>pv", vim.cmd.Ex)

-- Navigate panes
map('n', '<c-h>', ':wincmd h<CR>')
map('n', '<c-j>', ':wincmd j<CR>')
map('n', '<c-k>', ':wincmd k<CR>')
map('n', '<c-l>', ':wincmd l<CR>')

-- Move selected block down (J) or up (K)
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Indent selected blocks
map("v", "<", "<gv")
map("v", ">", ">gv")

map('n', 'd', '"_d', {})
map('n', 'c', '"_c', {})

-- Insert empty line without entering insert mode
map('n', '<leader>o', ':<C-u>call append(line("."), repeat([""], v:count1))<CR>', defaults)
map('n', '<leader>O', ':<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>', defaults)
