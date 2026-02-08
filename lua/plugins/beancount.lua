return {
  "hxueh/beancount.nvim",
  ft = { "beancount", "bean" },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    {
      "saghen/blink.cmp",
      optional = true,
      opts = function(_, opts)
        table.insert(opts.sources.default, "beancount")
        opts.sources.providers = opts.sources.providers or {}
        opts.sources.providers.beancount = {
          name = "beancount",
          module = "beancount.completion.blink",
          score_offset = 100,
          opts = {
            trigger_characters = { ":", "#", "^", '"', " " },
          },
        }
        return opts
      end,
    },
    {
      "L3MON4D3/LuaSnip",
    },
  },
  config = function()
    vim.g.beancount_python_executable = "/usr/bin/python3"

    require("beancount").setup({
      python_path = vim.fn.expand("~/.local/pipx/venvs/fava/bin/python"),
    })

    -- Only configure treesitter if it's actually available
    local ok, ts_configs = pcall(require, "nvim-treesitter.configs")
    if ok then
      ts_configs.setup({
        ensure_installed = { "beancount" },
        highlight = { enable = true },
        incremental_selection = { enable = true },
        indent = { enable = true },
      })
    end
  end,
}
