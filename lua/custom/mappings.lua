local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    ["<leader>w"] = "",
  },
}

-- Your custom mappings
M.abc = {
  n = {
    ["<leader>o"] = {
      "<cmd> echo 'test' <CR>",
      "Test",
      opts = { nowait = true },
    },

    -- Close buffer
    ["<A-w>"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "Close buffer",
      opts = { nowait = true },
    },

    -- Comment
    ["<leader>:"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Comment",
      opts = { nowait = true },
    },

    -- Write buffer
    ["<A-s>"] = { "<cmd> w <CR>", "Write buffer", opts = { nowait = true } },
    ["<leader>s"] = { "<cmd> w <CR>", "Write buffer", opts = { nowait = true } },

    -- Split vertically
    ["<A-$>"] = {
      "<cmd> vsp <CR>",
      "Split vertically",
      opts = { nowait = true },
    },
    ["<leader>$"] = {
      "<cmd> vsp <CR>",
      "Split vertically",
      opts = { nowait = true },
    },

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
    ["&"] = { "1", "", opts = { nowait = true } },
    ["é"] = { "2", "", opts = { nowait = true } },
    ['"'] = { "3", "", opts = { nowait = true } },
    ["'"] = { "4", "", opts = { nowait = true } },
    ["("] = { "5", "", opts = { nowait = true } },
    ["-"] = { "6", "", opts = { nowait = true } },
    ["è"] = { "7", "", opts = { nowait = true } },
    ["_"] = { "8", "", opts = { nowait = true } },
    ["ç"] = { "9", "", opts = { nowait = true } },
    ["à"] = { "0", "", opts = { nowait = true } },
    [")"] = { "_", "", opts = { nowait = true } },

    -- Goto Preview
    ["gpd"] = {
      "<cmd> lua require('goto-preview').goto_preview_definition() <CR>",
      "goto_preview_definition",
      opts = { nowait = true },
    },
    ["gpt"] = {
      "<cmd> lua require('goto-preview').goto_preview_type_definition() <CR>",
      "goto_preview_type_definition",
      opts = { nowait = true },
    },
    ["gpi"] = {
      "<cmd> lua require('goto-preview').goto_preview_implementation() <CR>",
      "goto_preview_implementation",
      opts = { nowait = true },
    },
    ["gP"] = {
      "<cmd> lua require('goto-preview').close_all_win() <CR>",
      "close_all_win",
      opts = { nowait = true },
    },
    ["gpr"] = {
      "<cmd> lua require('goto-preview').goto_preview_references() <CR>",
      "goto_preview_references",
      opts = { nowait = true },
    },

    -- https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/remap.lua
    ["J"] = {
      "mzJ`z",
      "Merge next line while maintaining cursor position",
      opts = { nowait = true },
    },
    ["<leader>y"] = { [["+y]], "", opts = { nowait = true } },
    ["<leader>Y"] = { [["+Y]], "", opts = { nowait = true } },
    ["<leader>d"] = { [["_d]], "", opts = { nowait = true } },
  },

  v = {
    -- Comment multilines
    ["<leader>:"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Comment",
      opts = { nowait = true },
    },

    -- https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/remap.lua
    ["J"] = {
      ":m '>+1<CR>gv=gv",
      "Move visual block down",
      opts = { nowait = true },
    },
    ["K"] = {
      ":m '<-2<CR>gv=gv",
      "Move visual block up",
      opts = { nowait = true },
    },
    ["<leader>y"] = { [["+y]], "", opts = { nowait = true } },
    ["<leader>d"] = { [["_d]], "", opts = { nowait = true } },
  },

  i = {
    -- Exit
    ["<C-c>"] = { "<Esc>", "", opts = { nowait = true } },

    -- Key `z`
    ["<C-z>"] = { "<C-w>", "", opts = { nowait = true } },

    -- Key `w`
    ["<C-w>"] = { "<C-z>", "", opts = { nowait = true } },
  },
}

M.NvimTreeToggle = {
  plugin = true,
  n = {
    ["<A-&>"] = {
      "<cmd> NvimTreeToggle <CR>",
      "Toggle tree",
      opts = { nowait = true },
    },
    ["<leader>&"] = {
      "<cmd> NvimTreeToggle <CR>",
      "Toggle tree",
      opts = { nowait = true },
    },
  },
}

require("core.utils").load_mappings "NvimTreeToggle"

M.LazyGit = {
  plugin = true,
  n = {
    ["<A-ç>"] = {
      "<cmd> LazyGit <CR>",
      "Open git manager",
      opts = { nowait = true },
    },
    ["<leader>ç"] = {
      "<cmd> LazyGit <CR>",
      "Open git manager",
      opts = { nowait = true },
    },
  },
}

require("core.utils").load_mappings "LazyGit"

M.AerialToggle = {
  plugin = true,
  n = {
    ["<A-é>"] = {
      "<cmd> AerialToggle <CR>",
      "Toggle symbols",
      opts = { nowait = true },
    },
    ["<leader>é"] = {
      "<cmd> AerialToggle <CR>",
      "Toggle symbols",
      opts = { nowait = true },
    },
  },
}

require("core.utils").load_mappings "AerialToggle"

M.TodoTrouble = {
  plugin = true,
  n = {
    ["<A-_>"] = { "<cmd> TodoTrouble <CR>", "TODOs", opts = { nowait = true } },
    ["<leader>_"] = {
      "<cmd> TodoTrouble <CR>",
      "TODOs",
      opts = { nowait = true },
    },
  },
}

require("core.utils").load_mappings "TodoTrouble"

return M
