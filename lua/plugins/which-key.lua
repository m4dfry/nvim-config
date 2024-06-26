return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function()
        local wk = require("which-key")

        wk.register({
            ["<leader>f"] = {
                name = "Telescope",
            },
            ["<leader>c"] = {
                name = "Code/LSP/Comment",
            },
            ["<leader>w"] = {
                name = "Windows",
            },
            ["<leader>x"] = {
                name = "Trouble",
            },
            ["<leader>d"] = {
                name = "DAP",
            }


        })
    end,
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
}
