return {
  "kkoomen/vim-doge",
  lazy = false,
  keys = {
    { "<leader>gk", "<cmd> DogeGenerate <cr>", desc = "Generate documentation" },
  },
  config = function()
    vim.cmd([[silent! call doge#install()]])
    vim.cmd([[let g:doge_doc_standard_python = "google"]])
  end,
}
