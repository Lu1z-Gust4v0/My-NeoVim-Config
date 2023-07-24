local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "html",
  "cssls",
  "tsserver",
  "emmet_ls",
  "eslint",
  "jsonls",
  "sqlls",
  "tailwindcss",
  "tsserver",
  "marksman",
  "pylsp",
  "rust_analyzer",
  "clangd",
  "prismals",
  "gopls"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
