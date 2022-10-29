vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>") -- remap <ESC>
keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear search
keymap.set("n", "x", '"_x') -- delete char but NOT copying it into register
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- split window equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- plugin keymaps
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")
