return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = function(_, opts)
      vim.list_extend(opts.formatters_by_ft, {
        fish = { "fish_indent" },
      })
    end,
  },
}
