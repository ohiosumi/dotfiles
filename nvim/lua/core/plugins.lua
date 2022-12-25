local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end


local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require('packer').init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})
return require('packer').startup(function(use)

  -- Plugin Manager
  use 'wbthomason/packer.nvim'

  -- ColorSchemes
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'joshdick/onedark.vim'
  use("xiyaowong/nvim-transparent")

  use { 'goolord/alpha-nvim', config = function () require'alpha'.setup(require'alpha.themes.dashboard'.config) end }
  use { 'alvarosevilla95/luatab.nvim', requires='kyazdani42/nvim-web-devicons' }
  use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons' }, tag = 'nightly' }
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use "akinsho/toggleterm.nvim"
  use { "folke/zen-mode.nvim", config = function() require("zen-mode").setup() end }
  use { "folke/which-key.nvim", config = function() require("which-key").setup() end }
  use("lewis6991/gitsigns.nvim")

  -- Syntax
  use("nvim-treesitter/nvim-treesitter")
  use("onsails/lspkind.nvim")
  use("norcalli/nvim-colorizer.lua")
  use "lukas-reineke/indent-blankline.nvim"

  -- Editing
  use("windwp/nvim-autopairs")
  use("mg979/vim-visual-multi")
  use { 'numToStr/Comment.nvim', requires = { 'JoosepAlviste/nvim-ts-context-commentstring' } }
  -- Language Servers
  use("neovim/nvim-lspconfig")
  use 'jose-elias-alvarez/null-ls.nvim'
  use("ms-jpq/coq_nvim")
  use("ms-jpq/coq.artifacts")
  use("ms-jpq/coq.thirdparty")
 use 'glepnir/lspsaga.nvim'
  use 'L3MON4D3/LuaSnip'
  use "lukas-reineke/lsp-format.nvim"
  use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons", config = function() require("trouble").setup() end }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
