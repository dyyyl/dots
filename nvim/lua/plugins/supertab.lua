-- Check if there are words before cursor.
local has_words_before = function()
  if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then -- Ignore prompt buffer.
    return false
  end
  local line, col = unpack(vim.api.nvim_win_get_cursor(0)) -- Get cursor position.
  return col ~= 0 and vim.api.nvim_buf_get_text(0, line - 1, 0, line - 1, col, {})[1]:match("^%s*$") == nil
end

-- Bind local references.
local cmp = require("cmp")
local luasnip = require("luasnip")
local copilot_cmp = require("copilot_cmp")

-- Description: hack to make supertab work with nvim-cmp and copilot_cmp
return {
  -- Disable default <tab> and <s-tab> behavior in LuaSnip
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },

  -- Enable supertab for nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            -- You could replace select_next_item() with confirm({ select = true }) to get VS Code autocompletion behavior
            cmp.select_next_item()
          -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
          -- this way you will only jump inside the snippet region
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      })
    end,
    dependencies = {
      -- Load copilot-cmp
      {
        "zbirenbaum/copilot-cmp",

        -- Dependencies
        dependencies = "copilot.lua",

        -- Config
        config = function(_, opts)
          copilot_cmp.setup(opts)

          -- attach cmp source whenever copilot attaches
          -- fixes lazy-loading issues with the copilot cmp source
          LazyVim.lsp.on_attach(function(client)
            if client.name == "copilot" then
              copilot_cmp._on_insert_enter({})
            end
          end)

          -- Use <Tab> to navigate completion menu.
          cmp.setup({
            mapping = {
              ["<Tab>"] = vim.schedule_wrap(function(fallback) -- Use schedule_wrap to prevent flickering.
                if cmp.visible() and has_words_before() then -- Only select next item if there are words before cursor.
                  cmp.select_next_item({ behavior = cmp.SelectBehavior.Select }) -- Select next item.
                else
                  fallback() -- Otherwise, fallback to original behavior.
                end
              end),
            },
            -- https://github.com/hrsh7th/nvim-cmp/issues/209#issuecomment-921635222
            completion = { -- Patch completion options.
              completeopt = "menu,menuone,noinsert",
            },
          })
        end,
      },
    },
  },
}
