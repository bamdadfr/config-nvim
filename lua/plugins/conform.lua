return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "prettierd",
        "isort",
        "black",
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

      opts.format = {
        timeout_ms = 2000,
        async = false,
        quiet = false,
      }

      opts.formatters_by_ft = {
        lua = { "stylua" },
        markdown = { "prettierd" },
        python = { "isort", "black" },
      }

      conform.setup(opts)
    end,
  },
}
