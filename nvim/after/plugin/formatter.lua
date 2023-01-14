local util = require("formatter.util")

require("formatter").setup({
	logging = false, 
	filetype = {
		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
