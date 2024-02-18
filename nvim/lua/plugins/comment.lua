-- Description: Comment plugin configs
return {
  "numToStr/Comment.nvim",

  config = function()
    require("Comment").setup()
  end,

  lazy = false,
}
