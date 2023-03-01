---@type MappingsConfig
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.mdpreview = {
  n = {
    ["<leader>pw"] = { "<cmd> MarkdownPreview<CR>", "Open Markdown Preview" },
    ["<leader>px"] = { "<cmd> MarkdownPreviewStop<CR>", "Close Markdown Preview" },
  },

  i = {
    ["<A-p>"] = {"<cmd> MarkdownPreview<CR>" },
    ["<A-x>"] = {"<cmd> MarkdownPreviewStop<CR>" },
  },
}

-- more keybinds!

return M
