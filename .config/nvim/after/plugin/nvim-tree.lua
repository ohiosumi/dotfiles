-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 2
vim.g.loaded_netrwPlugin = 2

local tree_cb = require("nvim-tree.config").nvim_tree_callback

require("nvim-tree").setup({
	hijack_cursor = true,
	sync_root_with_cwd = true,
	sort_by = "case_sensitive",

	live_filter = {
		prefix = "[FILTER]: ",
		always_show_folders = false,
	},

	update_focused_file = {
		enable = true,
		update_root = true,
		ignore_list = { "help" },
		update_cwd = true,
	},

	view = {
		width = 15,
		side = "right",
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
				{ key = { "l", "<CR>", "<2-LeftMouse>" }, cb = tree_cb("edit") },
				{ key = "L", cb = tree_cb("cd") },
				{ key = "<C-s>", cb = tree_cb("split") },
				{ key = "<C-v>", cb = tree_cb("vsplit") },
				{ key = "<C-t>", cb = tree_cb("tabnew") },
				{ key = "h", cb = tree_cb("close_node") },
				{ key = "i", cb = tree_cb("preview") },
				{ key = "R", cb = tree_cb("refresh") },
				{ key = "c", cb = tree_cb("create") },
				{ key = "r", cb = tree_cb("rename") },
				{ key = "d", cb = tree_cb("cut") },
				{ key = "y", cb = tree_cb("copy") },
				{ key = "p", cb = tree_cb("paste") },
				{ key = "D", cb = tree_cb("remove") },
				{ key = "yn", cb = tree_cb("copy_name") },
				{ key = "yp", cb = tree_cb("copy_path") },
				{ key = "ya", cb = tree_cb("copy_absolute_path") },
        { key = '"', action = "collapse_all" },
				{ key = "q", cb = tree_cb("close") },
			},
		},
	},
	renderer = {
		full_name = false,
		group_empty = true,
		indent_markers = {
			enable = false,
		},
		icons = {
			glyphs = {
				default = "",
				symlink = "",
				folder = {
					arrow_open = "",
					arrow_closed = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "",
					staged = "S",
					unmerged = "",
					renamed = "➜",
					untracked = "U",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},

	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},

	filters = {
		custom = {
			"^.git$",
      "^.node_modules$"
		}
	},

  actions = {
      change_dir = {
        enable = true,
      },
      open_file = {
        resize_window = true,
        window_picker = {
          chars = "aoeui",
        },
      },
      remove_file = {
        close_window = false,
      },
    }
})

