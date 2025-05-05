return { -- Autoformat
  'stevearc/conform.nvim',
  lazy = false,
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_fallback = true }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      local disable_filetypes = {}
      return {
        timeout_ms = 500,
        lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
      }
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
    },
    formatters = {
      nixfmt = {
        command = 'nixfmt',
      },
    },
  },
}
