return {
  "kkoomen/vim-doge",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  keys = {
    { "<leader>gk", "<cmd> DogeGenerate <cr>", desc = "Generate documentation" },
  },
  lazy = false,
  config = function()
    vim.cmd([[call doge#install()]])
    vim.cmd([[let g:doge_doc_standard_python = "google"]])
  end,
}
