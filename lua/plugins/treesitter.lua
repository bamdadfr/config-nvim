return {
  {
    "nvim-treesitter/vim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "cmake",
        "cpp",
        "css",
        "fish",
        "gitignore",
        "go",
        "graphql",
        "http",
        "java",
        "rust",
        "php",
        "python",
        "scss",
        "sql",
        "svelte",
        "vue",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- mdx
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })

      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
