local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- actions
  vim.keymap.set('n', 'a', api.fs.create, opts('Create'))
  vim.keymap.set('n', 'd', api.fs.remove, opts('Delete'))
  vim.keymap.set('n', 'm', api.fs.rename, opts('Rename'))
  vim.keymap.set('n', 'r', api.fs.rename, opts('Rename'))
  vim.keymap.set('n', 'R', api.tree.reload, opts('Reload'))

  vim.keymap.set('n', 'y', api.fs.copy.relative_path, opts('Copy relative path'))
  vim.keymap.set('n', 'Y', api.fs.copy.absolute_path, opts('Copy absolute path'))

  -- opening files
  vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open in place'))
  vim.keymap.set('n', 'o', api.node.open.edit, opts('Open in place'))
  vim.keymap.set('n', 's', api.node.open.vertical, opts('Open in split'))
  vim.keymap.set('n', 't', api.node.open.tab, opts('Open in tab'))

  -- misc
  vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
  vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
end

return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local nvimtree = require("nvim-tree")
    local api = require('nvim-tree.api')

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.g.nvim_tree_disable_keybindings = 1

    -- configure nvim-tree
    nvimtree.setup({
      on_attach = my_on_attach,
      view = {
        width = 35,
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    })

    -- set global keymaps
    local keymap = vim.keymap                                                                               -- for conciseness

    keymap.set("n", "<leader>,", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })              -- toggle file explorer
    keymap.set("n", "find", "<cmd>NvimTreeFindFile<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
  end,
}
