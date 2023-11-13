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
        "yamlfix",
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    lazy = true,
    cmd = "ConformInfo",
    opts = function()
      local conform = require("conform")
      conform.formatters_by_ft.fish = { "fish_indent" }
      conform.formatters_by_ft.lua = { "stylua" }
      conform.formatters_by_ft.markdown = { "markdownlint", "prettierd" }

      -- yaml
      conform.formatters_by_ft.yaml = { "prettierd", "yamlfix" }

      -- python
      conform.formatters_by_ft.python = { "isort", "black" }

      -- css
      conform.formatters_by_ft.css = { "prettierd" }

      -- javascript
      conform.formatters_by_ft.javascript = { "prettierd" }
      conform.formatters_by_ft.typescript = { "prettierd" }

      -- vue
      conform.formatters_by_ft.vue = { "prettierd" }

      -- react
      conform.formatters_by_ft.javascriptreact = { "prettierd" }
      conform.formatters_by_ft.typescriptreact = { "prettierd" }
      conform.formatters_by_ft.mdx = { "markdownlint", "prettierd" }
    end,
  },
}
