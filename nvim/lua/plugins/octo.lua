-- Description: Octo plugin configs
return {
  "pwntester/octo.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- Set up Octo plugin
    require("octo").setup({})
  end,
}
