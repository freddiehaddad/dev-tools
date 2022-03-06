local M = {}

local setup = function()
  -- Hook the DAP UI to the DAP events
  local dap, dapui = require('dap'), require('dapui')

  dapui.setup()

  dap.listeners.after.event_initialized['dapui_config'] = function()
    dapui.open()
  end

  dap.listeners.before.event_terminated['dapui_config'] = function()
    dapui.close()
  end

  dap.listeners.before.event_exited['dapui_config'] = function()
    dapui.close()
  end
end

M.setup = setup

return M
