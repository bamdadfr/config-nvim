return {
  {
    "projekt0n/github-nvim-theme",
  },
  {
    "ellisonleao/gruvbox.nvim",
  },
  {
    "catppuccin/nvim",
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

      vim.cmd.colorscheme("catppuccin-mocha")

      require("notify").setup({
        background_colour = "#000000",
      })
    end,
  },
}
