--vim.opt.list = true
--vim.opt.listchars:append "space:⋅"
--vim.opt.listchars:append "eol:↴"
--------------------------------------------------------------- Lua Tab
require('luatab').setup{}
--------------------------------------------------------------- Lua Tab

--------------------------------------------------------------- ZenMode
require("zen-mode").setup {}
--------------------------------------------------------------- ZenMode

--------------------------------------------------------------- Indent Blankline
require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
--------------------------------------------------------------- Indent Blankline

--------------------------------------------------------------- Formatter
local util = require("formatter.util")

require("formatter").setup({
	logging = false,
	filetype = {
		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
--------------------------------------------------------------- Formatter

--------------------------------------------------------------- Autopairs
require("nvim-autopairs").setup {
  disable_filetype = { "TelescopePrompt" , "vim" },
  disable_in_macro = false,
  disable_in_visualblock = false,
  disable_in_replace_mode = true,
  ignored_next_char = [=[[%w%%%'%[%"%.]]=],
  enable_moveright = true,
  enable_afterquote = true,
  enable_check_bracket_line = true,
  enable_bracket_in_quote = true,
  enable_abbr = false,
  break_undo = true,
  check_ts = false,
  map_cr = true,
  map_bs = true,
  map_c_h = false,
  map_c_w = false,
}
--------------------------------------------------------------- Autopairs

require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups

    -- example of akinsho/nvim-bufferline.lua
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  },
  exclude = {}, -- table: groups you don't want to clear
})
