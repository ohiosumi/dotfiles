-- Configure the appearance
-- Load the colorscheme
local colorscheme = "github_dark"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

function TransparencyToggle()
  vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})

  vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none", ctermbg = "none"})
  vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { bg = "none", ctermbg = "none"})
end
TransparencyToggle()

local status, colorizer = pcall(require, "colorizer")
if not status then
  return
end
