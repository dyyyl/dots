-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Bind local terminal variable
local Terminal = require("toggleterm.terminal").Terminal
-- Bind local which-key variable
local wk = require("which-key")

-- Lazydocker config
local lazydocker = Terminal:new({
  cmd = "lazydocker",
  hidden = true,
  close_on_exit = true,
  direction = "float",
  float_opts = {
    border = "double",
  },
})

-- Register lazydocker which-key mapping
wk.register({
  d = {
    name = "docker",
    d = { "Open Lazydocker" },
  },
}, { prefix = "<leader>" })

-- Keymap for lazydocker
vim.keymap.set("n", "<leader>dd", function()
  lazydocker:toggle()
end, { noremap = true, silent = true })
