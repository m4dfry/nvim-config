return {
	"nvimtools/none-ls.nvim",
	lazy = false,
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
        -- lua
				null_ls.builtins.formatting.stylua,

        -- go
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.diagnostics.golangci_lint,

			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
