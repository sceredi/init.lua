return {

  { -- Linting
    'mfussenegger/nvim-lint',
    -- NOTE: nixCats: return true only if category is enabled, else false
    enabled = require('nixCatsUtils').enableForCategory 'kickstart-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lint = require 'lint'
      lint.linters_by_ft = {
        markdown = { 'markdownlint' },
        python = { 'flake8', 'ruff' },
        javascript = { 'eslint' },
        typescript = { 'eslint' },
        elixir = { 'mix credo' },
      }

      local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = function()
          require('lint').try_lint()
        end,
      })
    end,
  },
}
