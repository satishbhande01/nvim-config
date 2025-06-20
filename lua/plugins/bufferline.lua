return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- for file icons
    },
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers", -- use "tabs" to show tabpages instead
          separator_style = "thin", -- "slant" | "thick" | "thin"
          diagnostics = "nvim_lsp",  -- show LSP diagnostics
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              text_align = "left",
              separator = true,
            },
          },
          show_buffer_close_icons = true,
          show_close_icon = true,
          always_show_bufferline = true,
        },
      })

      --keymaps for navigation
      local keymap = vim.keymap.set
      keymap("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next Buffer" })
      keymap("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Previous Buffer" })
      keymap("n", "<leader>bq", "<Cmd>bdelete<CR>", { desc = "Delete Current Buffer" })
      keymap("n", "<leader>bp", "<Cmd>BufferLinePick<CR>", { desc = "Pick Buffer" })
    end,
  },
}
