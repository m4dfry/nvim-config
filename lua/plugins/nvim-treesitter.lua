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
			"json",
			"yaml",
			"javascript",
			"typescript",
      "go",
			"lua",
			"python",
			"html",
			"css",
			"markdown",
			"bash",
			"dockerfile",
			"gitignore",
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
  config = config
}
