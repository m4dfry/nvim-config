return {
	"nvimtools/none-ls.nvim",
	lazy = false,
	config = function()
		local null_ls = require("null-ls")
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		null_ls.setup({

			-- auto format on save file
			-- from : https://www.reddit.com/r/neovim/comments/y9qv1w/commen/it6vkfp/
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format()
						end,
					})
				end
			end,

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
