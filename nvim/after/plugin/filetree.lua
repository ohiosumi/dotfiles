-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 2
vim.g.loaded_netrwPlugin = 2

local tree_cb = require'nvim-tree.config'.nvim_tree_callback

require('nvim-tree').setup({
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  hijack_cursor = true,
  sort_by = "case_sensitive",
  view = {
    width = 10,
    side = "left",
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = { 'l', '<CR>', '<2-LeftMouse>' }, cb = tree_cb('edit') },
        { key = 'L', cb = tree_cb('cd') },
        { key = '<C-s>', cb = tree_cb('split') },
        { key = '<C-v>', cb = tree_cb('vsplit') },
        { key = '<C-t>', cb = tree_cb('tabnew') },
        { key = 'h', cb = tree_cb('close_node') },
        { key = 'i', cb = tree_cb('preview') },
        { key = 'R', cb = tree_cb('refresh') },
        { key = 'c', cb = tree_cb('create') },
        { key = 'D', cb = tree_cb('remove') },
        { key = 'r', cb = tree_cb('rename') },
        { key = 'd', cb = tree_cb('cut') },
        { key = 'y', cb = tree_cb('copy') },
        { key = 'p', cb = tree_cb('paste') },
        { key = 'gyn', cb = tree_cb('copy_name') },
        { key = 'gyp', cb = tree_cb('copy_path') },
        {
          key = 'gya',
          cb = tree_cb('copy_absolute_path'),
        },
        { key = 's', cb = tree_cb('system_open') },
        { key = 'q', cb = tree_cb('close') },
      },
    },
  },
   renderer = {
    root_folder_modifier = ":t",
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
    dotfiles = true,
  },
})
