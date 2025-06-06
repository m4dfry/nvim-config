return {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
        "windwp/nvim-autopairs",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },

    config = function()
        vim.lsp.enable('pyright')
        vim.lsp.enable('gopls')
    end,
}
