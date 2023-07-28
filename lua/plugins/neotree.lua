local command = function()
  require("neo-tree.command").execute({
    toggle = true,
    position = "right",
  })
end

local description = "Toggle Neotree"

return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "<A-&>", command, desc = description },
    { "<A-e>", command, desc = description },
    { "<leader>&", command, desc = description },
  },
}
