local mason_dependencies = {
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

local mason = {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = mason_dependencies,
  },
}

local lsp = {
  "neovim/nvim-lspconfig",
  config = function()
    require "plugins.configs.lspconfig"
    require "custom.services.lsp-service"
  end,
  dependencies = {
    {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.services.null-ls-service"
      end,
    },
    "jose-elias-alvarez/typescript.nvim",
    "folke/neodev.nvim",
  },
}

local wakatime = {
  "wakatime/vim-wakatime",
  lazy = false,
}

return {
  mason,
  lsp,
  wakatime,
}
