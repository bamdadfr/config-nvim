return {
  "folke/todo-comments.nvim",
  opts = {
    keywords = {
      STALL = { icon = " ", color = "info" },
    },
  },
  keys = {
    { "<leader>sT", "<cmd>TodoTelescope<cr>", desc = "Find all TODOs" },
    {
      "<leader>st",
      function()
        require("todo-comments.fzf").todo({ keywords = { "TODO", "FIX", "FIXME" } })
      end,
      desc = "TODO/FIX/FIXME",
    },
    {
      "<leader>sT",
      function()
        require("todo-comments.fzf").todo()
      end,
      desc = "ALL TODOS",
    },
    {
      "<leader>ss",
      function()
        require("todo-comments.fzf").todo({ keywords = { "STALL" } })
      end,
      desc = "STALL",
    },
    {
      "<leader>si",
      function()
        require("todo-comments.fzf").todo({ keywords = { "INFO" } })
      end,
      desc = "INFO",
    },
  },
}
