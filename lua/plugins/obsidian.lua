return {
  "epwalsh/obsidian.nvim",
  -- "bamdadsabbagh/obsidian.nvim",
  lazy = false,
  event = {
    "BufReadPre " .. vim.fn.expand("~") .. "/Nextcloud/obsidian/**.md",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    dir = "~/Nextcloud/obsidian/",
    new_notes_location = "current_dir",
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
    daily_notes = {
      folder = "notes",
      date_format = "%Y%m%d-Note-",
    },
    templates = {
      folder = "templates",
      date_format = "%Y-%m-%d-%a",
      time_format = "%H:%M",
    },
    mappings = {},
  },
  config = function(_, opts)
    require("obsidian").setup(opts)
  end,
  keys = {
    { "<leader>od", "<cmd> ObsidianFollowLink <cr>", { desc = "Go to Obsidian definition", remap = true } },
    { "<leader>or", "<cmd> ObsidianBacklinks <cr>", { desc = "Show Obsidian references", remap = true } },
    { "<leader>of", "<cmd> ObsidianQuickSwitch <cr>", { desc = "Find Obsidian notes", remap = true } },
    { "<leader>oo", "<cmd> ObsidianToday <cr>", { desc = "Create Obsidian note", remap = true } },
    { "<leader>ow", "<cmd> ObsidianSearch <cr>", { desc = "Search Obsidian (grep)", remap = true } },
    { "<leader>ot", "<cmd> ObsidianTemplate <cr>", { desc = "Use Obsidian template", remap = true } },
  },
}
