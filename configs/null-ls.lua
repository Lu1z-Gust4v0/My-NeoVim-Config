local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  formatting.prettier,
  formatting.stylua,
  formatting.clang_format,
  formatting.black,
  formatting.gofmt,
  lint.prettier,
  lint.revive,
  lint.golangci_lint,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
