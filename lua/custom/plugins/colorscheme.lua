return {

  -- {
  --   'folke/tokyonight.nvim',
  --   lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     vim.cmd.colorscheme 'tokyonight-night'
  --     vim.cmd.hi 'Comment gui=none'
  --   end,
  -- },
  {
    'zenbones-theme/zenbones.nvim',
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = 'rktjmp/lush.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.o.background = 'light'
      vim.cmd.colorscheme 'zenbones'
    end,
  },
  --
  --   {
  --     'tjdevries/colorbuddy.nvim',
  --     config = function()
  --       vim.cmd.colorscheme 'gruvbuddy'
  --       vim.cmd "hi colorcolumn guibg='#282a2e'"
  --       local colorbuddy = require 'colorbuddy'
  --       local c = colorbuddy.colors
  --       local Group = colorbuddy.Group
  --       local g = colorbuddy.groups
  --       local s = colorbuddy.styles
  --
  --       Group.new('GoTestSuccess', c.green, nil, s.bold)
  --       Group.new('GoTestFail', c.red, nil, s.bold)
  --
  --       Group.new('StatuslineError1', c.red:light():light(), g.Statusline)
  --       Group.new('StatuslineError2', c.red:light(), g.Statusline)
  --       Group.new('StatuslineError3', c.red, g.Statusline)
  --       Group.new('StatuslineError3', c.red:dark(), g.Statusline)
  --       Group.new('StatuslineError3', c.red:dark():dark(), g.Statusline)
  --
  --       -- vim.cmd [[highlight WinSeparator guifg=#4e545c guibg=None]]
  --       Group.new('WinSeparator', nil, nil)
  --
  --       -- TODO: It would be nice if we could only highlight
  --       -- the text with characters or something like that...
  --       -- but we'll have to stick to that for later.
  --       -- Group.new("InjectedLanguage", nil, g.Normal.bg:dark())
  --
  --       Group.new('LspParameter', nil, nil, s.italic)
  --       Group.new('LspDeprecated', nil, nil, s.strikethrough)
  --
  --       -- Group.new("VirtNonText", c.yellow:light():light(), nil, s.italic)
  --       Group.new('VirtNonText', c.gray3:dark(), nil, s.italic)
  --
  --       Group.new('TreesitterContext', nil, g.Normal.bg:light())
  --       Group.new('TreesitterContextLineNumber', c.blue)
  --
  --       Group.new('@punctuation.bracket.rapper', c.gray3, nil, s.none)
  --       Group.new('@rapper_argument', c.red, nil, s.italic)
  --       Group.new('@rapper_return', c.orange:light(), nil, s.italic)
  --
  --       Group.new('@constructor.ocaml', c.orange:light(), nil, s.none)
  --
  --       vim.cmd [[
  --   hi link @punctuation.bracket.rapper @text.literal
  --
  --   " hi link @lsp.type.variable.lua variable
  --   " hi link @lsp.type.variable.ocaml variable
  --   " hi link @lsp.type.variable.rust variable
  --   " hi link @lsp.type.namespace @namespace
  -- ]]
  --     end,
  --   },
  --   {
  --     'tjdevries/express_line.nvim',
  --   },
}
