local status = pcall(require, "telescope")

if not status then
  return
end

vim.opt.inccommand = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true

require("telescope").setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "__pycache__",
      "venv",
    },
  },
}
