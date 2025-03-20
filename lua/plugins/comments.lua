return {
  {
    "ibhagwan/fzf-lua",
    lazy = false,
    keys = {
      { "<leader>:", mode = { "n", "x", "o" }, false },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    keys = {
      { "<leader>:", mode = { "n", "x", "o" }, false },
    },
  },
  {
    "folke/snacks.nvim",
    lazy = false,
    keys = {
      { "<leader>:", mode = { "n", "x", "o" }, false },
    },
  },
  {
    "numToStr/Comment.nvim",
    lazy = false,
    keys = {
      {
        "<leader>:",
        function()
          require("Comment.api").toggle.linewise.current()
          vim.cmd("normal! j")
        end,
        mode = "n",
      },
      {
        "<leader>:",
        "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>j",
        desc = "Toggle comment",
        mode = "v",
      },
    },
  },
}
