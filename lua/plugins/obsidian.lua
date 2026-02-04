-- default options: https://github.com/obsidian-nvim/obsidian.nvim/blob/main/lua/obsidian/config/default.lua
return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- use latest release, remove to use latest commit
  ft = "markdown",
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false,
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
    { "<leader>od", "<cmd>Obsidian follow_link<cr>", { desc = "Go to Obsidian definition", remap = true } },
    { "<leader>or", "<cmd>Obsidian backlinks<cr>", { desc = "Show Obsidian references", remap = true } },
    { "<leader>of", "<cmd>Obsidian quick_switch<cr>", { desc = "Find Obsidian notes", remap = true } },
    { "<leader>oo", "<cmd>Obsidian today<cr>", { desc = "Create Obsidian note", remap = true } },
    { "<leader>ow", "<cmd>Obsidian search<cr>", { desc = "Search Obsidian (grep)", remap = true } },
    { "<leader>ot", "<cmd>Obsidian template<cr>", { desc = "Use Obsidian template", remap = true } },
  },
}
