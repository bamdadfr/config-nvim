-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set spell languages (not working because can't write to snap directory)
-- /snap/nvim/2809/usr/share/nvim/runtime/spell
-- vim.opt.spelllang = { "fr" }

-- Disable spelling
vim.opt.spelllang = {}

-- Set python3
vim.cmd([[let g:python3_host_prog = "/usr/bin/python3.10"]])

-- set text wrapping
vim.cmd([[set wrap]])
vim.cmd([[set linebreak]])

-- Set markdown formatting
vim.cmd([[set formatexpr=markdownfmt#Format]])
