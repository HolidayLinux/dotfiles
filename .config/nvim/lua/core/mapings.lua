vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap 
--NeoTree

vim.keymap.set("n", "<leader>E", ":Neotree focus<CR>")
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")
vim.keymap.set("n", "<leader>o", ":Neotree git_status focus<CR>")
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>")
vim.keymap.set("n", "<leader>p", ":w<CR>:!python3 %<CR>")
-- Tabs
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<leader>t", ":ToggleTerm direction=float<CR>")
-- Other
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>x", ":BufferLinePickClose<CR>")
vim.keymap.set("n", "<leader>X", ":BufferLineCloseRight<CR>")
vim.keymap.set("n", "<leader>s", ":BufferLineSortByTabs<CR>")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
--Runner
vim.keymap.set("n", "<leader>rr", ":Runner <CR>", { noremap = true, silent = false })

vim.keymap.set('i', '<C-a>', function ()
    vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
end, { desc = 'Copilot Accept', noremap = true, silent = true })
