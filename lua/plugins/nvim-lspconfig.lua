return {
  "neovim/nvim-lspconfig",
  lazy = false,
  dependencies = {
    "windwp/nvim-autopairs",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim"
  },

  config = function()
    local lspconfig = require("lspconfig")

    lspconfig.lua_ls.setup({})

    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'gD', vim.lsp.buf.definition, {})
    vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})

    lspconfig.gopls.setup({})
  end
}
