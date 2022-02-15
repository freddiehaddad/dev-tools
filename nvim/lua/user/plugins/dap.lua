local status_ok, dap, dapui, config

status_ok, dap = pcall(require, "dap")
if not status_ok then
  vim.notify("Plugin: dap not found!")
  return
end

status_ok, dapui = pcall(require, "dapui")
if not status_ok then
  vim.notify("Plugin: dapui not found!")
  return
end

dapui.setup()

-- Automate DAP UI opening/closing
dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end

-- Configure DAP language ocnfigurations
status_ok, config = pcall(require, "dap-go")
if not status_ok then
  vim.notify("Config: dap-go not found!")
  return
end

config.setup()

