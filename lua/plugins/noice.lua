return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      table.insert(opts.routes, {
        filter = {
          event = "error",
          find = "E486: Pattern not found: [ ] ",
        },
        opts = { skip = true },
      })

      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "Obsidian additional syntax features require 'conceallevel'",
        },
        opts = { skip = true },
      })

      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 0,
      render = "compact",
    },
  },
}
