vim.keymap.set('n', '<leader>fa', '<cmd>Telescope find_files<CR>', {})
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope git_files<CR>', {})
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>', {})
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', {})
vim.keymap.set('n', '<leader>fc', '<cmd>Telescope current_buffer_fuzzy_find<CR>', {})
-- Diagnostics
vim.keymap.set('n', '<leader>ld', '<cmd>Telescope diagnostics<CR>')
vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<CR>')
-- Git branches
vim.keymap.set('n', '<leader>gc', '<cmd>Telescope git_branches<CR>', {})
