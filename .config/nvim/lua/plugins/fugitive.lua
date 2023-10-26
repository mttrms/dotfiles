return {
  {
    "tpope/vim-fugitive",
    config = function()
      local keymap = vim.keymap

      keymap.set("n", "<leader>gb", "<cmd>Git blame<cr>")
      keymap.set("n", "<leader>gd", "<cmd>Git diff<cr>")
    end
  }
}
