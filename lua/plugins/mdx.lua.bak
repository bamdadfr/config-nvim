return {
  {
    "mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "typescript-language-server",
        "marksman",
        "mdx-analyzer",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        mdx_analyzer = {},
      },
      setup = {
        mdx_analyzer = function(_, opts)
          require("lspconfig").mdx_analyzer.setup({
            server = opts,
            filetypes = {
              "mdx",
            },
            init_options = {
              typescript = {
                tsdk = "/usr/local/lib/node_modules/typescript/lib",
              },
            },
          })
          return true
        end,
      },
    },
  },
}
