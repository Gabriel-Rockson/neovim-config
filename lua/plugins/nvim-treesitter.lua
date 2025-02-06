-- Highlight, edit, and navigate code

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "lua", "python", "javascript", "typescript", "go" },
			highlight = { enable = true },
		})
	end,
}
