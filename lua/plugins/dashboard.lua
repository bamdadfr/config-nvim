return {
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        formats = {
          header = { "%s", align = "left" },
        },
        preset = {
          header = require("logos.random_logo"),
        },
      },
    },
  },
}
