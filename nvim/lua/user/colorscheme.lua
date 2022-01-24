local colorscheme = "nord"

local status_ok, nord = pcall(require, colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

nord.set()

