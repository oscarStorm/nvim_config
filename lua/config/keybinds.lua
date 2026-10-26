vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", "<cmd>Telescope diagnostics bufnr=0<CR>", {
    desc = "Show diagnostics for current file",
})
