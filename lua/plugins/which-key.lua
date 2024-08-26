return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function()
        local wk = require("which-key")

        wk.add({
            { "<leader>c", group = "Code/LSP/Comment" },
            { "<leader>d", group = "DAP" },
            { "<leader>f", group = "Telescope" },
            { "<leader>w", group = "Windows" },
            { "<leader>x", group = "Trouble" },
        })
    end,
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
}
