vim.keymap.set(
  "n",
  "gpd",
  "<cmd> lua require('goto-preview').goto_preview_definition() <CR>"
)

vim.keymap.set(
  "n",
  "gpt",
  "<cmd> lua require('goto-preview').goto_preview_type_definition() <CR>"
)

vim.keymap.set(
  "n",
  "gpi",
  "<cmd> lua require('goto-preview').goto_preview_implementation() <CR>"
)

vim.keymap.set(
  "n",
  "gP",
  "<cmd> lua require('goto-preview').close_all_win() <CR>"
)

vim.keymap.set(
  "n",
  "gpr",
  "<cmd> lua require('goto-preview').goto_preview_references() <CR>"
)
