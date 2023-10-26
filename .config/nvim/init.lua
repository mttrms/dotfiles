vim.opt.termguicolors = true

-- Load configs before plugins to initialize
-- vim.cmd('runtime! lua/core/*.lua')
require("core")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {
  install = {
    colorscheme = { "tokyonight-moon" },
  },
  change_detection = {
    enabled = true,
    notify = false,
  },
  checker = { enabled = false },
})

-- Load configs after plugins to ensure we don't get overriden
-- vim.cmd('runtime! lua/core/*.lua')
require("core")
