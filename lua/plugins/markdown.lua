return {
  "MeanderingProgrammer/render-markdown.nvim",
  config = function()
    require("render-markdown").setup({
      opts = {
        conceallevel = { default = 0, rendered = 3 },
      },
    })
  end,
}
