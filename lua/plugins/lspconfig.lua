return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		-- Python
    lspconfig.lua_ls.setup({})
    lspconfig.pyright.setup({
			capabilities = capabilities,
		})
		-- Bash
		lspconfig.bashls.setup({
			filetypes={"sh"},
			cmd = {"bash-language-server","start"},
			capabilities = capabilities,
		})
		-- R prog
		lspconfig.r_language_server.setup({
			capabilities = capabilities,
		})
    -- Add more setups as needed
  end,
}

