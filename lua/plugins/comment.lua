return {
  "numToStr/Comment.nvim",
  keys = {
    {
      "<leader>:",
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      mode = "n",
      remap = true,
    },
    {
      "<leader>:",
      "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
      desc = "Toggle comment",
      mode = "v",
      remap = true,
    },
  },
  config = function()
    require("Comment").setup()
  end,
}
