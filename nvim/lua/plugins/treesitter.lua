-- Description: Treesitter plugin configs
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "agda",
        "astro",
        "awk",
        "bash",
        "c",
        "clojure",
        "css",
        "csv",
        "dockerfile",
        "diff",
        "fish",
        "gitignore",
        "go",
        "graphql",
        "html",
        "http",
        "hurl",
        "javascript",
        "jq",
        "jsdoc",
        "json",
        "jsonc",
        "lua",
        "luadoc",
        "luap",
        "make",
        "markdown",
        "markdown_inline",
        "nix",
        "python",
        "query",
        "scala",
        "sql",
        "styled",
        "svelte",
        "regex",
        "rust",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
