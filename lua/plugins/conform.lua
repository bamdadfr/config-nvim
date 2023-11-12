return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "markdownlint",
        "prettierd",
        "isort",
        "black",
        "vue-language-server",
        "typescript-language-server",
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    lazy = true,
    cmd = "ConformInfo",
    opts = function(_, opts)
      local conform = require("conform")
      conform.formatters_by_ft.lua = { "stylua" }
      conform.formatters_by_ft.markdown = { "markdownlint", "prettierd" }
      conform.formatters_by_ft.python = { "isort", "black" }
      conform.formatters_by_ft.vue = { "prettierd" }
      conform.formatters_by_ft.javascript = { "prettierd" }
      conform.formatters_by_ft.typescript = { "prettierd" }
    end,
  },
}
