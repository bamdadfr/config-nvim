return {
  "numToStr/Comment.nvim",
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
}
