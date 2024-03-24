-- Description: Octo plugin configs
return {
  "pwntester/octo.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    return {
      -- https://github.com/pwntester/octo.nvim/issues/480#issuecomment-1894798807
      suppress_missing_scope = {
        project_v2 = true,
      },
    }
  end,
}
