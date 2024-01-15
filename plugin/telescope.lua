require('telescope').setup {
	pickers = {
		find_files = {
			disable_devicons = true,
		},
		live_grep = {
			disable_devicons = true,
		},
		grep_string = {
			disable_devicons = true,
		}
	},

	shorten_path = true,


}
vim.api.nvim_set_keymap('n', '<C-f>', "<cmd>lua require('telescope.builtin').find_files()<CR>",
	{ noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-g>',
	"<cmd>lua require('telescope.builtin').live_grep()<CR>",
	{ noremap = true, silent = true })
