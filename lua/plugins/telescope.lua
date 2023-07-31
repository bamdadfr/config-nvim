local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- Grep
    { "<leader>fw", Util.telescope("live_grep"), desc = "Find grep", remap = true },
    -- Files
    { "<leader>ff", Util.telescope("files", { cwd = false }), desc = "Find files (all)", remap = true },
    { "<leader>fF", Util.telescope("files"), desc = "Find files (cwd)", remap = true },
    -- Recent files
    { "<leader>fo", "<cmd> Telescope oldfiles <cr>", desc = "Find recent files (all)", remap = true },
    {
      "<leader>fO",
      Util.telescope("oldfiles", { cwd = vim.loop.cwd() }),
      desc = "Find recent files (cwd)",
      remap = true,
    },
  },
}
