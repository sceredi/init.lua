return {
  {
    'zbirenbaum/copilot.lua',
    config = function()
      require('copilot').setup {
        suggestion = { enabled = false },
        panel = { enabled = false },
        filetypes = {
          ['*'] = false,
        },
      }
      vim.keymap.set('n', '<leader>gca', '<cmd>Copilot! attach<CR>', { desc = '[G]ithub [C]opilot attach' })
      vim.keymap.set('n', '<leader>gcd', '<cmd>Copilot! disable<CR>', { desc = '[G]ithub [C]opilot disable' })
      vim.keymap.set('n', '<leader>gce', '<cmd>Copilot! enable<CR>', { desc = '[G]ithub [C]opilot enable' })
    end,
  },
  {
    'zbirenbaum/copilot-cmp',
    after = { 'copilot.lua' },
    config = function()
      require('copilot_cmp').setup()
    end,
  },
}
