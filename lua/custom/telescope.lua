local status = pcall(require, "telescope")

if not status then
  return
end

vim.opt.inccommand = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true

local defaults = {
  file_ignore_patterns = {
    "node_modules",
    "__pycache__",
    "venv",
  },
}

require("telescope").setup {
  defaults = defaults,
}
