local toggle_quickfix = require "custom.utils.toggle_quickfix"

local M = {}

local opts = { nowait = true }

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
      opts,
    },

    -- Close buffer
    ["<A-w>"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "Close buffer",
      opts,
    },

    -- Close quickfix
    ['<leader>"'] = {
      toggle_quickfix,
      "Close quickfix",
      opts,
    },

    -- Map A-n to C-n
    ["<A-n>"] = { "<C-n>", "", opts },

    -- Comment
    ["<leader>:"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Comment",
      opts,
    },

    -- Alt Down and Up
    ["<A-d>"] = { "<C-d>zz", "", opts },
    ["<A-u>"] = { "<C-u>zz", "", opts },

    -- Write buffer
    ["<A-s>"] = { "<cmd> w <CR>", "Write buffer", opts },
    ["<leader>s"] = { "<cmd> w <CR>", "Write buffer", opts },

    -- Split vertically
    ["<A-$>"] = {
      "<cmd> vsp <CR>",
      "Split vertically",
      opts,
    },
    ["<leader>$"] = {
      "<cmd> vsp <CR>",
      "Split vertically",
      opts,
    },

    -- Key `w`
    ["w"] = { "z", "", opts },
    ["<S-w>"] = { "<S-z>", "", opts },
    ["<C-w>"] = { "<C-z>", "", opts },
    ["cw"] = { "cz", "", opts },
    ["dw"] = { "dz", "", opts },
    ["ciw"] = { "ciz", "", opts },

    -- Key `z`
    ["z"] = { "w", "", opts },
    ["<C-z>"] = { "<C-w>", "", opts },
    ["<S-z>"] = { "<S-w>", "", opts },
    ["cz"] = { "cw", "", opts },
    ["dz"] = { "dw", "", opts },
    ["viz"] = { "viw", "", opts },
    ["viZ"] = { "viW", "", opts },
    ["ciz"] = { "ciw", "", opts },
    ["ciZ"] = { "ciW", "", opts },

    -- Number row
    ["&"] = { "1", "", opts },
    ["é"] = { "2", "", opts },
    ['"'] = { "3", "", opts },
    ["'"] = { "4", "", opts },
    ["("] = { "5", "", opts },
    ["-"] = { "6", "", opts },
    ["è"] = { "7", "", opts },
    ["_"] = { "8", "", opts },
    ["ç"] = { "9", "", opts },
    ["à"] = { "0", "", opts },
    [")"] = { "_", "", opts },

    -- Jump while keeping cursor at middle row
    ["<C-d>"] = {
      "<C-d>zz",
      "Jump down while keeping cursor at middle row",
      opts,
    },
    ["<C-u>"] = {
      "<C-u>zz",
      "Jump up while keeping cursor at middle row",
      opts,
    },

    -- Iterate through search results while keeping cursor at middle row
    ["n"] = {
      "nzzzv",
      "Next search result while keeping cursor at middle row",
      opts,
    },
    ["N"] = {
      "Nzzzv",
      "Previous search result while keeping cursor at middle row",
      opts,
    },

    -- Goto Preview
    ["gpd"] = {
      "<cmd> lua require('goto-preview').goto_preview_definition() <CR>",
      "goto_preview_definition",
      opts,
    },
    ["gpt"] = {
      "<cmd> lua require('goto-preview').goto_preview_type_definition() <CR>",
      "goto_preview_type_definition",
      opts,
    },
    ["gpi"] = {
      "<cmd> lua require('goto-preview').goto_preview_implementation() <CR>",
      "goto_preview_implementation",
      opts,
    },
    ["gP"] = {
      "<cmd> lua require('goto-preview').close_all_win() <CR>",
      "close_all_win",
      opts,
    },
    ["gpr"] = {
      "<cmd> lua require('goto-preview').goto_preview_references() <CR>",
      "goto_preview_references",
      opts,
    },

    -- https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/remap.lua
    ["J"] = {
      "mzJ`z",
      "Merge next line while maintaining cursor position",
      opts,
    },
    ["<leader>y"] = { [["+y]], "", opts },
    ["<leader>Y"] = { [["+Y]], "", opts },
    ["<leader>d"] = { [["_d]], "", opts },

    -- Markdown preview
    ["<leader>pm"] = {
      "<cmd> MarkdownPreviewToggle <CR>",
      "Preview Markdown (Toggle)",
      opts,
    },

    -- Navigate to previous location
    ["<A-o>"] = { "<C-o>zz", "Navigate to previous location", opts },
    ["<A-i>"] = { "<C-i>zz", "Navigate to next location", opts },
  },

  v = {
    -- Comment multilines
    ["<leader>:"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Comment",
      opts,
    },

    -- Number row
    ["&"] = { "1", "", opts },
    ["é"] = { "2", "", opts },
    ['"'] = { "3", "", opts },
    ["'"] = { "4", "", opts },
    ["("] = { "5", "", opts },
    ["-"] = { "6", "", opts },
    ["è"] = { "7", "", opts },
    ["_"] = { "8", "", opts },
    ["ç"] = { "9", "", opts },
    ["à"] = { "0", "", opts },
    [")"] = { "_", "", opts },

    -- https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/remap.lua
    ["J"] = {
      ":m '>+1<CR>gv=gv",
      "Move visual block down",
      opts,
    },

    ["K"] = {
      ":m '<-2<CR>gv=gv",
      "Move visual block up",
      opts,
    },

    -- ThePrimeagen
    ["<leader>y"] = { [["+y]], "", opts },

    -- ThePrimeagen
    ["<leader>d"] = { [["_d]], "", opts },

    -- ThePrimeagen
    ["<leader>p"] = {
      '"_dP',
      "Paste over while retaining paste buffer",
      opts,
    },

    -- Invert < and > for indenting
    ["<"] = { ">", "", opts },
    [">"] = { "<", "", opts },
  },

  i = {
    -- Exit
    ["<C-c>"] = { "<Esc>", "", opts },

    -- Key `z`
    ["<C-z>"] = { "<C-w>", "", opts },

    -- Key `w`
    ["<C-w>"] = { "<C-z>", "", opts },

    -- Map A-z to C-w
    ["<A-z>"] = { "<C-w>", "", opts },
  },
}

M.NvimTreeToggle = {
  plugin = true,
  n = {
    ["<A-&>"] = {
      "<cmd> NvimTreeToggle <CR>",
      "Toggle tree",
      opts,
    },
    ["<leader>&"] = {
      "<cmd> NvimTreeToggle <CR>",
      "Toggle tree",
      opts,
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
      opts,
    },
    ["<leader>ç"] = {
      "<cmd> LazyGit <CR>",
      "Open git manager",
      opts,
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
      opts,
    },
    ["<leader>é"] = {
      "<cmd> AerialToggle <CR>",
      "Toggle symbols",
      opts,
    },
  },
}

require("core.utils").load_mappings "AerialToggle"

M.TodoTrouble = {
  plugin = true,
  n = {
    ["<A-_>"] = { "<cmd> TodoTrouble <CR>", "TODOs", opts },
    ["<leader>_"] = {
      "<cmd> TodoTrouble <CR>",
      "TODOs",
      opts,
    },
  },
}

require("core.utils").load_mappings "TodoTrouble"

return M
