require("catppuccin").setup({
	highlight_overrides = {
		mocha = function(mocha)
			return {
				LineNr = { fg = "#737994" },
				Comment = { fg = "#737994" },
				CursorLineNr = { fg = "#c6d0f5" },
			}
		end,
	},
	integrations = {
		nvimtree = true,
		treesitter = true,
		notify = false,
		neogit = true,
		cmp = true,
		gitsigns = true,
		telescope = true,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
		}
	},
	styles = {                   -- Handles the styles of general hi groups (see `:h highlight-args`):
		comments = { "bold", "standout" }, -- Change the style of comments
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
})
