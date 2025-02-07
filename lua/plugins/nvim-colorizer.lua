-- https://github.com/norcalli/nvim-colorizer.lua
-- A high-performance color highlighter for Neovim which has no external dependencies! Written in performant Luajit.

return {
	"norcalli/nvim-colorizer.lua",
	config = function()
		local colorizer = require("colorizer")
		colorizer.setup({
			"css",
			"javascript",
			html = {
				mode = "foreground",
			},
		})
	end,
}
