-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)

-- this is an attempt to do yaml.ansible disabling b/c it isn't working correctly
--[[
vim.filetype.add({
  pattern = {
    [".*%.ya?ml%.j2$"] = { "yaml.ansible", { priority = 100 } },
    [".*%.tmpl%.ya?ml$"] = { "yaml.ansible", { priority = 100 } },
    [".*%.template%.ya?ml$"] = { "yaml.ansible", { priority = 100 } },
    [".*%.ya?ml%.tmpl$"] = { "yaml.ansible", { priority = 100 } },
    [".*%.ya?ml%.template$"] = { "yaml.ansible", { priority = 100 } },
  },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "yaml.ansible",
  callback = function()
    vim.treesitter.stop()
  end,
})
print("autocmds loaded")
--]]
