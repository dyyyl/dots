-- Description: Dashboard plugin configs

-- Make the logo a bit more fun with some color!
local function colorize_logo(logo)
  -- Yeet the palette.
  local catppuccin = require("catppuccin.palettes").get_palette()

  -- Make the rainbow.
  local colors = {
    -- MAKE
    catppuccin.red,
    catppuccin.red,
    catppuccin.peach,
    catppuccin.peach,
    catppuccin.yellow,
    catppuccin.yellow,
    -- Space
    catppuccin.overlay0,
    catppuccin.overlay0,
    -- COOL
    catppuccin.yellow,
    catppuccin.yellow,
    catppuccin.green,
    catppuccin.green,
    catppuccin.sky,
    catppuccin.sky,
    -- Space
    catppuccin.overlay0,
    catppuccin.overlay0,
    -- STUFF
    catppuccin.sky,
    catppuccin.sky,
    catppuccin.blue,
    catppuccin.blue,
    catppuccin.mauve,
    catppuccin.mauve,
  }

  -- Set the colors in the highlight group.
  for i, color in pairs(colors) do
    -- Create highlight group [StartLogo1, StartLogo2, etc.] with fg set to color.
    local cmd = "hi StartLogo" .. i .. " guifg=" .. color
    vim.cmd(cmd) -- Execute the command.
  end

  local lines = {} -- Create an empty table to store the lines.

  for i, chars in pairs(logo) do -- Iterate over each line in the logo.
    local line = {
      type = "text",
      val = chars,
      opts = {
        hl = "StartLogo" .. i, -- Set the corresponding highlight group.
        position = "center", -- Center the text.
      },
    }

    table.insert(lines, line) -- Insert the line into the table.
  end

  return lines -- Return the table of lines.
end

-- Create logo.
local logo = {
  [[        ███╗   ███╗ █████╗ ██╗  ██╗███████╗       ]], -- Red
  [[        ████╗ ████║██╔══██╗██║ ██╔╝██╔════╝       ]], -- Red
  [[        ██╔████╔██║███████║█████╔╝ █████╗         ]], -- peach
  [[        ██║╚██╔╝██║██╔══██║██╔═██╗ ██╔══╝         ]], -- Peach
  [[        ██║ ╚═╝ ██║██║  ██║██║  ██╗███████╗       ]], -- Yellow
  [[        ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝       ]], -- Yellow
  [[                                                  ]], -- overlay0
  [[                                                  ]], -- overlay0
  [[           ██████╗ ██████╗  ██████╗ ██╗           ]], -- Yellow
  [[          ██╔════╝██╔═══██╗██╔═══██╗██║           ]], -- Yellow
  [[          ██║     ██║   ██║██║   ██║██║           ]], -- Green
  [[          ██║     ██║   ██║██║   ██║██║           ]], -- Green
  [[          ╚██████╗╚██████╔╝╚██████╔╝███████╗      ]], -- Sky
  [[           ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝      ]], -- Sky
  [[                                                  ]], -- overlay0
  [[                                                  ]], -- overlay0
  [[      ███████╗████████╗██╗   ██╗███████╗███████╗  ]], -- Sky
  [[      ██╔════╝╚══██╔══╝██║   ██║██╔════╝██╔════╝  ]], -- Sky
  [[      ███████╗   ██║   ██║   ██║█████╗  █████╗    ]], -- Blue
  [[      ╚════██║   ██║   ██║   ██║██╔══╝  ██╔══╝    ]], -- Blue
  [[      ███████║   ██║   ╚██████╔╝██║     ██║       ]], -- Mauve
  [[      ╚══════╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝       ]], -- Mauve
}

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
        { type = "group", val = colorize_logo(logo) },
        { type = "padding", val = 5 },
        dashboard.section.buttons,
      },
      opts = dashboard.opts,
    })
  end,
}
