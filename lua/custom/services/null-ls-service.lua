-- Sources: https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
-- Configs: https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTIN_CONFIG.md

local null_ls = require "null-ls"

local code_actions = null_ls.builtins.code_actions
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
local hover = null_ls.builtins.hover

local sources = {
  -- Global
  code_actions.refactoring,

  -- Bash
  diagnostics.shellcheck,
  formatting.shfmt,

  -- Fish
  diagnostics.fish,
  formatting.fish_indent,

  -- Lua
  formatting.stylua,

  -- Text / Markdown
  hover.dictionary,
  code_actions.proselint,
  code_actions.ltrs,
  diagnostics.alex,
  diagnostics.markdownlint,
  diagnostics.ltrs.with {
    filetypes = { "markdown" },
  },
  diagnostics.textlint,
  formatting.markdownlint,
  formatting.textlint,

  -- Python
  diagnostics.flake8.with {
    args = {
      "--format",
      "default",
      "--max-line-length",
      "88",
      "--stdin-display-name",
      "$FILENAME",
      "-",
    },
  },
  formatting.isort,
  formatting.black,

  -- Web
  code_actions.eslint,
  diagnostics.eslint_d,
  formatting.prettierd,

  -- Docker
  diagnostics.hadolint,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
