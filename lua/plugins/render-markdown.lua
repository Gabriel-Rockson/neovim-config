-- https://github.com/MeanderingProgrammer/render-markdown.nvim

return {
	"MeanderingProgrammer/render-markdown.nvim",
	lazy = true,
	ft = "markdown",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {
		pipe_table = {
			enabled = true,
			preset = "none",
			style = "full",
			cell = "padded",
			padding = 1,
			min_width = 0,
			border = {
				"┌",
				"┬",
				"┐",
				"├",
				"┼",
				"┤",
				"└",
				"┴",
				"┘",
				"│",
				"─",
			},
			alignment_indicator = "━",
			head = "RenderMarkdownTableHead",
			row = "RenderMarkdownTableRow",
			filler = "RenderMarkdownTableFill",
		},
	},
}
