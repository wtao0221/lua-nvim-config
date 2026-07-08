vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>")
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>")
vim.keymap.set("n", "<C-\\>", "<cmd>TmuxNavigatePrevious<CR>")

vim.keymap.set("n", "]t", function()
	require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
	require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

-- vim.keymap.set("n", "]t", function()
--   require("todo-comments").jump_next({keywords = { "ERROR", "WARNING" }})
-- end, { desc = "Next error/warning todo comment" })
require("which-key").setup({
	preset = "modern",
	delay = 300,
	notify = false,
	win = {
		border = "rounded",
	},
})

-- return {
-- 	{
-- 		-- Tmux & split window navigation
-- 		"christoomey/vim-tmux-navigator",
-- 	},
-- 	{
-- 		-- Detect tabstop and shiftwidth automatically
-- 		"tpope/vim-sleuth",
-- 	},
-- 	{
-- 		-- Powerful Git integration for Vim
-- 		"tpope/vim-fugitive",
-- 	},
-- 	{
-- 		-- GitHub integration for vim-fugitive
-- 		"tpope/vim-rhubarb",
-- 	},
-- 	{
-- 		-- Autoclose parentheses, brackets, quotes, etc.
-- 		"windwp/nvim-autopairs",
-- 		event = "InsertEnter",
-- 		config = true,
-- 		opts = {},
-- 	},
-- 	{
-- 		-- Highlight todo, notes, etc in comments
-- 		"folke/todo-comments.nvim",
-- 		event = "VimEnter",
-- 		dependencies = { "nvim-lua/plenary.nvim" },
-- 		opts = { signs = false },
-- 		keys = {
-- 			{ "<leader>tt", "<cmd>TodoTelescope<CR>" },
-- 		},
-- 	},
-- 	{
-- 		-- High-performance color highlighter
-- 		"norcalli/nvim-colorizer.lua",
-- 		config = function()
-- 			require("colorizer").setup()
-- 		end,
-- 	},
-- }
