return {
    "kylechui/nvim-surround",
    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Optional config options can go here
        })
        -- Custom keymaps (outside the setup function)
        vim.keymap.set("n", "<leader>yQ", "ysiw\"", { remap = true, desc = "Surround word with double quotes" })
        vim.keymap.set("n", "<leader>yq", "ysiw'", { remap = true, desc = "Surround word with single quotes" })
        vim.keymap.set("n", "<leader>yb", "ysiw)", { remap = true, desc = "Surround word with brackets" })
    end,
}
