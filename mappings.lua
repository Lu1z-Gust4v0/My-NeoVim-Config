---@type MappingsConfig
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    ["<A-k>"] = { ":m '<-2<CR>gv=gv", "Move line up" },
    ["<A-j>"] = { ":m '>+1<CR>gv=gv", "Move line down" },
  },
}

M.mdpreview = {
  n = {
    ["<leader>pw"] = { "<cmd> MarkdownPreview<CR>", "Open Markdown Preview" },
    ["<leader>px"] = { "<cmd> MarkdownPreviewStop<CR>", "Close Markdown Preview" },
  },

  i = {
    ["<A-p>"] = { "<cmd> MarkdownPreview<CR>" },
    ["<A-x>"] = { "<cmd> MarkdownPreviewStop<CR>" },
  },
}

-- more keybinds!

return M
