return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    {
      "windwp/nvim-ts-autotag",
      config = function()
        require("nvim-ts-autotag").setup()
      end,
    },
  },
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    autotag = { enable = true },
    autopairs = { enable = true },
    ensure_installed = {
      "bash",
      "c",
      "diff",
      "html",
      "javascript",
      "jsdoc",
      "json",
      "jsonc",
      "lua",
      "luadoc",
      "luap",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
    },
  },
}
