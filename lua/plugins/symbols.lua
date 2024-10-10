-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/editor/aerial.lua
return {
  "stevearc/aerial.nvim",
  keys = {
    { "<A-2>", "<cmd>AerialToggle<cr>", desc = "Aerial (Symbols)" },
    { "<leader>é", "<cmd>AerialToggle<cr>", desc = "Aerial (Symbols)" },
    { "<leader>fs", "<cmd>Telescope aerial<cr>", desc = "Goto Symbol (Aerial)" },
  },
}
