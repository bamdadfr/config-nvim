return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- Grep
    { "<leader>fw", LazyVim.pick("live_grep"), desc = "Find grep", remap = true },

    -- Recent files
    { "<leader>fo", "<cmd> Telescope oldfiles <cr>", desc = "Find recent files (all)", remap = true },
    {
      "<leader>fO",
      LazyVim.pick("oldfiles", { cwd = LazyVim.root.git() }),
      desc = "Find recent files (cwd)",
      remap = true,
    },

    -- notifications
    {
      "<leader>fN",
      "<cmd>Telescope notify<cr>",
      desc = "Find notifications",
      remap = true,
    },
  },
}
