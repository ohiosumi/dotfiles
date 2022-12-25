-- Configure the appearance
-- Load the colorscheme
local colorscheme = "catppuccin-mocha"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

local status, colorizer = pcall(require, "colorizer")
if (not status) then return end

colorizer.setup({
  '*';
})
