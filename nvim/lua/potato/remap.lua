vim.g.mapleader = " "
-- Open file explorer in normal mode mapped to leader pv
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Comfort binds
-- vim.keymap.set("n", ";", ":")
vim.keymap.set("i", "jj", "<esc>")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

-- Move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move current line to end
-- vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
