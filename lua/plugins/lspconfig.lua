return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

    lspconfig.lua_ls.setup({})
    lspconfig.pyright.setup({
			capabilities = capabilities,
		})
		lspconfig.bashls.setup({
			filetypes={"sh"},
			cmd = {"bash-language-server","start"},
			capabilities = capabilities,
		})
    -- Add more setups as needed
  end,
}

