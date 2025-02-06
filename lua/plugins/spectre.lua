-- https://github.com/nvim-pack/nvim-spectre
return {
	"nvim-pack/nvim-spectre",
	lazy = true,
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', {
			desc = "Toggle Spectre",
		})

		-- vim.keymap.set("n", "<leader>sc", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
		-- 	desc = "Search on current file",
		-- })
	end,
}
