-- Sync the system clipboard and neovim clipboard
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.relativenumber = true

-- Decrease mapped sequence wait time
-- Displays which-key popup  later
vim.opt.timeoutlen = 1000

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.inccommand = "split"

-- Obsidian needs conceallevel to be 1 see issue; https://github.com/epwalsh/obsidian.nvim/issues/286
vim.opt.conceallevel = 1

vim.opt.cursorline = true

-- Optimize redrawtime
vim.opt.redrawtime = 10000
vim.opt.updatetime = 300
vim.opt.lazyredraw = true

vim.opt.scrolloff = 5

-- Obsidian needs conceallevel to be 1 see issue; https://github.com/epwalsh/obsidian.nvim/issues/286
vim.opt.conceallevel = 1

-- Disable certain features for large files
vim.cmd([[
  let g:loaded_matchparen = 1
  autocmd BufRead,BufNewFile *.tsx,*.jsx,*.ts set synmaxcol=200
]])

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

vim.cmd([[
  augroup user_colors
    autocmd!
    autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
  augroup END
]])
