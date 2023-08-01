vim.g.mapleader = " "

-- NeoVim
vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set('n', '<C-z>', ':u<CR>')
vim.keymap.set('n', '<C-x>', ':redo<CR>')
-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree float focus<CR>')
vim.keymap.set('n', '<leader>E', ':NeoTreeFocus<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')
-- Tabs
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
-- Term
vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<CR>')
vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>')
vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical size=40<CR>')
-- Hop
vim.keymap.set('n', '<leader>hc', ':HopChar1<CR>')
vim.keymap.set('n', '<leader>hl', ':HopLineStart<CR>')
vim.keymap.set('n', '<leader>hw', ':HopWord<CR>')
vim.keymap.set('n', '<leader>hp', ':HopPattern<CR>')
-- Trouble
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", {silent = true, noremap = true})
-- Line wrap fix
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
-- Move text
vim.keymap.set({'n', 'i'},"<C-j>", "<esc><cmd>m .+1<CR>==")
vim.keymap.set({'n', 'i'},"<C-k>", "<esc><cmd>m .-2<CR>==")
