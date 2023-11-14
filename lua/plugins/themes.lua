return {
  {
    "catppuccin/nvim",
    config = function()
      require("catppuccin").setup({
        flavour = "latte",
        transparent_background = true,
      })

      vim.cmd.colorscheme("catppuccin-latte")

      require("notify").setup({
        background_colour = "#000000",
      })
    end,
  },
  {
    "projekt0n/github-nvim-theme",
  },
  {
    "ellisonleao/gruvbox.nvim",
  },
}
