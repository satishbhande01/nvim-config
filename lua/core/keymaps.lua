--leader "spacebar"
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--alias
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Save and quit
keymap.set("n", "<leader>w", ":wq<CR>", opts)
keymap.set("n", "<leader>q", ":q<CR>", opts)

-- Normal and Insert mode keymap
keymap.set("i","kj","<ESC>",opts)

--Save using ctrl+s
keymap.set("n", "<C-s>", ":w<CR>", opts)  -- Save in normal mode
keymap.set("i", "<C-s>", "<Esc>:w<CR>a", opts)  -- Save in insert mode

--tree sitter
keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", opts)

--Remove Highlights
keymap.set("n", "<leader>hr", ":nohlsearch<CR>", { desc = "Remove search highlight" })

