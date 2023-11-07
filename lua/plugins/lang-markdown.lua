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

      table.insert(opts.sources, nls.builtins.code_actions.proselint.with({ timeout = 2000 }))
      table.insert(opts.sources, nls.builtins.code_actions.ltrs.with({ timeout = 2000 }))
      table.insert(opts.sources, nls.builtins.diagnostics.alex.with({ timeout = 2000 }))
      table.insert(opts.sources, nls.builtins.diagnostics.markdownlint.with({ timeout = 2000 }))
      table.insert(opts.sources, nls.builtins.formatting.markdownlint.with({ timeout = 2000 }))
    end,
  },
}
