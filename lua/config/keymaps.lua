-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Split Screen
map("n", "ss", ":split<Return><C-w>w")
map("n", "sv", ":vsplit<Return><C-w>w")

-- Buffers
map("n", "<C-l>", "<C-w>l") -- Next Buffer (right)
map("n", "<C-h>", "<C-w>h") -- Prev Buffer (left)
map("n", "<C-j>", "<C-w>j") -- Prev Buffer (down)
map("n", "<C-k>", "<C-w>k") -- Prev Buffer (up)

--Increment/Decrement
map("n", "+", "<C-a>")
map("n", "-", "<C-x>")

map("n", "?", "<cmd>Telescope current_buffer_fuzzy_find<cr>")
map("n", "/", "<cmd>Telescope current_buffer_fuzzy_find<cr>")

--Select All
map("n", "<C-a>", "gg<S-v>G")

-- Re-Size Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>-")
map("n", "<C-Down>", "<C-w>+")

-- Move lines
map("n", "<c-d>", "<c-d>zz")
map("n", "<c-u>", "<c-u>zz")
