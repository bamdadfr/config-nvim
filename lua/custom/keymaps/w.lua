-- Unbind `w`
vim.keymap.set("n", "w", "z")
vim.keymap.set("n", "<S-w>", "<S-z>")
vim.keymap.set("n", "<C-w>", "<C-z>")
vim.keymap.set("n", "cw", "cz")
vim.keymap.set("n", "dw", "dz")

-- Bind `z`
vim.keymap.set("n", "z", "w")
vim.keymap.set("n", "<S-z>", "<S-w>")
vim.keymap.set("n", "<C-z>", "<C-w>")
vim.keymap.set("n", "cz", "cw")
vim.keymap.set("n", "dz", "dw")
vim.keymap.set("n", "viz", "viw")
vim.keymap.set("n", "viZ", "viW")
