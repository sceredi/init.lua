return {
  {
    'stevearc/oil.nvim',
    opts = {
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open paret directory' }),
      vim.keymap.set('n', '<leader>pf', '<CMD>Oil<CR>', { desc = 'Open paret directory' }),
    },
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  },
}
