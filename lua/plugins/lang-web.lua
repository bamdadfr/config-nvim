return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "html",
        "javascript",
        "jsdoc",
        "scss",
        "tsx",
        "typescript",
        "vue",
      })
    end,
  },
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "css-lsp",
        "prettier",
        "typescript-language-server",
        "vue-language-server",
        "stylelint",
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        css = { "prettier" },
        html = { "prettier" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        vue = { "prettier" },
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      local filetypes = { "scss", "less", "css", "sass", "vue" }

      table.insert(opts.sources, nls.builtins.formatting.stylelint.with({ filetypes = filetypes }))
      table.insert(opts.sources, nls.builtins.diagnostics.stylelint.with({ filetypes = filetypes }))
    end,
  },
}
