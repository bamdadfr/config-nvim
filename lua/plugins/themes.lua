return {
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = -1,
    config = function()
      require("poimandres").setup({
        disable_background = true,
      })

      vim.cmd.colorscheme("catppuccin-mocha")
    end,
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
    end,
  },
}
