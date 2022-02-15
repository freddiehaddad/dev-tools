local status_ok, plugin, extension

status_ok, plugin = pcall(require, "cmp")
if not status_ok then
  vim.notify("Plugin: cmp not installed!")
  return
end

status_ok, extension = pcall(require, "luasnip")
if not status_ok then
  vim.notify("Extension: luanip not installed!")
  return
end

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local sources = plugin.config.sources({
  { name = "nvim_lsp" },
  { name = "luasnip" },
})

local snippet = {
  expand = function(args)
    extension.lsp_expand(args.body)
  end,
}

local mapping = {
  ["<C-b>"] = plugin.mapping(plugin.mapping.scroll_docs(-4), { "i", "c" }),
  ["<C-f>"] = plugin.mapping(plugin.mapping.scroll_docs(4), { "i", "c" }),
  ["<C-Space>"] = plugin.mapping(plugin.mapping.complete(), { "i", "c" }),
  ["<C-e>"] = plugin.mapping({ i = plugin.mapping.abort(), c = plugin.mapping.close(), }),
  ["<CR>"] = plugin.mapping.confirm({ select = true }),
  ["<Tab>"] = plugin.mapping(function(fallback)
    if plugin.visible() then
      plugin.select_next_item()
    elseif extension.expand_or_jumpable() then
      extension.expand_or_jump()
    elseif has_words_before() then
      plugin.complete()
    else
      fallback()
    end
  end, { "i", "s" }),
  ["<S-Tab>"] = plugin.mapping(function(fallback)
    if plugin.visible() then
      plugin.select_prev_item()
    elseif extension.jumpable(-1) then
      extension.jump(-1)
    else
      fallback()
    end
  end, { "i", "s" }),
}

local options = {
  sources = sources,
  snippet = snippet,
  mapping = mapping,
}

plugin.setup(options)
