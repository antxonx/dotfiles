local gitsigns = require("gitsigns")

vim.keymap.set("n", "<leader>gb", ":Gitsigns blame_line<CR>")
vim.keymap.set("n", "<leader>gl", ":Gitsigns toggle_linehl<CR>")
vim.keymap.set("n", "<leader>gn", ":Gitsigns next_hunk<CR>")
vim.keymap.set("n", "<leader>gp", ":Gitsigns prev_hunk<CR>")
vim.keymap.set("n", "<leader>gv", ":Gitsigns preview_hunk<CR>")

gitsigns.setup({
    signs = {
        add = { text = '+' },
    },
    -- current_line_blame = true,
    current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'right_align', -- 'eol' | 'overlay' | 'right_align'
        delay = 0,
        ignore_whitespace = false,
    },
})
