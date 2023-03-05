-- lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

 -- colorschemes
    'RRethy/nvim-base16',
    'xiyaowong/nvim-transparent',

 -- utility
    'nvim-lualine/lualine.nvim',
    'lewis6991/gitsigns.nvim',
    'alvarosevilla95/luatab.nvim',
    'nvim-tree/nvim-tree.lua',
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',

 -- others
    'nvim-treesitter/nvim-treesitter',
    'norcalli/nvim-colorizer.lua',
    'nvim-tree/nvim-web-devicons',
    'lukas-reineke/indent-blankline.nvim',
    'karb94/neoscroll.nvim',
    'xiyaowong/nvim-cursorword',
    'windwp/nvim-autopairs',
    'kylechui/nvim-surround'

})
