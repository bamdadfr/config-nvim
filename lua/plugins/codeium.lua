return {
  "Exafunction/codeium.vim",
  lazy = false,
  config = function()
    vim.g.codeium_disable_bindings = 1

    vim.keymap.set("i", "<A-p>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true })

    vim.keymap.set("i", "<C-o>", function()
      return vim.fn["codeium#Clear"]()
    end, { expr = true })

    vim.keymap.set("i", "<A-=>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true })

    vim.keymap.set("i", "<A-)>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true })
  end,
}
