return {
    "psjay/buffer-closer.nvim",
    event = "VeryLazy",
    config = function()
        require("buffer-closer").setup({
            close_key = "<leader>qq",
        })
    end,
}
