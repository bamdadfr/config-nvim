return {
  "catppuccin/nvim",
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true,
    })

    vim.cmd.colorscheme("catppuccin-mocha")

    require("notify").setup({
      background_colour = "#000000",
    })
  end,
}
