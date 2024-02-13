-- Description: Treesitter plugin configs
return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    -- Treesitter autotags for fun and profit
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
  },
}
