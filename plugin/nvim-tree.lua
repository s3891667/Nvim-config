-- empty setup using defaults require("nvim-tree").setup()
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1




require("nvim-tree").setup({
	sort_by = "case_sensitive",
	hijack_cursor = false,
	filters = {
		dotfiles = false,
	},
	view = {
		side = "right",
		--float= {
		--enable = true,
		--quit_on_focus_loss = true,
		--open_win_config = {
		--relative = "editor",
		--border = "rounded",
		--width = 40,
		--height = 30,
		--row = 1,
		--col = columns,
		--},
		--},
		--signcolumn = "yes",
		width = 40,
	},

	renderer = {
		full_name = true,
		highlight_git = true,
		--group_empty = true,
		indent_markers = {
			enable = true,
		},
		icons = {
			show = {
				file = false,
				folder = true,
				folder_arrow = false,
				git = true,
				modified = true,
			}
		}
	},
})

require 'nvim-tree.view'.View.winopts.relativenumber = true
vim.api.nvim_set_keymap('n', '<C-t>', "<cmd>lua require('nvim-tree.api').tree.toggle()<CR>",
	{ noremap = true, silent = true })
