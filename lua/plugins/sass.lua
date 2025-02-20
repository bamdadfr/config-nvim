return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "some-sass-language-server",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        volar = function(_, opts)
          require("lspconfig").somesass_ls.setup({
            server = opts,
            filetypes = {
              "sass",
              "scss",
              "less",
              "css",
            },
          })
        end,
      },
    },
  },
}
