local status_ok, gitsigns = pcall(require, "gitsigns")
if not status_ok then
  vim.notify("gitsigns plugin not found!")
  return
end

local function current_line_blame_formatter(_, blame_info, opts)
  local text
  if blame_info.author == "Not Committed Yet" then
    text = blame_info.author
  else
    local date_time
    if opts.relative_time then
      date_time = require("gitsigns.util").get_relative_time(tonumber(blame_info["author_time"]))
    else
      date_time = os.date("%Y-%m-%d", tonumber(blame_info["author_time"]))
    end

    text = string.format("%s, %s - %s", blame_info.author, date_time, blame_info.summary)
  end
  return {{" " .. text, "Label"}}
end

gitsigns.setup {
  current_line_blame_formatter = current_line_blame_formatter
}

