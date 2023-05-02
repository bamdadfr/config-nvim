-- alt+s
vim.keymap.set("n", "<A-s>", "<cmd> w <CR>")

-- alt+w
vim.keymap.set("n", "<A-w>", function()
  require("nvchad_ui.tabufline").close_buffer()
end)

-- alt+9
vim.keymap.set("n", "<A-ç>", "<cmd> LazyGit <CR>")

-- alt+1
vim.keymap.set("n", "<A-&>", "<cmd> NvimTreeToggle <CR>")

-- alt+$
vim.keymap.set("n", "<A-$>", "<cmd> vsp <CR>")

-- alt+8
vim.keymap.set("n", "<A-_>", "<cmd> TodoTrouble <CR>")
