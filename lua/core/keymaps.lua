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
-- For nvim-terminal (like in case of nvim-r)
keymap.set("t", "kj", [[<C-\><C-n>]],opts)

--Save using ctrl+s
keymap.set("n", "<C-s>", ":w<CR>", opts)  -- Save in normal mode
keymap.set("i", "<C-s>", "<Esc>:w<CR>a", opts)  -- Save in insert mode

--nvim-tree
keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", opts)
keymap.set("n","<leader>te",function()
	require("nvim-tree.api").tree.expand_all()
end, {desc = "Expand Folders in NvimTree"}
)
keymap.set("n","<leader>tc",function()
	require("nvim-tree.api").tree.collapse_all()
end, {desc = "Collapse Folders in NvimTree"}
)

--Remove Highlights
keymap.set("n", "<leader>hr", ":nohlsearch<CR>", { desc = "Remove search highlight" })

--Navigation using ctrl
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to below split" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper split" })

-- Git status UI
keymap.set("n", "<leader>gs", "<cmd>Neogit<CR>", { desc = "Open Neogit" })

-- Git diff view
keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<CR>", { desc = "View Git diff" })
keymap.set("n", "<leader>gD", "<cmd>DiffviewClose<CR>", { desc = "Close Git diff" })

-- Gitsigns staging, etc.
keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Preview Git hunk" })
keymap.set("n", "<leader>gh", ":Gitsigns stage_hunk<CR>", { desc = "Stage Git hunk" })
keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", { desc = "Reset Git hunk" })
keymap.set("n", "<leader>gb", ":Gitsigns blame_line<CR>", { desc = "Blame line" })

-- Copy all (entire buffer)
keymap.set("n", "<leader>ca", "ggVGy", { desc = "Copy entire buffer" })

-- Cut all (delete entire buffer)
keymap.set("n", "<leader>cx", "ggVGd", { desc = "Cut entire buffer" })
