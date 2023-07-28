local toggle = {
  command = function()
    require("neo-tree.command").execute({
      toggle = true,
      position = "right",
    })
  end,
  description = "Toggle Neotree",
}

local focus = {
  command = "<cmd>Neotree focus right<cr>",
  description = "Focus Neotree",
}

return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "<A-&>", toggle.command, desc = toggle.description },
    { "<leader>&", toggle.command, desc = toggle.description },
    { "<A-e>", focus.command, desc = focus.description },
    { "<leader>e", focus.command, desc = focus.description },
  },
}
