--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move down and center code" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move up and center code" })
vim.keymap.set("n", "<n>", "nzzzv", { desc = "Move up and center code" })
vim.keymap.set("n", "<N>", "Nzzzv", { desc = "Move up and center code" })
