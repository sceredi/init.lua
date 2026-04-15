return {
  {
    'stevearc/oil.nvim',
    lazy = false,
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    config = function()
      require('oil').setup {
        columns = { 'icon' },
        view_options = {
          show_hidden = false,
        },
        keymaps = {
          ['<C-h>'] = false,
          ['<C-l>'] = false,
          ['<C-k>'] = false,
          ['<C-j>'] = false,
          ['<C-p>'] = false,
          ['<M-p>'] = 'actions.preview',
        },
      }

      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
      vim.keymap.set('n', '<leader>pf', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    end,
  },
}
