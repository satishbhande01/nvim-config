return {
  {
    "catppuccin/nvim",
    name = "catppuccin", -- Important when using lazy.nvim
    priority = 1000,     -- Load early
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- or "latte", "frappe", "macchiato"
        integrations = {
          treesitter = true,
          lsp_trouble = true,
          cmp = true,
          gitsigns = true,
          telescope = true,
          which_key = true,
          nvimtree = true,
          native_lsp = {
            enabled = true,
            underlines = {
              errors = { "undercurl" },
              hints = { "undercurl" },
              warnings = { "undercurl" },
              information = { "undercurl" },
            },
          },
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
