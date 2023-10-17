return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "proselint",
        "alex",
        "markdownlint",
        "marksman",
      })
    end,
  },
  {
    "nvimtools/none-ls.nvim",
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
