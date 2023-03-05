-- Configure the appearance

local colorscheme = "base16-atelier-heath"

local is_color_valid, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_color_valid then
  return
end

-- transparent background workaround
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
-- vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none", ctermbg = "none"})
-- vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { bg = "none", ctermbg = "none"})

