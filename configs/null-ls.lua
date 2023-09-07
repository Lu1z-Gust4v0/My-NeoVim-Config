local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes
  formatting.stylua,
  formatting.clang_format,
  formatting.black,
  lint.prettier,
  lint.revive,
  lint.golangci_lint,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
