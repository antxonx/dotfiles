local bufferline = require("bufferline")

bufferline.setup {
    options = {
        themable = true,
        separator_style = 'slant',
        diagnostics = "nvim_lsp",
        indicator = {
            style = 'none'
        },
        diagnostics_indicator = function(count, level)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end,
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true
            }
        },
        color_icons = true,
        show_tab_indicators = true,
    },
}
