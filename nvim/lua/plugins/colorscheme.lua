return {
  -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim" },
  -- add catppuccin
  { "catppuccin/nvim", name = "catppuccin" },

  -- Configure LazyVim to load chosen colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-frappe",
    },
  },
}
