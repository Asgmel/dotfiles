return {
  'vim-test/vim-test',
  dependencies = {
    'preservim/vimux',
  },
  vim.keymap.set('n', '<leader>Tn', ':TestNearest<CR>', { desc = '[T]est [n]earest' }),
  vim.keymap.set('n', '<leader>Tf', ':TestFile<CR>', { desc = '[T]est [f]ile' }),
  vim.keymap.set('n', '<leader>Ts', ':TestSuite<CR>', { desc = '[T]est [s]uite' }),
  vim.keymap.set('n', '<leader>Tl', ':TestLast<CR>', { desc = '[T]est [l]ast' }),
  vim.keymap.set('n', '<leader>Tv', ':TestVisit<CR>', { desc = '[T]est [v]isit' }),
  vim.cmd "let test#strategy = 'vimux'",
}
