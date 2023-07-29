return {
  "numToStr/Comment.nvim",
  keys = {
    {
      "<leader>:",
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      mode = "n",
    },
    {
      "<leader>:",
      "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
      desc = "Toggle comment",
      mode = "v",
    },
  },
  config = function()
    require("Comment").setup()
  end,
}
