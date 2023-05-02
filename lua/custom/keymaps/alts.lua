-- alt+s
vim.keymap.set("n", "<A-s>", "<cmd> w <CR>")

-- alt+w
vim.keymap.set("n", "<A-w>", function()
  require("nvchad_ui.tabufline").close_buffer()
end)

-- ctrl+alt+9
vim.keymap.set("n", "<A-9>", "<cmd> LazyGit <CR>")
