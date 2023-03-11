-- Configure the appearance

require("gruvbox").setup({
  contrast = "hard", -- can be "hard", "soft" or empty string
  dim_inactive = true,
  transparent_mode = false,
})
local colorscheme = "gruvbox"

local is_color_valid, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_color_valid then
  return
end

-- transparent background workaround
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
-- vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none", ctermbg = "none"})
-- vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { bg = "none", ctermbg = "none"})

