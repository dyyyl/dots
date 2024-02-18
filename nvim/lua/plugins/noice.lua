-- Description: Noice plugin configs
return {
  -- https://github.com/folke/noice.nvim
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      -- Set not show a message if hover is not available
      -- ex: shift+k on Typescript code
      opts.lsp.hover = {
        silent = true,
      }

      -- Set border for hovering lsp docs
      opts.presets = {
        lsp_doc_border = true,
      }

      return opts
    end,
  },
}
