return {
    -- Non lazy loaded plugins.
    -- Lazy loaded plugins are in their on files
    -- ---------------------------------------------
    -- Color scheme
    -- 'rebelot/kanagawa.nvim',
    { 'rose-pine/neovim', name = 'rose-pine' },
    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },                  -- Required
            { 'hrsh7th/cmp-nvim-lsp' },              -- Required
            { 'hrsh7th/cmp-buffer' },                -- Optional
            { 'hrsh7th/cmp-path' },                  -- Optional
            { 'saadparwaiz1/cmp_luasnip' },          -- Optional
            { 'hrsh7th/cmp-nvim-lua' },              -- Optional
            -- Snippets
            { 'L3MON4D3/LuaSnip' },                  -- Required
            { 'rafamadriz/friendly-snippets' },      -- Optional
        }
    },
    -- Dev icons
    'nvim-tree/nvim-web-devicons',
    -- Buffer line (tabs)
    {
        'akinsho/bufferline.nvim',
        version = '*',
        dependencies = {
            { 'nvim-tree/nvim-web-devicons' }
        }
    },
    -- Nvim tree
    'nvim-tree/nvim-tree.lua',
    -- Lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            { 'nvim-tree/nvim-web-devicons', opt = true }
        }
    },
    -- Gitsigns
    'lewis6991/gitsigns.nvim',
    -- Comments
    'numToStr/Comment.nvim',
    -- tmux vim
    'christoomey/vim-tmux-navigator'
}
