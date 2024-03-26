vim.opt_local.shiftwidth = 2

vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
  desc = 'Refresh code lens on save',
  group = vim.api.nvim_create_augroup('ocaml_codelens_custom', { clear = true }),
  callback = function()
    vim.lsp.codelens.refresh()
  end,
})
