return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "proselint")
      table.insert(opts.ensure_installed, "alex")
      table.insert(opts.ensure_installed, "markdownlint")
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")

      table.insert(opts.sources, nls.builtins.code_actions.proselint)
      table.insert(opts.sources, nls.builtins.code_actions.ltrs)
      table.insert(opts.sources, nls.builtins.diagnostics.alex)
      table.insert(opts.sources, nls.builtins.diagnostics.markdownlint)
      table.insert(opts.sources, nls.builtins.formatting.markdownlint)
    end,
  },
}