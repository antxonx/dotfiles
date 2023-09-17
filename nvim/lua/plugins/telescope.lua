return
{
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    cmd = "Telescope",
    keys = {
        { "<leader>fs", function()
            require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") });
        end }
    },
    dependencies = {
        { 'nvim-lua/plenary.nvim' }
    },
}
