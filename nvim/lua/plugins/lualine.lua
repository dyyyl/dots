-- Description: lualine configs
return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  init = function()
    vim.g.lualine_laststatus = vim.o.laststatus
    if vim.fn.argc(-1) > 0 then
      -- set an empty statusline till lualine loads
      vim.o.statusline = " "
    else
      -- hide the statusline on the starter page
      vim.o.laststatus = 0
    end
  end,
  opts = function()
    -- PERF: we don't need this lualine require madness 🤷
    local lualine_require = require("lualine_require")
    lualine_require.require = require

    -- Import lazyvim modules
    local icons = require("lazyvim.config").icons

    -- Set laststatus to lualine status (set in the init function)
    vim.o.laststatus = vim.g.lualine_laststatus

    -- Custom catppuccin frappe
    local colors = {
      bg = "#292c3c",
      fg = "#c6d0f5",
      yellow = "#e5c890",
      cyan = "#81c8be",
      green = "#a6d189",
      orange = "#ef9f76",
      violet = "#ca9ee6",
      magenta = "#babbf1",
      blue = "#8caaee",
      red = "#e78284",
      pink = "#f4b8e4",
    }

    -- Automagically change color according to neovim's mode
    local function get_mode_color()
      local mode_color = {
        n = colors.pink,
        i = colors.green,
        v = colors.blue,
        [""] = colors.blue,
        V = colors.blue,
        c = colors.orange,
        no = colors.red,
        s = colors.orange,
        S = colors.orange,
        [""] = colors.orange,
        ic = colors.yellow,
        R = colors.violet,
        Rv = colors.violet,
        cv = colors.red,
        ce = colors.red,
        r = colors.cyan,
        rm = colors.cyan,
        ["r?"] = colors.cyan,
        ["!"] = colors.red,
        t = colors.red,
      }
      return { fg = mode_color[vim.fn.mode()], bg = colors.bg }
    end

    -- Change the filename component to show a different color for modified files.
    local custom_fname = require("lualine.components.filename"):extend()
    local highlight = require("lualine.highlight")
    local default_status_colors = { saved = colors.green, modified = colors.orange }

    function custom_fname:init(options)
      custom_fname.super.init(self, options)
      self.status_colors = {
        saved = highlight.create_component_highlight_group(
          { bg = default_status_colors.saved },
          "filename_status_saved",
          self.options
        ),
        modified = highlight.create_component_highlight_group(
          { bg = default_status_colors.modified },
          "filename_status_modified",
          self.options
        ),
      }
      if self.options.color == nil then
        self.options.color = ""
      end
    end

    function custom_fname:update_status()
      local data = custom_fname.super.update_status(self)
      data = highlight.component_format_highlight(
        vim.bo.modified and self.status_colors.modified or self.status_colors.saved
      ) .. data
      return data
    end

    -- Reset
    require("lualine").setup({
      -- these are to remove the defaults
      lualine_a = {},
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    })

    return {
      options = {
        -- Disable sections and component separators
        component_separators = "",
        section_separators = "",
        -- Theme
        theme = "auto", -- All other theming can handle itself
        -- Miscellaneous
        globalstatus = true, -- One statusline to rule them all (not one per window lol)
        disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } }, -- obviously
      },
      sections = {
        lualine_a = {
          {
            function()
              return "▊"
            end,
            color = function() -- Sets highlighting of component
              local mode_colors = get_mode_color()
              return mode_colors
            end,
            padding = { left = 0, right = 1 }, -- We don't need space before this
          },
          { -- mode component
            function()
              return "⛧"
            end,
            color = { fg = colors.red, bg = colors.bg },
            padding = { right = 1 },
          },
        },
        lualine_b = {
          {
            "branch",
            icon = "",
            color = { fg = colors.violet, gui = "bold", bg = colors.bg },
          },
          { LazyVim.lualine.pretty_path(), color = { bg = colors.bg } },
          {
            "filesize",
            color = { bg = colors.bg },
          },
        },
        lualine_c = {
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
            color = { bg = colors.bg },
          },
        },
        lualine_x = {
          -- stylua: ignore
          {
            function() return require("noice").api.status.command.get() end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
            color = { fg = Snacks.util.color("Statement") }
          },
          -- stylua: ignore
          {
            function() return require("noice").api.status.mode.get() end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.mode.has() end,
            color = { fg = Snacks.util.color("Constant") }
          },
          -- stylua: ignore
          {
            function() return "  " .. require("dap").status() end,
            cond = function () return package.loaded["dap"] and require("dap").status() ~= "" end,
            color = { fg = Snacks.util.color("Debug") }
          },
          {
            -- Updates component (displays if updates are available)
            require("lazy.status").updates,
            cond = require("lazy.status").has_updates,
            color = function()
              return { fg = Snacks.util.color("Special") }
            end,
          },
        },
        lualine_y = {
          {
            "o:encoding", -- option component same as &encoding in viml
            fmt = string.upper, -- I'm not sure why it's upper case either ;)
            color = { fg = colors.cyan, gui = "bold", bg = colors.bg },
          },
        },
        lualine_z = {
          { "location", color = { fg = colors.fg, bg = colors.bg } },
          { "progress", color = { fg = colors.fg, gui = "bold", bg = colors.bg } },
          {
            "diff",
            symbols = {
              added = icons.git.added,
              modified = icons.git.modified,
              removed = icons.git.removed,
            },
            source = function()
              local gitsigns = vim.b.gitsigns_status_dict
              if gitsigns then
                return {
                  added = gitsigns.added,
                  modified = gitsigns.changed,
                  removed = gitsigns.removed,
                }
              end
            end,
            color = { bg = colors.bg },
          },
          {
            function()
              return "▊"
            end,
            color = function() -- Sets highlighting of component
              local mode_colors = get_mode_color()
              return mode_colors
            end,
            padding = { left = 1 },
          },
        },
      },
      extensions = { "neo-tree", "lazy" },
    }
  end,
}
