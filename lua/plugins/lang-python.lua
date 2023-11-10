return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "flake8",
      })
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")

      table.insert(
        opts.sources,
        nls.builtins.diagnostics.flake8.with({
          args = {
            "--format",
            "default",
            "--max-line-length",
            "88",
            "--stdin-display-name",
            "$FILENAME",
            "-",
          },
        })
      )
    end,
  },
}
