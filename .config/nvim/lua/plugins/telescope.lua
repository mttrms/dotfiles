return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "nvim-lua/plenary.nvim",

    },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<C-P>', builtin.git_files, {})
      vim.keymap.set('n', '<leader>p', builtin.find_files, {})

      vim.keymap.set('n', '<leader>B', builtin.buffers, {})
      vim.cmd [[
        autocmd User TelescopePreviewerLoaded setlocal wrap
      ]]
    end,
  },
}
