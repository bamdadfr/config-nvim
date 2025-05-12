return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "python",
      })
    end,
  },
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "black",
        "flake8",
        "isort",
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        python = { "isort", "black" },
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
    opts = function(_, opts)
      table.insert(
        opts.sources,
        require("none-ls.diagnostics.flake8").with({
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
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      {
        "mfussenegger/nvim-dap-python",
        config = function()
          require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")
        end,
      },
    },
  },
}
