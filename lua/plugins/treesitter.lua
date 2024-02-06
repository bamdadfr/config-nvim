return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "dockerfile",
      "glsl",
      "html",
      "javascript",
      "jsdoc",
      "python",
      "scss",
      "tsx",
      "typescript",
      "vue",
    })
  end,
}
