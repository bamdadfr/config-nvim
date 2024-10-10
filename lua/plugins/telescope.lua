return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- Grep
    { "<leader>:", false },
    { "<leader>fw", LazyVim.pick("live_grep"), desc = "Find grep", remap = true },

    -- Files
    -- TODO: Remove?
    -- { "<leader>ff", LazyVim.pick("files"), desc = "Find files (all)", remap = true },
    -- { "<leader>fF", LazyVim.pick("files", { cwd = LazyVim.root.git() }), desc = "Find files (cwd)", remap = true },

    -- Recent files
    {
      "<leader>fo",
      LazyVim.pick("oldfiles", { cwd = LazyVim.root.git() }),
      desc = "Find recent files (cwd)",
      remap = true,
    },
    { "<leader>fO", "<cmd> Telescope oldfiles <cr>", desc = "Find recent files (all)", remap = true },
    {
      "<leader>fN",
      "<cmd>Telescope notify<cr>",
      desc = "Find notifications",
      remap = true,
    },
  },
}
