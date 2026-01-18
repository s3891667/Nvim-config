require('owen/packer-plugins')

vim.o.relativenumber = true
vim.opt.laststatus = 3
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.opt.scrolloff = 8

vim.opt.termguicolors = true


vim.opt.tabstop = 4        -- number of spaces a tab counts for
vim.opt.shiftwidth = 4     -- spaces for each indentation
vim.opt.expandtab = true   -- convert tabs to spaces
vim.opt.smartindent = true -- smart indenting on new lines
vim.opt.autoindent = true  -- copy indent from current line when starting new one

vim.cmd([[
  command! -nargs=0 So source $MYVIMRC
]])


vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

