-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  vim.keymap.set(mode, lhs, rhs, opts)
end

-- set leader key to space
--
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })


-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

map("n", "<C-s>", "<cmd>w<cr>", { desc = "save"})
map("i", "<C-s>", "<esc><cmd>w<cr>", { desc = "save"})

map("n", "<C-u>", "<C-u>zz", { desc = "Move up" })
map("n", "<C-d>", "<C-d>zz", { desc = "Move down" })

-- resize window
map("n", "<A-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<A-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<A-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<A-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- packge-info.nvim
map("n", "<leader>nc", "<cmd>lua require('package-info').change_version()<cr>", { desc = "Change package version" })
map("n", "<leader>nu", "<cmd>lua require('package-info').update()<cr>", { desc = "Update package version" })
map(
  "n",
  "<leader>nv",
  "<cmd>lua require('package-info').toggle({ force = ture })<cr>",
  { desc = "Toggle package versions" }
)

-- telescope
-- local builtin = require("telescope.builtin")
-- map("n", "<leader><space>", builtin.find_files, { desc = "Find files (cwd)" })
-- -- map("n", "<leader>/", builtin.live_grep, { desc = "Live grep (cwd)" })

-- navigation
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down" })

map("n", "<leader>e", "<cmd>Neotree reveal current<cr>", { desc = "Open filetree" })
