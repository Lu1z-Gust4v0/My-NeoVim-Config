local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt

-- Indenting
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
