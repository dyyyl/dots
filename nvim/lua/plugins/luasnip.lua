return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    {
      "solidjs-community/solid-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end,
    },
  },
}
