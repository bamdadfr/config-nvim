return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "isort")
      table.insert(opts.ensure_installed, "black")
      table.insert(opts.ensure_installed, "flake8")
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")

      table.insert(opts.sources, nls.builtins.formatting.isort)
      table.insert(opts.sources, nls.builtins.formatting.black)
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
