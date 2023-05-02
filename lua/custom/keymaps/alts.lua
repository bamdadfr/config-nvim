-- alt+w
vim.keymap.set("n", "<A-w>", function()
  require("nvchad_ui.tabufline").close_buffer()
end)

-- leader+:
vim.keymap.set("n", "<leader>:", function()
  require("Comment.api").toggle.linewise.current()
end)

-- These mappings will be bound to alt and leader keys
local mappings = {
  {
    key = "s",
    cmd = "w",
  },
  {
    key = "ç",
    cmd = "LazyGit",
  },
  {
    key = "&",
    cmd = "NvimTreeToggle",
  },
  {
    key = "$",
    cmd = "vsp",
  },
  {
    key = "_",
    cmd = "TodoTrouble",
  },
  {
    key = "é",
    cmd = "AerialToggle",
  },
}

for _, mapping in ipairs(mappings) do
  vim.keymap.set(
    "n",
    "<A-" .. mapping.key .. ">",
    "<cmd> " .. mapping.cmd .. " <CR>"
  )
  vim.keymap.set(
    "n",
    "<leader>" .. mapping.key,
    "<cmd> " .. mapping.cmd .. " <CR>"
  )
end
