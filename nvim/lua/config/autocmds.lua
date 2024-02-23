-- Bind local api variable
local api = vim.api

-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim
api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.wo.conceallevel = 0
  end,
})

-- Set the color column at 80 characters for all filetypes
api.nvim_create_autocmd("Filetype", {
  pattern = "*",
  callback = function()
    vim.opt.colorcolumn = "80"
  end,
  -- Unfortunate, but an artifact of IBM's role in the Holocaust
  -- More information at https://en.wikipedia.org/wiki/IBM_and_the_Holocaust
  desc = "Color column at 80 characters",
})
