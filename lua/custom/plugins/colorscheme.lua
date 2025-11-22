return {
  -- 'rose-pine/neovim',
  -- name = 'rose-pine',
  -- config = function()
  --   vim.cmd 'colorscheme rose-pine'
  -- end,
  'sainnhe/gruvbox-material',
  config = function()
    vim.g.gruvbox_material_foreground = 'original'
    vim.g.gruvbox_material_background = 'medium'
    vim.g.gruvbox_material_enable_italic = true
    vim.cmd.colorscheme 'gruvbox-material'
  end,
}
