-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set markdown formatting
vim.cmd([[set formatexpr=markdownfmt#Format]])

-- Disable concealing
vim.cmd([[set conceallevel=0]])
