local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- leader
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- files
map("n", "<C-q>", ":q!<CR>", opts)
map("n", "<C-s>", ":w<CR>", opts)
map("n", "<C-b>", ":NvimTreeToggle<CR>", opts)
map("n", "T", ":sp<CR>:terminal<CR>", opts)

-- navigate tabs
map("n", "<S-Tab>", "gT", opts)
map("n", "<Tab>", "gt", opts)
map("n", "<C-t>", ":tabnew<CR>", opts)
map('n', 'te', ':tabedit<cr>',opts)
map("n", "<F6>", ":bd<CR>", opts)

-- go to start/end of the line
map("i", "<C-E>", "<ESC>A", opts)
map("i", "<C-A>", "<ESC>I", opts)

-- source nvim || reload nvim
map("n", "<leader>rr", ":source $MYVIMRC | Lazy sync<cr>", opts)

-- sane defaults
map('', 'qq', '', opts)
map('n', 'o', 'o<ESC>', opts)
map('n', 'O', 'O<ESC>', opts)
map('n', 'x', '"_x', opts)
map('x', 'x', '"_x', opts)
map('i', 'jk', '<ESC>', opts)
map('i', 'kj', '<ESC>', opts)
map('n', ';', ':', opts)
map('n', '<PAGE-UP>', '<C-U>', opts)
--map('', 'k', 'j', opts)
--map('', 'j', 'k', opts)

-- deletes word from backward
map('n', 'da', 'vb"_d', opts)

-- selects all text from current buffer
--map('n', '<C-a>', 'gg<S-v>G', opts)

-- clear search highlight
map('n', 'coh', '<Cmd>nohlsearch<CR>', opts)

-- move text up and down
map("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
map("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
map("v", "<A-j>", ":m .+1<CR>==", opts)
map("v", "<A-k>", ":m .-2<CR>==", opts)
map("v", "p", '"_dP', opts)
map("x", "J", ":move '>+1<CR>gv-gv", opts)
map("x", "K", ":move '<-2<CR>gv-gv", opts)
map("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
map("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- split windows
map('n', 'ss', ':split<Return><C-m>m',opts)
map('n', 'sv', ':vsplit<Return><C-m>m',opts)

-- move window
map('n', '|', '<C-w>w',opts)
map('', 'sh', '<C-w>h',opts)
map('', 'sk', '<C-w>k',opts)
map('', 'sj', '<C-w>j',opts)
map('', 'sl', '<C-w>l',opts)

-- resize window
map('n', '<C-w><left>', '<C-w><',opts)
map('n', '<C-w><right>', '<C-w>>',opts)
map('n', '<C-w><up>', '<C-w>+',opts)
map('n', '<C-w><down>', '<C-w>-',opts)

-- resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- diagnostics
map("n", "<space>e", "vim.diagnostic.open_float", opts)
map("n", "[d", "vim.diagnostic.goto_prev", opts)
map("n", "]d", "vim.diagnostic.goto_next", opts)
map("n", "<space>q", "vim.diagnostic.setloclist", opts)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

