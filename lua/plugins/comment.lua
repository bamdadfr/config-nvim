return {
  "numToStr/Comment.nvim",
  lazy = false,
  keys = {
    {
      "<leader>:",
      function()
        require("Comment.api").toggle.linewise.current()
      end,
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
