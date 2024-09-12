return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	config = function()
		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup()
		-- REQUIRED

		-- Harpoon marked files 1 through 4.
		vim.keymap.set("n", "<leader>1", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "<leader>2", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<leader>3", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "<leader>4", function()
			harpoon:list():select(4)
		end)
		vim.keymap.set("n", "<leader>5", function()
			harpoon:list():select(5)
		end)

		-- Harpoon next and previous.
		vim.keymap.set("n", "<a-f>", function()
			harpoon:list():next()
		end)
		vim.keymap.set("n", "<a-d>", function()
			harpoon:list():prev()
		end)

		-- Harpoon user interface.
		vim.keymap.set("n", "<leader>hq", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)
		vim.keymap.set("n", "<leader>ha", function()
			harpoon:list():add()
		end)
	end,
}
