function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function ()
    require("toggleterm").setup{
      vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()'),
      vim.keymap.set('n', '<Leader>t', ':ToggleTerm<Cr>')
    }
  end
}
