-- Description: LuaSnip plugin configs
return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    -- SolidJS snippets
    {
      "solidjs-community/solid-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end,
    },
  },
}
