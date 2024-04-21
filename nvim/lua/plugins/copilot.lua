-- Load Copilot plugin
return {
  {
    "zbirenbaum/copilot.lua",

    -- Frontmatter
    cmd = "Copilot", -- Launch Copilot with :Copilot.
    event = "InsertEnter", -- On entering insert mode.
    build = ":Copilot auth",

    -- Options
    opts = {
      suggestion = { enabled = true }, -- Enable suggestions.
      panel = { enabled = false }, -- Disable panel.
    },

    -- Config
    config = function()
      require("copilot").setup({}) -- Setup Copilot.
    end,
  },
}
