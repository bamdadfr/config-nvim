local ensured_installed = {
  -- Language servers
  "bash-language-server",
  "pyright",
  "css-lsp",
  "dockerfile-language-server",
  "graphql-language-service-cli",
  "json-lsp",
  "intelephense",
  "typescript-language-server",
  "vue-language-server",
  "yaml-language-server",
  "lua-language-server",
  "eslint-lsp",
  "html-lsp",
  "svelte-language-server",
  "marksman",

  -- Linters
  "pylint",
  "flake8",
  "eslint_d",
  "shellcheck",
  "proselint",
  "markdownlint",
  "alex",
  "textlint",

  -- Formatters
  "isort",
  "black",
  "stylua",
  "prettier",
  "prettierd",
  "shfmt",

  -- DAP
  "node-debug2-adapter",
  "firefox-debug-adapter",
  "chrome-debug-adapter",
}

local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = ensured_installed,
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
      "jose-elias-alvarez/typescript.nvim",
      "folke/neodev.nvim",
    },
  },
  {
    "wakatime/vim-wakatime",
  },
}

return plugins
