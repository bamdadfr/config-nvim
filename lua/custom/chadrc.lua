local M = {}

M.ui = {
  theme = "one_light",
  theme_toggle = { "one_light", "one_light" },
  transparency = true,
  statusline = {
    theme = "minimal",
  },
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
