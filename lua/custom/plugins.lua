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
  "hadolint",

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

local lazygit = {
  "kdheepak/lazygit.nvim",
  lazy = false,
}

local trouble = {
  "folke/trouble.nvim",
  dependencies = {
    {
      "folke/todo-comments.nvim",
      config = function()
        require("todo-comments").setup {
          signs = true,
        }
      end,
    },
  },
}

local aerial = {
  "stevearc/aerial.nvim",
  lazy = false,
  opts = {
    layout = {
      min_width = 50,
    },
    highlight_on_hover = true,
    autojump = true,
    -- show_guides = true,
    filter_kind = false,
    guides = {
      mid_item = "├ ",
      last_item = "└ ",
      nested_top = "│ ",
      whitespace = "  ",
    },
  },
}

local goto_preview = {
  "rmagatti/goto-preview",
  config = function()
    require("goto-preview").setup {}
  end,
  lazy = false,
}

local telescope = {
  "nvim-telescope/telescope.nvim",
  config = function()
    -- vim.opt.inccommand = true -- Case insensitive searching UNLESS /C or capital in search
    vim.opt.smarttab = true

    local defaults = {
      file_ignore_patterns = {
        "node_modules",
        "__pycache__",
        "venv",
      },
    }
    require("telescope").setup {
      defaults = defaults,
    }
  end,
}

return {
  mason,
  lsp,
  wakatime,
  lazygit,
  trouble,
  aerial,
  goto_preview,
  telescope,
}
