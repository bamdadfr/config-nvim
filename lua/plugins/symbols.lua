-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/editor/aerial.lua
return {
  "stevearc/aerial.nvim",
  keys = {
    { "<A-é>", "<cmd>AerialToggle<cr>", desc = "Aerial (Symbols)" },
    { "<leader>fs", "<cmd>Telescope aerial<cr>", desc = "Goto Symbol (Aerial)" },
  },
}
