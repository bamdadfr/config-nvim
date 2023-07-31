local toggle = {
  command = function()
    require("neo-tree.command").execute({
      toggle = true,
    })
  end,
  description = "Toggle Neotree",
}

local focus = {
  command = "<cmd>Neotree focus<cr>",
  description = "Focus Neotree",
}

return {
  "nvim-neo-tree/neo-tree.nvim",
  lazy = false,
  keys = {
    { "<A-&>", toggle.command, desc = toggle.description },
    { "<leader>&", toggle.command, desc = toggle.description },
    { "<A-e>", focus.command, desc = focus.description },
    { "<leader>e", focus.command, desc = focus.description },
  },
  config = function()
    require("neo-tree").setup({
      window = {
        position = "right",
        width = 50,
      },
    })
  end,
}
