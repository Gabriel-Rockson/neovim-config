-- https://github.com/joshuadanpeterson/typewriter.nvim

return {
	"joshuadanpeterson/typewriter",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("typewriter").setup()
	end,
	opts = {},
}
