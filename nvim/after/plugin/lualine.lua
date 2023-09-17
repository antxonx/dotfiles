local lualine = require('lualine')

local function custom()
    return '󰊠'
end


lualine.setup({
    options = {
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        globalstatus = true,
    },
    sections = {
        lualine_a = {
            custom,
            'mode'
        },
        lualine_b = {
            {
                'filename',
                symbols = {
                    modified = '',
                    readonly = '',
                }
            }
        },
        lualine_c = {
            'branch',
            'diff'
        },
        lualine_z = {
            'location',
            custom,
        },
    },
    winbar = {
        lualine_c = { 'filename' },
        lualine_x = {
            {
                'diagnostics',
                padding = 5,
            }
        },
    },
    inactive_winbar = {
        lualine_c = { 'filename' },
        lualine_x = {
            {
                'diagnostics',
                padding = 5,
            }
        },
    }
})
