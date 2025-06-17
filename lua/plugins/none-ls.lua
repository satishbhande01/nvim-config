return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "jay-babu/mason-null-ls.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.black,
        -- null_ls.builtins.diagnostics.ruff,
        null_ls.builtins.formatting.stylua,
      },
    })

    require("mason-null-ls").setup({
      ensure_installed = { "black", "flake8", "stylua" },
      automatic_installation = true,
    })
  end,
}

