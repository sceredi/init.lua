return {
  {
    'stevearc/oil.nvim',
    opts = {
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open paret directory' }),
      vim.keymap.set('n', '<leader>pf', '<CMD>Oil<CR>', { desc = 'Open paret directory' }),
      require('oil').setup {
        view_options = {
          show_hidden = false,
        },
      },
    },
    config = function()
      CustomOilBar = function()
        local path = vim.fn.expand '%'
        path = path:gsub('oil://', '')

        return '  ' .. vim.fn.fnamemodify(path, ':.')
      end

      require('oil').setup {
        columns = { 'icon' },
        keymaps = {
          ['<C-h>'] = false,
          ['<C-l>'] = false,
          ['<C-k>'] = false,
          ['<C-j>'] = false,
          ['<C-p>'] = false,
          ['<M-p>'] = 'actions.preview',
        },
        win_options = {
          winbar = '%{v:lua.CustomOilBar()}',
        },
        view_options = {
          show_hidden = true,
          is_always_hidden = function(name, _)
            local folder_skip = { 'dev-tools.locks', 'dune.lock', '_build' }
            return vim.tbl_contains(folder_skip, name)
          end,
        },
      }
    end,
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  },
}
