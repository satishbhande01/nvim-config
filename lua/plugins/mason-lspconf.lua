return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "williamboman/mason.nvim" },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "pyright","bashls" }, -- add more LSPs as needed
      automatic_installation = true,
    })
  end,
}

