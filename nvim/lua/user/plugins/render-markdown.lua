return {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = { 'markdown', 'quarto' },
    opts = {
        sign = { 
            enabled = false
        },
        render_modes = {'n', 'v', 'i', 'c'},
        code = {
            sign = true,
            width = 'block',
            min_width = 120,
            style = 'full',
            left_pad = 2,
            language_pad = 2,    
            border = 'thick',
        },
        heading = {
            width = 'block',
            min_width = 120,
            border = true,
            border_virtual = true,
            left_pad = 4,
            position = 'inline',
        },
        pipe_table = { 
            preset = 'round' 
        },
        dash = {
            width = 120
        },
    },
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
}
