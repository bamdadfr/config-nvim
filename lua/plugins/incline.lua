return {
  "b0o/incline.nvim",
  event = "BufReadPre",
  enabled = true,
  config = function()
    require("incline").setup({
      highlight = {
        groups = {
          InclineNormal = { guibg = "#cdd6f4", guifg = "#1e1e2e" },
          InclineNormalNC = { guibg = "#cdd6f4", guifg = "#1e1e2e" },
        },
      },
      window = { margin = { vertical = 0, horizontal = 1 } },
      render = function(props)
        local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
        local icon, color = require("nvim-web-devicons").get_icon_color(filename)
        return { { icon, guifg = color }, { " " }, { filename } }
      end,
    })
  end,
}
