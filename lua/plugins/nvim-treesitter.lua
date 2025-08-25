local config = function()
	require("nvim-treesitter.configs").setup({
		indent = {
			enable = true,
		},
		autotag = {
			enable = true,
		},
		ensure_installed = {
			"markdown",
			"markdown_inline",
			"json",
			"yaml",
			"javascript",
			"typescript",
			"go",
			"lua",
			"python",
			"html",
			"css",
			"bash",
			"dockerfile",
			"gitignore",
			"gomod",
			"ssh_config",
		},
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
		},
	})
end

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	config = config,
}
