-- <C-\><C-n> to go normal
vim.keymap.set("t", "<A-f>", "<C-\\><C-n>|:FloatermToggle<CR>")
vim.keymap.set("n", "<A-f>", ":FloatermToggle<CR>")
vim.keymap.set("n", "<A-F>", ":FloatermNew<CR>")
vim.keymap.set("n", "<A-h>", ":FloatermPrev<CR>")
vim.keymap.set("n", "<A-l>", ":FloatermNext<CR>")
vim.keymap.set("t", "<A-h>", "<C-\\><C-n>|:FloatermPrev<CR>")
vim.keymap.set("t", "<A-l>", "<C-\\><C-n>|:FloatermNext<CR>")

vim.keymap.set("n", "<leader>gg", ":FloatermNew --autohide=1 --height=0.9 --width=0.9 --autoclose=2 lazygit<CR>")
vim.keymap.set("n", "<leader>gf", ":FloatermNew --autohide=1 --height=0.9 --width=0.9 --autoclose=2 lf<CR>")
