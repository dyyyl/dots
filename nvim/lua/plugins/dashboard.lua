-- Description: Dashboard plugin configs.
return {
  "snacks.nvim",
  opts = {
    dashboard = {
      sections = {
        { section = "terminal", cmd = "curl wttr.in/moon", height = 25, width = 48, padding = 2 },
        { section = "keys", gap = 1, padding = 1 },
        { section = "startup" },
      },
    },
  },
}
