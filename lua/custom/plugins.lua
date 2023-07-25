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
  dependencies = {
    "olimorris/persisted.nvim",
  },
  config = function(_, opts)
    -- vim.opt.inccommand = true -- Case insensitive searching UNLESS /C or capital in search
    vim.opt.smarttab = true

    local defaults = {
      file_ignore_patterns = {
        "node_modules",
        "__pycache__",
        "venv",
      },
    }

    local t = require "telescope"

    t.setup {
      defaults = defaults,
      opts = opts,
      extensions = {
        persisted = {
          layout_config = {
            width = 0.55,
            height = 0.55,
          },
        },
      },
    }

    -- Load default NvChad extensions for Telescope
    for _, ext in ipairs(opts.extensions_list) do
      t.load_extension(ext)
    end

    -- Load custom extension
    t.load_extension "persisted"
  end,
}

local nvimtree = {
  "nvim-tree/nvim-tree.lua",
  opts = {
    view = {
      side = "right",
      width = 50,
    },
    git = {
      enable = true,
    },
    diagnostics = {
      enable = true,
    },
    renderer = {
      highlight_git = true,
      highlight_opened_files = "icon",
      highlight_modified = "name",
      icons = {
        glyphs = {
          folder = {
            default = "",
          },
        },
      },
    },
  },
  config = function(_, opts)
    require("nvim-tree").setup(opts)
  end,
}

local markdownPreview = {
  "iamcco/markdown-preview.nvim",
  lazy = false,
  ft = "markdown",
  build = ":call mkdp#util#install()",
}

local obsidian = {
  "epwalsh/obsidian.nvim",
  lazy = false,
  event = {
    "BufReadPre " .. vim.fn.expand "~" .. "/OneDrive/00-sync/obsidian/**.md",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    dir = "~/OneDrive/00-sync/obsidian/",
    completion = {
      nvim_cmp = true,
      min_chars = 2,
      new_notes_location = "current_dir",
    },
    daily_notes = {
      folder = "notes",
      date_format = "%Y%m%d-Note-",
    },
  },
  config = function(_, opts)
    require("obsidian").setup(opts)

    -- Optional, override the 'gf' keymap to utilize Obsidian's search functionality.
    -- see also: 'follow_url_func' config option above.
    vim.keymap.set("n", "gf", function()
      if require("obsidian").util.cursor_on_markdown_link() then
        return "<cmd>ObsidianFollowLink<CR>"
      else
        return "gf"
      end
    end, { noremap = false, expr = true })
  end,
}

local session = {
  "olimorris/persisted.nvim",
  lazy = false,
  config = true,
}

-- Documentation generator
local doge = {
  "kkoomen/vim-doge",
  lazy = false,
  config = function()
    vim.cmd [[call doge#install()]]
    vim.cmd [[let g:doge_doc_standard_python = "google"]]
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
  nvimtree,
  markdownPreview,
  obsidian,
  session,
  doge,
}
