local status, hop = pcall(require, "hop")
if (not status) then return end

hop.setup({})

-- place this in one of your configuration file(s)
vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_words()<cr>", {})
vim.api.nvim_set_keymap('n', 't', "<cmd>lua require'hop'.hint_patterns()<cr>", {})
