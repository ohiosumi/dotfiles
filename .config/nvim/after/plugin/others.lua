require('luatab').setup()
require'alpha'.setup(require'alpha.themes.startify'.config)
require('modicator').setup()
require('nvim-surround').setup()
require('colorizer').setup()
require('lspsaga').setup()
require('trouble').setup()

require('nvim-autopairs').setup {
  disable_filetype = { 'TelescopePrompt' , 'vim' },
  disable_in_macro = false,
  disable_in_visualblock = false,
  disable_in_replace_mode = true,
  ignored_next_char = [=[[%w%%%'%[%"%.]]=],
  enable_moveright = true,
  enable_afterquote = true,
  enable_check_bracket_line = true,
  enable_bracket_in_quote = true,
  enable_abbr = false,
  break_undo = true,
  check_ts = false,
  map_cr = true,
  map_bs = true,
  map_c_h = false,
  map_c_w = false,
}

require('indent_blankline').setup {
    space_char_blankline = ' ',
    show_current_context = true,
    show_current_context_start = true,
}

require('Comment').setup {
  toggler = { block = 'g//' },
  opleader = { block = 'g/' }
}

require('lspkind').init({
    mode = 'symbol_text',
    preset = 'codicons',
    symbol_map = {
      Text = "",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "ﰠ",
      Variable = "",
      Class = "ﴯ",
      Interface = "",
      Module = "",
      Property = "ﰠ",
      Unit = "塞",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "פּ",
      Event = "",
      Operator = "",
      TypeParameter = ""
    },
})