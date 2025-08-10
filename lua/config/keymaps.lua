-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local wk = require("which-key")

local function map(mode, lhs, rhs)
  local opts = { noremap = true, silent = true }
  vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

map("n", "<C-a>", "gg<S-v>G")

wk.add({
  { "<leader>a", group = "+ai" },
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    wk.add({
      {
        "<leader>cw",
        require("telescope.builtin").diagnostics,
        desc = "Diagnostics",
      },
    }, { buffer = args.buf })
  end,
})
