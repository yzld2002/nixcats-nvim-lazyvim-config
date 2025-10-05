vim.g.root_spec = { 'cwd' }
vim.api.nvim_create_autocmd('VimLeave', {
  pattern = '*',
  command = 'silent !zellij action switch-mode normal',
})
