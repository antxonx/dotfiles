local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'lua_ls',
    'jsonls',
    'cssls',
    'emmet_ls'
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mapping = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.set_preferences({
    sign_icons = {}
})

lsp.setup_nvim_cmp({
    mapping = cmp_mapping
})

lsp.on_attach(function(_, bufnr)
    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>lw", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>lo", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "<leader>ln", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "<leader>lp", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>la", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>lr", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "<leader>lf", vim.cmd.LspZeroFormat, opts)
end)
