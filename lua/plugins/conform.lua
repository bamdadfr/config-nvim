return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "markdownlint",
        "prettier",
        "isort",
        "black",
        "vue-language-server",
        "typescript-language-server",
        "css-lsp",
        "yamlfix",
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        fish = { "fish_indent" },
        lua = { "stylua" },
        markdown = { "markdownlint", "prettier" },
        yaml = { "prettier", "yamlfix" },
        python = { "isort", "black" },
        css = { "prettier" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        vue = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        mdx = { "markdownlint", "prettier" },
      },
    },
  },
}
