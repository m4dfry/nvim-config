-- Old configi manage dir icons if nerd font is not installed
--  file icons missing anyways
local nofont_config = function()
  require("nvim-tree").setup({
    update_focused_file = { enable = true },
    sort_by = "case_sensitive",
    renderer = {
      group_empty = true,
      icons = {
        show = {
          folder = true,
          file = false,
          git = false,
          folder_arrow = false
        },
        glyphs = {
          folder = {
            arrow_closed = "■",
            arrow_open = "□",
            default = "▸",
            open = "▾",
            empty = "▹",
            empty_open = "▿",
            symlink = "⚇",
            symlink_open = "⚉",
          }
        }
      },
    },
    filters = {
      dotfiles = false,
    },
    view = {
      adaptive_size = true,
    },
  })
end

return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  config = function()
		vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=None]])
		require("nvim-tree").setup({
			filters = {
				dotfiles = false,
			},
		})
	end,
}
