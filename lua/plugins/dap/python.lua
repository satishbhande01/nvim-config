local dap = require("dap")

dap.adapters.python = {
  type = 'executable',
  command = vim.fn.stdpath("data") .. '/mason/packages/debugpy/venv/bin/python',
  args = { '-m', 'debugpy.adapter' },
}

dap.configurations.python = {
  {
    type = 'python',
    request = 'launch',
    name = "Launch file",
    program = "${file}", -- current buffer
		console = "integratedTerminal",
		justMyCode = true,
    pythonPath = function()
      return vim.fn.stdpath("data") .. '/mason/packages/debugpy/venv/bin/python'
    end,
  },
}
