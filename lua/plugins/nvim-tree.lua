return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional, for file icons
  },
  config = function()
    local api = require("nvim-tree.api")

    require("nvim-tree").setup({
      view = {
        width = 30,
        side = "left",
        relativenumber = true,
      },
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true,
            folder = true,
            file = true,
            folder_arrow = true,
          },
        },
      },
      git = {
        enable = true,
        ignore = false,
      },
      -- Add this block 👇
      on_attach = function(bufnr)
				api.config.mappings.default_on_attach(bufnr)
        local keymap = vim.keymap.set
        keymap("n", "/", function()
          api.tree.expand_all()
          vim.api.nvim_feedkeys("/","n",false)
        end, { buffer = bufnr, desc = "Expand and search in NvimTree" })
      end,
    })
  end,
}

