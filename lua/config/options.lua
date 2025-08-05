-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.ai_cmp = false

vim.api.nvim_set_keymap("i", "<C-n>", "v:lua.require('copilot.suggestion').next()", { expr = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-p>", "v:lua.require('copilot.suggestion').prev()", { expr = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-e>", "v:lua.require('copilot.suggestion').dismiss()", { expr = true, silent = true })
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.require('copilot.suggestion').accept()", { expr = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>cc<CR>", ":CopilotChat<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>cce", ":CopilotChatExplain<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ccf", ":CopilotChatFix<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>cco", ":CopilotChatOptimize<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ccd", ":CopilotChatDocs<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>cct", ":CopilotChatTest<CR>", { noremap = true, silent = true })
