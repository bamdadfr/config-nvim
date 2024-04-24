return {
  {
    "olivercederborg/poimandres.nvim",
  },
  {
    "catppuccin/nvim",
    lazy = false,
    priority = -1,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
        integrations = {
          native_lsp = {
            enabled = true,
            underlines = {
              errors = { "undercurl" },
              hints = { "undercurl" },
              warnings = { "undercurl" },
              information = { "undercurl" },
            },
          },
        },
      })

      vim.cmd.colorscheme("poimandres")
    end,
  },
}
