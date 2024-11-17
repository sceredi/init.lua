return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    variant = 'moon',
    config = function()
      vim.cmd.colorscheme 'rose-pine-moon'
    end,
  },

  -- {
  --   'zenbones-theme/zenbones.nvim',
  --   dependencies = 'rktjmp/lush.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   config = function()
  --     vim.o.background = 'light'
  --     vim.cmd.colorscheme 'zenbones'
  --   end,
  -- },
}
