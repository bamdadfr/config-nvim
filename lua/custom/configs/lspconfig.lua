-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

local attach_and_format = require "custom.utils.attach_and_format"
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

-- local config = require "lspconfig"
local status, config = pcall(require, "lspconfig")

if not status then
  return
end

local root_pattern = config.util.root_pattern

config.marksman.setup {
  capabilities = capabilities,
}

config.bashls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

-- https://github.com/vscode-langservers/vscode-css-languageserver-bin
config.cssls.setup {
  capabilities = capabilities,
}

-- https://github.com/rcjsuen/dockerfile-language-server-nodejs
config.dockerls.setup {
  capabilities = capabilities,
}

config.tsserver.setup {
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    client.server_capabilities.documentFormattingProvider = false
    on_attach(client, bufnr)
  end,
  filetypes = { "typescript" },
}

config.eslint.setup {
  capabilities = capabilities,
  -- on_attach = on_attach,
  -- on_attach = function(client, bufnr)
  --   client.server_capabilities.documentFormattingProvider = true
  --   -- vim.api.nvim_create_autocmd("BufWritePre", {
  --   -- buffer = bufnr,
  --   -- command = "EslintFixAll"
  --   -- })
  -- end,
  root_dir = root_pattern(
    ".eslintrc.js",
    ".eslintrc.cjs",
    ".eslintrc.json",
    ".eslintrc"
  ),
}

-- config.eslint.setup({
--   on_attach = function(client, bufnr)
--     vim.api.nvim_create_autocmd("BufWritePre", {
--       buffer = bufnr,
--       command = "EslintFixAll"
--     })
--   end,
--   capabilities = capabilities,
-- })

-- https://github.com/graphql/graphiql/tree/main/packages/graphql-language-service-cli
config.graphql.setup {
  capabilities = capabilities,
  root_dir = root_pattern(".graphqlrc.yml", ".graphqlrc"),
  filetypes = { "graphql", "typescriptreact" },
}

config.html.setup {
  -- on_attach = attach_and_format,
  capabilities = capabilities,
}

-- https://github.com/vscode-langservers/vscode-json-languageserver
config.jsonls.setup {
  settings = {
    json = {
      schemas = {
        {
          fileMatch = { "jsconfig.json" },
          url = "https://json.schemastore.org/jsconfig",
        },
        {
          fileMatch = { "tsconfig.json" },
          url = "https://json.schemastore.org/tsconfig",
        },
        {
          fileMatch = { "package.json" },
          url = "https://json.schemastore.org/package",
        },
        {
          fileMatch = {
            ".prettierrc.json",
            ".prettierrc",
          },
          url = "https://json.schemastore.org/prettierrc.json",
        },
        {
          fileMatch = { ".eslintrc.json" },
          url = "https://json.schemastore.org/eslintrc.json",
        },
      },
    },
  },
  capabilities = capabilities,
}

-- https://github.com/sumneko/lua-language-server
-- https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone)

require("neodev").setup {}

config.lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      format = {
        enable = true,
      },
      workspace = {
        checkThirdParty = false,
      },
    },
  },
}

-- https://intelephense.com
config.intelephense.setup {
  capabilities = capabilities,
  settings = {
    intelephense = {
      environment = {
        shortOpenTag = true,
      },
    },
  },
}

config.svelte.setup {
  capabilities = capabilities,
}

-- https://github.com/theia-ide/typescript-language-server
-- local is_npm_package_installed = require('j.utils').is_npm_package_installed

-- local have_vue = is_npm_package_installed 'vue'

-- https://github.com/johnsoncodehk/volar
-- local is_npm_package_installed = require('j.utils').is_npm_package_installed

config.volar.setup {
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    on_attach(client, bufnr)
    client.server_capabilities.documentFormattingProvider = false
  end,
  -- filetypes = is_npm_package_installed 'vue' and { 'vue', 'typescript', 'javascript' } or { 'vue' },
  filetypes = { "typescript", "vue" },
}

-- https://github.com/redhat-developer/yaml-language-server
config.yamlls.setup {
  capabilities = capabilities,
  settings = {
    yaml = {
      schemas = {
        ["https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json"] = ".gitlab-ci.yml",
        ["http://json.schemastore.org/composer"] = "composer.yaml",
        ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "docker-compose*.yml",
        ["https://raw.githubusercontent.com/kamilkisiela/graphql-config/v3.0.3/config-schema.json"] = ".graphqlrc*",
        ["https://json.schemastore.org/github-workflow.json"] = ".github/workflow/*.yml",
      },
    },
  },
}

config.pyright.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}
