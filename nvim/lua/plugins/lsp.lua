-- Description: lsp configs
return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "ansible-language-server",
        "ansible-lint",
        "black",
        "clangd",
        "codelldb",
        "css-lsp",
        "cssmodules-language-server",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "emmet-ls",
        "eslint-lsp",
        "gofumpt",
        "goimports",
        "gopls",
        "hadolint",
        "js-debug-adapter",
        "json-lsp",
        "lua-language-server",
        "prettier",
        "prettierd",
        "pyright",
        "ruff-lsp",
        "rust-analyzer",
        "shellcheck",
        "shfmt",
        "stylua",
        "tailwindcss-language-server",
        "taplo",
        "terraform-ls",
        "typescript-language-server",
        "yaml-language-server",
      })
    end,
  },
}
