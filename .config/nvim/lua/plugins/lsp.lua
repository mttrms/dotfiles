return {
  'VonHeikemen/lsp-zero.nvim',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'L3MON4D3/LuaSnip',
  },
  config = function()
    local lsp_zero = require('lsp-zero')

    lsp_zero.on_attach(function(client, bufnr)
      lsp_zero.default_keymaps({buffer = bufnr})
    end)

    local cmp = require('cmp')

    cmp.setup({
      experimental = {
          native_menu = false,
          ghost_text = true,
        },
        preselect = true,
        completion = { completeopt = 'menu,menuone,noinsert' },
        sorting = {
          comparators = {
            cmp.config.compare.locality,
            cmp.config.compare.score,
            cmp.config.compare.priority,
            cmp.config.compare.order,
            cmp.config.compare.offset,
            cmp.config.compare.recently_used,
          },
        },
        mapping = cmp.mapping.preset.insert({
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
        sources = {
          { name = 'nvim_lsp_signature_help' },
          { name = 'nvim_lsp', priority = 20 },
          { name = 'ctags',    priority = 20 },
          { name = 'buffer',   priority = 10 },
          { name = 'path',     priority = 10 },
        },
    })

    require('mason').setup({})
    require('mason-lspconfig').setup({
      ensure_installed = {
        'bashls',
        'cssls',
        'eslint',
        'html',
        'rust_analyzer',
        'solargraph',
        'tsserver',
      },
      handlers = {
        lsp_zero.default_setup,
      },
    })
  end
}
