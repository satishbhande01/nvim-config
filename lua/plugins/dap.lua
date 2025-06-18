return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
			 "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup()
      require("nvim-dap-virtual-text").setup()

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      -- dap.listeners.before.event_terminated["dapui_config"] = function()
        -- dapui.close()
      -- end
      -- dap.listeners.before.event_exited["dapui_config"] = function()
        -- dapui.close()
      -- end

      -- Keymaps...
      -- vim.keymap.set("n", "<F5>", function() dap.continue() end, { desc = "Start/Continue Debugging" })
			vim.keymap.set("n", "<F5>", function()
				vim.cmd("write")         -- Save the current buffer (:w)
				require("dap").continue() -- Start or continue debugging
			end, { desc = "Save and Start/Continue Debugging" })

			vim.keymap.set("n", "<F10>", function() dap.step_over() end, { desc = "Step Over" })
      vim.keymap.set("n", "<F11>", function() dap.step_into() end, { desc = "Step Into" })
      vim.keymap.set("n", "<F12>", function() dap.step_out() end, { desc = "Step Out" })
      vim.keymap.set("n", "<Leader>b", function() dap.toggle_breakpoint() end, { desc = "Toggle Breakpoint" })
      vim.keymap.set("n", "<Leader>B", function() dap.set_breakpoint(vim.fn.input("Breakpoint condition: ")) end, { desc = "Set Conditional Breakpoint" })
      vim.keymap.set("n", "<Leader>dr", function() dap.repl.open() end, { desc = "Open DAP REPL" })
      vim.keymap.set("n", "<Leader>du", function() dapui.toggle() end, { desc = "Toggle DAP UI" })

      -- ✅ Load Python DAP config
      require("plugins.dap.python")
    end,
  }
}
