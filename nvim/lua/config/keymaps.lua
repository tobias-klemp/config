-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "º", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "∆", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "º", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "∆", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "º", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "∆", ":m '<-2<cr>gv=gv", { desc = "Move up" })
map("n", "<C-u>", "<C-u>zz", { desc = "Move up" })
map("n", "<C-d>", "<C-d>zz", { desc = "Move down" })

-- map("n", "<C-j>", "5jzz", { desc = "Move up" })
-- map("n", "<C-k>", "5kzz", { desc = "Move down" })

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
local builtin = require("telescope.builtin")
map("n", "<leader><space>", builtin.find_files, { desc = "Find files (cwd)" })
map("n", "<leader>/", builtin.live_grep, { desc = "Live grep (cwd)" })
