vim.g.mapleader = " " -- leader prefix

local keymap = vim.keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- general keymaps
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to prev tab

-- copilot
keymap.set("i", "<C-A>", "copilot#Accept('<CR>')", { expr = true, replace_keycodes = false })
keymap.set("i", "<C-Z>", "<Plug>(copilot-dismiss)")
keymap.set("i", "<C-O>", "<Plug>(copilot-suggest)")
keymap.set("i", "<C-H>", "<Plug>(copilot-next)")
keymap.set("i", "<C-L>", "<Plug>(copilot-previous)")

-- inlay_hint toggle
keymap.set("n", "<leader>i", function()
	vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ 0 }), { 0 })
end)
