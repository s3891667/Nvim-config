vim.o.relativenumber = true
vim.opt.laststatus = 3
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")





vim.opt.scrolloff = 8


--vim.g.loaded_python3_provider = nil
require('packer-plugins')

--local enable_providers = {
--"python3_provider",
--"node_provider",
---- and so on
--}

--for _, plugin in pairs(enable_providers) do
--vim.g["loaded_" .. plugin] = nil
--vim.cmd("runtime " .. plugin)
--end
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


vim.cmd([[
  command! -nargs=0 So source $MYVIMRC
]])


vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)


--local function open_nvim_tree()
	---- always open the tree
	--require("nvim-tree.api").tree.open()
--end
--vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
