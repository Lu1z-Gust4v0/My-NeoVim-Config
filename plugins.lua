local overrides = require "custom.configs.overrides"

return {

  -- ["goolord/alpha-nvim"] = { disable = false } -- enables dashboard

  -- Override plugin definition options
  {
    "neovim/nvim-lspconfig",
    -- code formatting, linting etc
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function ()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  -- overrde plugin configs
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "vim", "lua", "html", "css", "javascript", "c" }
    }
  },

  {
    "williamboman/mason.nvim",
     opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "typescript-language-server",
        "deno",
        "emmet-ls",
        "eslint-ls",
        "json-lsp",
        "marksman",
        "sqlls",
        "tailwindcss-language-server",
        "prisma-language-server",
        "python-language-server",
        "rust-analyzer",
        "clangd",
      }
     },
  },

  {
    "nvim-tree/nvim-tree.lua",
    override_options = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- markdown preview
  {
    "iamcco/markdown-preview.nvim",
    ft = { "markdown" },
    run = "cd app && yarn install"
  }
  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
