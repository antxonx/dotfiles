return {
    n = {
        ["<leader>q"] = "<nop>",
        ["<leader>o"] = "<nop>",
        ["<C-q>"] = {
            "<C-v>",
        },
        L = {
            function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
            desc = "Next buffer",
        },
        H = {
            function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
            desc = "Previous buffer",
        },
        J = {
            "mzJ`z",
            desc = "keep cursor on attach line",
        },
        ["<leader>bD"] = {
            function()
                require("astronvim.utils.status").heirline.buffer_picker(
                    function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
                )
            end,
            desc = "Pick to close",
        },
        ["<leader>b"] = { name = "Buffers" },
        ["<C-k>"] = {
            ":m .-2<CR>==",
            desc = "Move line up",
        },
        ["<C-j>"] = {
            ":m .+1<CR>==",
            desc = "Move line down",
        },
        ["<C-d>"] = {
            "<C-d>zz",
            desc = "Page down",
        },
        ["<C-u>"] = {
            "<C-u>zz",
            desc = "Page up",
        },
        n = {
            "nzz",
            desc = "Next item search",
        },
        N = {
            "Nzz",
            desc = "Previous item search",
        },
        ["mc"] = {
            "<cmd>ToggleCheckbox<CR>",
            desc = "Toggle md checkbox",
        },
    },
    t = {
        -- ["<esc>"] = false,
    },
    v = {
        ["<C-k>"] = {
            ":m '<-2<CR>gvgv=gv",
            desc = "Move lines up",
        },
        ["<C-j>"] = {
            ":m '>+1<CR>gvgv=gv",
            desc = "Move lines down",
        },
    },
}
