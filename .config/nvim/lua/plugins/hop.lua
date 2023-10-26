return {
  'smoka7/hop.nvim',
  version = "*",
  config = function()
    local hop = require('hop')
    hop.setup()

    local keymap = vim.keymap

    keymap.set("n", "<leader>h", "<cmd>HopWord<CR>", { desc = "Hop to word" })              -- toggle file explorer
  end
}
