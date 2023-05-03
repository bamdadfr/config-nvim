local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    ["<leader>w"] = "",
  },
  v = {},
}

-- Your custom mappings
M.abc = {
  n = {
    ["<leader>o"] = { "<cmd> echo 'test' <CR>", "Test" },

    -- Close buffer
    ["<A-w>"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "Close buffer",
    },

    -- Comment
    ["<leader>:"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Comment",
    },

    -- Write buffer
    ["<A-s>"] = { "<cmd> w <CR>", "Write buffer" },
    ["<leader>s"] = { "<cmd> w <CR>", "Write buffer" },

    -- Split vertically
    ["<A-$>"] = { "<cmd> vsp <CR>", "Split vertically" },
    ["<leader>$"] = { "<cmd> vsp <CR>", "Split vertically" },

    -- Key `w`
    ["w"] = { "z", "", opts = { nowait = true } },
    ["<S-w>"] = { "<S-z>", "", opts = { nowait = true } },
    ["<C-w>"] = { "<C-z>", "", opts = { nowait = true } },
    ["cw"] = { "cz", "", opts = { nowait = true } },
    ["dw"] = { "dz", "", opts = { nowait = true } },

    -- Key `z`
    ["z"] = { "w", "", opts = { nowait = true } },
    ["<C-z>"] = { "<C-w>", "", opts = { nowait = true } },
    ["<S-z>"] = { "<S-w>", "", opts = { nowait = true } },
    ["cz"] = { "cw", "", opts = { nowait = true } },
    ["dz"] = { "dw", "", opts = { nowait = true } },
    ["viz"] = { "viw", "", opts = { nowait = true } },
    ["viZ"] = { "viW", "", opts = { nowait = true } },

    -- Number row
    ["&"] = { "1", "" },
    ["é"] = { "2", "" },
    ['"'] = { "3", "" },
    ["'"] = { "4", "" },
    ["("] = { "5", "" },
    ["-"] = { "6", "" },
    ["è"] = { "7", "" },
    ["_"] = { "8", "" },
    ["ç"] = { "9", "" },
    ["à"] = { "0", "" },
    [")"] = { "_", "" },

    -- Goto Preview
    ["gpd"] = {
      "<cmd> lua require('goto-preview').goto_preview_definition() <CR>",
      "goto_preview_definition",
    },
    ["gpt"] = {
      "<cmd> lua require('goto-preview').goto_preview_type_definition() <CR>",
      "goto_preview_type_definition",
    },
    ["gpi"] = {
      "<cmd> lua require('goto-preview').goto_preview_implementation() <CR>",
      "goto_preview_implementation",
    },
    ["gP"] = {
      "<cmd> lua require('goto-preview').close_all_win() <CR>",
      "close_all_win",
    },
    ["gpr"] = {
      "<cmd> lua require('goto-preview').goto_preview_references() <CR>",
      "goto_preview_references",
    },

    -- https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/remap.lua
    ["J"] = { "mzJ`z", "Merge next line while maintaining cursor position" },
    ["<leader>y"] = { [["+y]], "" },
    ["<leader>Y"] = { [["+Y]], "" },
    ["<leader>d"] = { [["_d]], "" },
  },

  v = {
    -- Comment multilines
    ["<leader>:"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Comment",
    },

    -- https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/remap.lua
    ["J"] = { ":m '>+1<CR>gv=gv", "Move visual block down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move visual block up" },
    ["<leader>y"] = { [["+y]], "" },
    ["<leader>d"] = { [["_d]], "" },
  },

  i = {
    ["<C-c>"] = { "<Esc>", "" },
  },
}

M.NvimTreeToggle = {
  plugin = true,
  n = {
    ["<A-&>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle tree" },
    ["<leader>&"] = { "<cmd> NvimTreeToggle <CR>", "Toggle tree" },
  },
}

require("core.utils").load_mappings "NvimTreeToggle"

M.LazyGit = {
  plugin = true,
  n = {
    ["<A-ç>"] = { "<cmd> LazyGit <CR>", "Open git manager" },
    ["<leader>ç"] = { "<cmd> LazyGit <CR>", "Open git manager" },
  },
}

require("core.utils").load_mappings "LazyGit"

M.AerialToggle = {
  plugin = true,
  n = {
    ["<A-é>"] = { "<cmd> AerialToggle <CR>", "Toggle symbols" },
    ["<leader>é"] = { "<cmd> AerialToggle <CR>", "Toggle symbols" },
  },
}

require("core.utils").load_mappings "AerialToggle"

M.TodoTrouble = {
  plugin = true,
  n = {
    ["<A-_>"] = { "<cmd> TodoTrouble <CR>", "TODOs" },
    ["<leader>_"] = { "<cmd> TodoTrouble <CR>", "TODOs" },
  },
}

require("core.utils").load_mappings "TodoTrouble"

return M
