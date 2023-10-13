return {
    -- customize alpha options
    {
        "goolord/alpha-nvim",
        opts = function(_, opts)
            opts.section.header.val = {
                " ▒█████            ▒█████            ▒█████  ",
                "▒██▒  ██▒         ▒██▒  ██▒         ▒██▒  ██▒",
                "▒██░  ██▒         ▒██░  ██▒         ▒██░  ██▒",
                "▒██   ██░         ▒██   ██░         ▒██   ██░",
                "░ ████▓▒░         ░ ████▓▒░         ░ ████▓▒░",
                "░ ▒░▒░▒░  ▒█████  ░ ▒░▒░▒░  ▒█████  ░ ▒░▒░▒░ ",
                "  ░ ▒ ▒░ ▒██▒  ██▒  ░ ▒ ▒░ ▒██▒  ██▒  ░ ▒ ▒░ ",
                "░ ░ ░ ▒  ▒██░  ██▒░ ░ ░ ▒  ▒██░  ██▒░ ░ ░ ▒  ",
                "    ░ ░  ▒██   ██░    ░ ░  ▒██   ██░    ░ ░  ",
                "         ░ ████▓▒░         ░ ████▓▒░         ",
                "         ░ ▒░▒░▒░          ░ ▒░▒░▒░          ",
                "           ░ ▒ ▒░            ░ ▒ ▒░          ",
                "         ░ ░ ░ ▒           ░ ░ ░ ▒           ",
                "             ░ ░               ░ ░           ",
            }
            return opts
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        opts = function(_, opts)
            opts.signs = {
                add = { text = "+" },
                change = { text = "│" },
                delete = { text = "_" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
                untracked = { text = "┆" },
            }
            return opts
        end,
    },
    {
        "rcarriga/nvim-notify",
        opts = function (_, opts)
            opts.background_colour = "#000000"
        end
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        opts = function(_, opts)
            local utils = require "astronvim.utils"
            opts.window.position = "float"
            opts.window.mappings = {
                ["<space>"] = false, -- disable space until we figure out which-key disabling
                ["<S-h>"] = "prev_source",
                ["<S-l>"] = "next_source",
                F = utils.is_available "telescope.nvim" and "find_in_dir" or nil,
                O = "system_open",
                Y = "copy_selector",
                h = "parent_or_close",
                l = "child_or_open",
                o = "open",
            }
            opts.filesystem.filtered_items = {
                hide_dotfiles = false,
                hide_gitignored = false,
                hide_hidden = false,
            }
            return opts
        end,
    },
    {
        "rebelot/heirline.nvim",
        opts = function(_, opts)
            local status = require "astronvim.utils.status"
            opts.statusline = {
                hl = { fg = "fg", bg = "bg" },
                status.component.mode { mode_text = { padding = { left = 1, right = 1 } } },
                { provider = "󰊠  " },
                status.component.git_branch(),
                status.component.file_info { filetype = {}, filename = false, file_modified = false },
                status.component.git_diff(),
                status.component.diagnostics(),
                status.component.fill(),
                status.component.cmd_info(),
                status.component.fill(),
                status.component.lsp(),
                status.component.treesitter(),
                status.component.nav(),
                status.component.mode { surround = { separator = "right" } },
            }
            return opts
        end,
    },
    {
        "windwp/nvim-autopairs",
        event = "User AstroFile",
        opts = {
            check_ts = true,
            ts_config = { java = false },
            fast_wrap = {
                map = "<C-e>",
                chars = { "{", "[", "(", '"', "'" },
                pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
                offset = 0,
                end_key = "$",
                keys = "qwertyuiopzxcvbnmasdfghjkl",
                check_comma = true,
                highlight = "PmenuSel",
                highlight_grey = "LineNr",
            },
        },
    },
    -- You can disable default plugins as follows:
    -- { "max397574/better-escape.nvim", enabled = false },
    --
    -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
    -- {
    --   "L3MON4D3/LuaSnip",
    --   config = function(plugin, opts)
    --     require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
    --     -- add more custom luasnip configuration such as filetype extend or custom snippets
    --     local luasnip = require "luasnip"
    --     luasnip.filetype_extend("javascript", { "javascriptreact" })
    --   end,
    -- },
    -- {
    --   "windwp/nvim-autopairs",
    --   config = function(plugin, opts)
    --     require "plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
    --     -- add more custom autopairs configuration such as custom rules
    --     local npairs = require "nvim-autopairs"
    --     local Rule = require "nvim-autopairs.rule"
    --     local cond = require "nvim-autopairs.conds"
    --     npairs.add_rules(
    --       {
    --         Rule("$", "$", { "tex", "latex" })
    --           -- don't add a pair if the next character is %
    --           :with_pair(cond.not_after_regex "%%")
    --           -- don't add a pair if  the previous character is xxx
    --           :with_pair(
    --             cond.not_before_regex("xxx", 3)
    --           )
    --           -- don't move right when repeat character
    --           :with_move(cond.none())
    --           -- don't delete if the next character is xx
    --           :with_del(cond.not_after_regex "xx")
    --           -- disable adding a newline when you press <cr>
    --           :with_cr(cond.none()),
    --       },
    --       -- disable for .vim files, but it work for another filetypes
    --       Rule("a", "a", "-vim")
    --     )
    --   end,
    -- },
    -- By adding to the which-key config and using our helper function you can add more which-key registered bindings
    -- {
    --   "folke/which-key.nvim",
    --   config = function(plugin, opts)
    --     require "plugins.configs.which-key"(plugin, opts) -- include the default astronvim config that calls the setup call
    --     -- Add bindings which show up as group name
    --     local wk = require "which-key"
    --     wk.register({
    --       b = { name = "Buffer" },
    --     }, { mode = "n", prefix = "<leader>" })
    --   end,
    -- },
}
