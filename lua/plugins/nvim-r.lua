return {
  "jalvesaq/Nvim-R",
  ft = { "r", "rmd" }, -- Load only for R-related files
  config = function()
    -- Optional global settings
    vim.g.R_assign = 0         -- Don't map `_` to `<-`
    vim.g.R_args = { "--no-save", "--no-restore" } -- R launch args
    -- vim.g.R_app = "Nvim-R"     -- ID for the connection
    vim.g.R_hl_term = 0        -- Disable terminal highlighting
    vim.g.R_auto_start = 2     -- Start R only when calling :RStart

    -- -- Optional custom keymaps
    -- vim.keymap.set("n", "<leader>rs", ":RStart<CR>", { desc = "Start R session" })
    -- vim.keymap.set("n", "<leader>rr", "<Plug>RSendLine", { desc = "Send Line" })
    -- vim.keymap.set("v", "<leader>rr", "<Plug>RSendSelection", { desc = "Send Selection" })
    -- vim.keymap.set("n", "<leader>rf", "<Plug>RSendFile", { desc = "Send File" })
  end,
}

