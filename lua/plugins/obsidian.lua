-- default options: https://github.com/obsidian-nvim/obsidian.nvim/blob/main/lua/obsidian/config/default.lua
return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- use latest release, remove to use latest commit
  ft = "markdown",
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    workspaces = {
      {
        name = "vault",
        path = "~/Nextcloud/obsidian/",
      },
    },
    daily_notes = {
      folder = "notes",
      date_format = "%Y%m%d-Note",
      workdays_only = false,
    },
    templates = {
      folder = "templates",
      date_format = "%Y-%m-%d-%a",
      time_format = "%H:%M",
    },
    ui = {
      enable = false,
    },
  },
  keys = {
    { "<leader>od", "<cmd> ObsidianFollowLink <cr>", { desc = "Go to Obsidian definition", remap = true } },
    { "<leader>or", "<cmd> ObsidianBacklinks <cr>", { desc = "Show Obsidian references", remap = true } },
    { "<leader>of", "<cmd> ObsidianQuickSwitch <cr>", { desc = "Find Obsidian notes", remap = true } },
    { "<leader>oo", "<cmd> ObsidianToday <cr>", { desc = "Create Obsidian note", remap = true } },
    { "<leader>ow", "<cmd> ObsidianSearch <cr>", { desc = "Search Obsidian (grep)", remap = true } },
    { "<leader>ot", "<cmd> ObsidianTemplate <cr>", { desc = "Use Obsidian template", remap = true } },
  },
}
