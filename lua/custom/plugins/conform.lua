return { -- Autoformat
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  ---@module 'conform'
  ---@type conform.setupOpts
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      local enabled_filetypes = {
        lua = true,
        python = true,
        java = true,
        ocaml = true,
        javascript = true,
        typescript = true,
        nix = true,
        cpp = true,
        elixir = true,
        go = true,
      }
      if enabled_filetypes[vim.bo[bufnr].filetype] then
        return { timeout_ms = 500 }
      else
        vim.notify 'No formatter configured for this filetype'
        return nil
      end
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      -- Conform can also run multiple formatters sequentially
      python = { 'isort', 'black' },
      java = { 'google-java-format' },
      ocaml = { 'ocamlformat' },
      --
      -- You can use a sub-list to tell conform to run *until* a formatter
      -- is found.
      javascript = { 'prettierd', 'prettier', stop_after_first = true },
      typescript = { 'prettierd', 'prettier', stop_after_first = true },

      nix = { 'alejandra' },
      cpp = { 'clang-format' },

      elixir = { 'mix format' },
      go = { 'gofmt' },
    },
    formatters = {
      nixfmt = {
        command = 'nixfmt',
      },
    },
  },
}
