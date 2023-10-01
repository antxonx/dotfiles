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
                "<A-n>",
                function() require("illuminate").goto_next_reference() end,
            },
            {
                "<A-p>",
                function() require("illuminate").goto_prev_reference() end,
            },
        },
    },
    "christoomey/vim-tmux-navigator",
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
    {
        "nvim-orgmode/orgmode",
        dependencies = {
            { "nvim-treesitter/nvim-treesitter", lazy = true },
        },
        event = "VeryLazy",
        config = function()
            -- Load treesitter grammar for org
            require("orgmode").setup_ts_grammar()

            -- Setup treesitter
            require("nvim-treesitter.configs").setup {
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = { "org" },
                },
                ensure_installed = { "org" },
            }

            -- Setup orgmode
            require("orgmode").setup {
                org_agenda_files = "~/orgfiles/**/*",
                org_default_notes_file = "~/orgfiles/refile.org",
            }
        end,
    },
}
