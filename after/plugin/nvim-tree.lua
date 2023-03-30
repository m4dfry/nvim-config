-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.g.nvim_tree_highlight_opened_files = 1

--vim.g.nvim_tree.renderer.icons.show = {
--  folders = false,
-- files = false,
--  git = false,
--  folder_arrows = false
--}

require("nvim-tree").setup({
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
    dotfiles = true,
  },
})


vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '-', ':NvimTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFile<CR>', {noremap = true})

