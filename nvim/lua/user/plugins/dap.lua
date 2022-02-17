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

local options = {
  theme = false -- disable the built-in dap-ui theme
}

dapui.setup(options)

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

-- vim.cmd("hi default link DapUIVariable Normal")
-- vim.cmd("hi default DapUIScope guifg=#88C0D0")
-- vim.cmd("hi default DapUIType guifg=#81A1C1")
-- vim.cmd("hi default link DapUIValue Normal")
-- vim.cmd("hi default DapUIModifiedValue guifg=#88C0D0 gui=bold")
-- vim.cmd("hi default DapUIDecoration guifg=#88C0D0")
-- vim.cmd("hi default DapUIThread guifg=#88C0D0")
-- vim.cmd("hi default DapUIStoppedThread guifg=#88C0D0")
-- vim.cmd("hi default link DapUIFrameName Normal")
-- vim.cmd("hi default DapUISource guifg=#81A1C1")
-- vim.cmd("hi default DapUILineNumber guifg=#88C0D0")
-- vim.cmd("hi default DapUIFloatBorder guifg=#88C0D0")
-- vim.cmd("hi default DapUIWatchesEmpty guifg=#BF616A")
-- vim.cmd("hi default DapUIWatchesValue guifg=#88C0D0")
-- vim.cmd("hi default DapUIWatchesError guifg=#BF616A")
-- vim.cmd("hi default DapUIBreakpointsPath guifg=#88C0D0")
-- vim.cmd("hi default DapUIBreakpointsInfo guifg=#88C0D0")
-- vim.cmd("hi default DapUIBreakpointsCurrentLine guifg=#88C0D0 gui=bold")
-- vim.cmd("hi default link DapUIBreakpointsLine DapUILineNumber")
