vim.keymap.set("n", "<A-w>", function()
  require("nvchad_ui.tabufline").close_buffer()
end)
