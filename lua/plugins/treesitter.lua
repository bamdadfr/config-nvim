return {
  "nvim-treesitter/nvim-treesitter",
  opts = function()
    local ft_to_parser = require("nvim-treesitter.parsers").filetype_to_parsername
    ft_to_parser.mdx = "markdown"
  end,
}
