-- Options

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
vim.cmd [[set relativenumber]]

vim.opt.shell = "fish"
vim.opt.colorcolumn = "80"

-- Keymaps
-- Invert `w` and `z` keys
vim.keymap.set("n", "w", "z")
vim.keymap.set("n", "<S-w>", "<S-z>")
vim.keymap.set("n", "<C-w>", "<C-z>")
vim.keymap.set("n", "cw", "cz")
vim.keymap.set("n", "dw", "dz")

vim.keymap.set("n", "z", "w")
vim.keymap.set("n", "<S-z>", "<S-w>")
vim.keymap.set("n", "<C-z>", "<C-w>")
vim.keymap.set("n", "cz", "cw")
vim.keymap.set("n", "dz", "dw")
vim.keymap.set("n", "viz", "viw")
vim.keymap.set("n", "viZ", "viW")

-- Commands

vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
  augroup END
]]

-- Imported custom configuration

vim.opt.wildignore:append {
  "*/node_modules/*",
  "*/__pycache__/*",
  "*/venv/*",
}

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
vim.opt.inccommand = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smartab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false -- No Wrap lines
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append { "**" } -- Finding files - Search down into subfolders

require("telescope").setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "__pycache__",
      "venv",
    },
  },
}

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Add asterisks in block comments
vim.opt.formatoptions:append { "r" }
