return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = '[G]it [S]tatus' })
    local ThePrimeagen_Fugitive = vim.api.nvim_create_augroup('ThePrimeagen_Fugitive', {})

    local autocmd = vim.api.nvim_create_autocmd
    autocmd('BufWinEnter', {
      group = ThePrimeagen_Fugitive,
      pattern = '*',
      callback = function()
        if vim.bo.ft ~= 'fugitive' then
          return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        local opts = { buffer = bufnr, remap = false }
        opts.desc = 'Git Push'
        vim.keymap.set('n', '<leader>p', function()
          vim.cmd.Git 'push'
        end, opts)

        -- rebase always
        opts.desc = 'Git Pull Rebase'
        vim.keymap.set('n', '<leader>P', function()
          vim.cmd.Git { 'pull', '--rebase' }
        end, opts)

        -- NOTE: It allows me to easily set the branch i am pushing and any tracking
        -- needed if i did not set the branch up correctly
        opts.desc = 'Git Push -u origin'
        vim.keymap.set('n', '<leader>t', ':Git push -u origin ', opts)
        vim.keymap.set('n', 'fg', '<cmd>diffget //2<CR>', { desc = 'Pick left change' })
        vim.keymap.set('n', 'fm', '<cmd>diffget //3<CR>', { desc = 'Pick right change' })
      end,
    })
  end,
}
