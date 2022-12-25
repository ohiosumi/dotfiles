local set = vim.opt
local options = {}
for k, v in pairs(options) do
  vim.opt[k] = v
end

set.encoding = 'utf-8'
set.fileencoding = 'utf-8'

-- UI
set.number = true
set.cursorline = false
set.wrap = false
set.termguicolors = true
set.title = true
set.scrolloff = 5
set.sidescrolloff = 8
set.shortmess:append "c"
set.iskeyword:append "-"
set.formatoptions:remove({ "c", "r", "o" })
set.backspace = { 'start', 'eol', 'indent' }

-- Completions
set.completeopt={'noinsert', 'menuone', 'noselect'}
set.wildmenu = true
set.ttimeoutlen= 100
set.winblend = 0
set.wildoptions = 'pum'
set.pumblend = 5

-- Terminals And Splitting
set.splitbelow = true
set.splitright= true
set.inccommand= "split"

-- Utility
set.showcmd =false 
set.cmdheight = 1
set.shell = 'fish'
set.laststatus = 2
set.mouse= 'a'
set.hidden = true
set.swapfile = false
set.backup = false
set.clipboard = 'unnamedplus'
set.wildignore:append { '*/node_modules/*' }
set.path:append { '**' }
set.backupskip = { '/tmp/*', '/private/tmp/*' }

-- Tabs And Spaces
set.foldexpr = "nvim_treesitter#foldexpr()"
set.expandtab = true
set.shiftwidth = 2
set.tabstop = 2
set.smarttab = true
set.ignorecase = true
set.breakindent = true
set.fillchars = {
  vert = ' ', -- Vertical separator
  msgsep = '─', -- Message separator
  eob = ' ' -- Empty line indicator
}

--let g:neovide_transparency = 0.8
vim.g.neovide_floating_blur_amount_x = 2.0
vim.g.neovide_floating_blur_amount_y = 2.0
vim.g.neovide_scroll_animation_length = 0.3
vim.g.neovide_remember_window_size = true
vim.g.neovide_cursor_vfx_mode = "railgun"
