local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "html",
  "cssls",
  "tsserver",
  "svelte",
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

local on_attach = function(client, bufnr)
    -- require("lsp-format").on_attach(client, bufnr)
    require("plugins.configs.lspconfig").on_attach(client, bufnr)
end

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
