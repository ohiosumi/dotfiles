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

-- colors
  'pineapplegiant/spaceduck',
  'projekt0n/github-nvim-theme',
  'xiyaowong/nvim-transparent',

  'goolord/alpha-nvim',
  'nvim-lualine/lualine.nvim',
  'lewis6991/gitsigns.nvim',
  'alvarosevilla95/luatab.nvim',
  'nvim-tree/nvim-tree.lua',
  'nvim-telescope/telescope.nvim',
  'nvim-lua/plenary.nvim',

-- lsp configs
  'neovim/nvim-lspconfig',
  'onsails/lspkind.nvim',
  'glepnir/lspsaga.nvim',
  'folke/trouble.nvim',

-- completion
  'ms-jpq/coq_nvim',
  'ms-jpq/coq.artifacts',
  'ms-jpq/coq.thirdparty',

  'nvim-treesitter/nvim-treesitter',
  'norcalli/nvim-colorizer.lua',
  'nvim-tree/nvim-web-devicons',
  'lukas-reineke/indent-blankline.nvim',
  'xiyaowong/nvim-cursorword',
  'mawkler/modicator.nvim', 
  'windwp/nvim-autopairs',
  'numToStr/Comment.nvim',
  "kylechui/nvim-surround"
  
})

