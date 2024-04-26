-- Description: Dashboard plugin configs.

-- Set up random number generator.
math.randomseed(os.time()) -- Seed the random number generator.
local random = math.random(1, 2) -- Create a local random number between 1 and 2.

-- Header components.
local headers = require("utils.alpha.headers")

-- Functions.
local colorize_header = require("utils.alpha.functions")

-- Color tables.
local palettes = require("utils.alpha.palettes")

-- Set the header based on the random number.
local header

-- TODO: Convert to a switch statement if you add more headers.
if random == 1 then -- Just pick one or the other.
  header = colorize_header(headers.text, palettes.rainbow_text) -- And colorize it accordingly.
else
  header = colorize_header(headers.earth, palettes.rainbow_earth)
end

-- Return the config for the dashboard.
return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.buttons.val = {
      dashboard.button("f", " " .. " Find file", "<cmd> Telescope find_files <cr>"),
      dashboard.button("n", " " .. " New file", "<cmd> ene <BAR> startinsert <cr>"),
      dashboard.button("r", " " .. " Recent files", "<cmd> Telescope oldfiles <cr>"),
      dashboard.button("g", " " .. " Find text", "<cmd> Telescope live_grep <cr>"),
      dashboard.button("c", " " .. " Config", "<cmd> lua require('lazyvim.util').telescope.config_files()() <cr>"),
      dashboard.button("s", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
      dashboard.button("x", " " .. " Lazy Extras", "<cmd> LazyExtras <cr>"),
      dashboard.button("l", "󰒲 " .. " Lazy", "<cmd> Lazy <cr>"),
      dashboard.button("q", " " .. " Quit", "<cmd> qa <cr>"),
    }

    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcut"
    end

    dashboard.section.buttons.opts.hl = "AlphaButtons"
    dashboard.section.footer.opts.hl = "AlphaFooter"

    return dashboard
  end,

  config = function(_, dashboard)
    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        once = true,
        pattern = "AlphaReady",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    require("alpha").setup({
      layout = {
        { type = "padding", val = 8 },
        { type = "group", val = header },
        { type = "padding", val = 5 },
        dashboard.section.buttons,
      },
      opts = dashboard.opts,
    })
  end,
}
