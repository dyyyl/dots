-- Description: Dashboard plugin configs.

-- Header components.
local headers = require("utils.alpha.headers")

-- Functions.
local colorize_header = require("utils.alpha.functions")

-- Color tables.
local palettes = require("utils.alpha.palettes")

-- Set up random number generator.
local number_of_headers = 3 -- Number of headers to choose from.
math.randomseed(os.time()) -- Seed the random number generator.
local random = math.random(1, number_of_headers) -- Create a local random within range of number_of_headers.

-- Set the header based on the random number.
local header
local upper_padding

if random == 1 then
  header = colorize_header(headers.text, palettes.rainbow_text)
  upper_padding = 8
elseif random == 2 then
  header = colorize_header(headers.earth, palettes.rainbow_earth)
  upper_padding = 8
elseif random == 3 then
  header = colorize_header(headers.pentagram, palettes.rainbow_pentagram)
  upper_padding = 2
end

-- Return the config for the dashboard.
return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  enabled = true,
  init = false,
  opts = function()
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.buttons.val = {
      dashboard.button("f", " " .. " Find file", LazyVim.pick()),
      dashboard.button("n", " " .. " New file", [[<cmd> ene <BAR> startinsert <cr>]]),
      dashboard.button("r", " " .. " Recent files", LazyVim.pick("oldfiles")),
      dashboard.button("g", " " .. " Find text", LazyVim.pick("live_grep")),
      dashboard.button("c", " " .. " Config", LazyVim.pick.config_files()),
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
        { type = "padding", val = upper_padding },
        { type = "group", val = header },
        { type = "padding", val = 5 },
        dashboard.section.buttons,
        { type = "padding", val = 5 },
        dashboard.section.footer,
      },
      opts = dashboard.opts,
    })

    vim.api.nvim_create_autocmd("User", {
      once = true,
      pattern = "LazyVimStarted",
      callback = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        dashboard.section.footer.val = "⚡ Neovim loaded "
          .. stats.loaded
          .. "/"
          .. stats.count
          .. " plugins in "
          .. ms
          .. "ms"
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
