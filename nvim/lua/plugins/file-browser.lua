return {
  "nvim-telescope/telescope-file-browser.nvim",
  keys = {
    {
      "<leader>sB",
      ":Telescope file_browser path=%:p:h=%:p:h<cr>",
      desc = "Open File Browser",
    },
  },
  config = function()
    require("telescope").load_extension("file_browser")
  end,
}
