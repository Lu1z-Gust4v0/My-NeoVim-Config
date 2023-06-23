local M = {}


M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "python",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline"
  },
  ident = {
    enable = true,
  }
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "html-lsp",
    "css-lsp",
    "typescript-language-server",
    "deno",
    "emmet-ls",
    "json-lsp",
    "marksman",
    "sqlls",
    "tailwindcss-language-server",
    "prisma-language-server",
    "python-lsp-server",
    "rust-analyzer",
    "clangd",
   }
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
