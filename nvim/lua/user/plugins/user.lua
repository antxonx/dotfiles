return {
    -- You can also add new plugins here as well:
    -- Add plugins, the lazy syntax
    -- "andweeb/presence.nvim",
    -- {
    --   "ray-x/lsp_signature.nvim",
    --   event = "BufRead",
    --   config = function()
    --     require("lsp_signature").setup()
    --   end,
    -- },
    {
        "RRethy/vim-illuminate",
        keys = {
            {
                "<C-n>",
                function() require("illuminate").goto_next_reference() end,
            },
            {
                "<C-p>",
                function() require("illuminate").goto_prev_reference() end,
            },
        },
    },
    "christoomey/vim-tmux-navigator",
    {
        "xiyaowong/transparent.nvim",
        lazy = false,
        init = function ()
            local transparent = require("transparent")
            transparent.clear_prefix("Gitsigns")
            transparent.clear_prefix("Toggleterm")
        end
    },
    {
        "mbbill/undotree",
        keys = {
            { "<leader>U", "<cmd>UndotreeToggle<CR>" },
        },
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        init = function()
            require("rose-pine").setup {
                variant = "main",
            }
        end,
    },
}
