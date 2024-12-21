return {
  'stevearc/oil.nvim', -- Plugin to manage file navigation (oil.nvim)
  config = function()
    -- Setup oil.nvim with any desired configuration
    require('oil').setup {
      -- Configuration for oil.nvim (optional)
      view_options = {
        show_hidden = true, -- Show hidden files (like .git files)
        follow_current_file = true, -- Follow the current file in the directory view
      },
    }

    -- Keybinding: Use '-' to open oil.nvim file manager in normal mode
    vim.api.nvim_set_keymap('n', '-', ':Oil<CR>', { noremap = true, silent = true })
  end,
}
