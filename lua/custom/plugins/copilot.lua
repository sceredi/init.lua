return {
  {
    'zbirenbaum/copilot.lua',
    config = function()
      require('copilot').setup {
        suggestion = {
          enabled = true,
          auto_trigger = false,
          keymap = {
            accept = '<M-j>',
            accept_word = '<M-l>',
            accept_line = false,
            next = '<M-]>',
            prev = '<M-[>',
            dismiss = '<C-]>',
          },
        },
        panel = { enabled = false },
      }
    end,
  },
}
