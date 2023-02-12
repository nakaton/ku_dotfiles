local status, saga = pcall(require, "lspsaga")
if (not status) then return end

--saga.setup({
--    ui = {
--        winblend = 10,
--        border = 'rounded',
--        colors = {
--            normal_bg = '#002b36'
--        }
--    }
--})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-n>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', '<C-p>', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
-- Press twise 'K' would trigger to jump in the prompt window and select content from hover doc
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
-- Clear vim hlsearch (highlight search)
vim.keymap.set('n', 'gc', '<Cmd>noh<CR>', opts)
-- Show line diagnostics
vim.keymap.set("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>")

-- code action
-- vim.keymap.set({ "n", "v" }, "<Leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
local codeaction = require("lspsaga.codeaction")
vim.keymap.set("n", "<leader>ca", function() codeaction:code_action() end, { silent = true })
vim.keymap.set("v", "<leader>ca", function()
  vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
  codeaction:range_code_action()
end, { silent = true })
