vim.opt.number = true
vim.opt.cursorline = true
--vim.opt.cursorlineopt = "line"
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.clipboard = 'unnamedplus' -- Use the system clipboard for yank and paste.
vim.opt.scrolloff = 999



vim.api.nvim_create_autocmd("FileType", {
  pattern = "help",
  callback = function()
    vim.cmd("wincmd _")
  end,
})

	

