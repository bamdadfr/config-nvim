return {
  "iamcco/markdown-preview.nvim",
  build = ":call mkdp#util#install()",
  keys = {
    { "<leader>pm", "<cmd>MarkdownPreviewToggle<cr>" },
  },
  ft = {
    "markdown",
  },
}
