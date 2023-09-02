require("catppuccin").setup ({
	highlight_overrides = {
        mocha = function(mocha)
            return {
		LineNr = { fg = "#737994" },
		Comment = { fg = "#737994"},
		CursorLineNr = { fg = "#c6d0f5" },
            }
        end,
	}
	
})
