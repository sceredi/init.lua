return {
  {
    'zbirenbaum/copilot.lua',
    config = function()
      require('copilot').setup {
        suggestion = { enabled = false },
        panel = { enabled = false },
      }
      vim.keymap.set('n', '<leader>gcd', '<cmd>Copilot disable<CR>', { desc = '[G]ithub [C]opilot disable' })
      vim.keymap.set('n', '<leader>gce', '<cmd>Copilot enable<CR>', { desc = '[G]ithub [C]opilot enable' })
      vim.cmd 'Copilot disable'
    end,
  },
  -- {
  --   'zbirenbaum/copilot-cmp',
  --   after = { 'copilot.lua' },
  --   config = function()
  --     require('copilot_cmp').setup()
  --   end,
  -- },
}
