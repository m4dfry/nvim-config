local keymap = vim.keymap

local opts = { noremap = true, silent = true }

local opts_wdescr = function(desc)
  local opts_wdescr = opts
  opts_wdescr.desc = desc
  return opts_wdescr
end

-- Dir navigation on NvimTree
-- keymap.set("n", "<leader>q", ":NvimTreeFocus<CR>", opts)
keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", opts)

-- Pane and Window Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right

-- Window Management
keymap.set("n", "<leader>wv", ":vsplit<CR>", opts_wdescr("Split Vertical"))  -- Split Vertically
keymap.set("n", "<leader>wh", ":split<CR>", opts_wdescr("Split Horizontal")) -- Split Horizontally
-- keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle Minimize

-- Indenting
keymap.set("v", "<", "<gv", opts_wdescr("Indent Left (<)"))
keymap.set("v", ">", ">gv", opts_wdescr("Indent Right (>)"))

------------
-- PLUGIN --
------------

-- none-ls
keymap.set("n", "<leader>cf", vim.lsp.buf.format, opts_wdescr("Format with LSP"))

-- nvim-lspconfig
keymap.set("n", "K", vim.lsp.buf.hover)
keymap.set("n", "<leader>cd", vim.lsp.buf.definition, opts_wdescr("LSP Show Definition"))
keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts_wdescr("LSP Code Action"))

-- telescope
keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>", opts_wdescr("Telescope show keymaps"))
keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", opts_wdescr("Telescope show help"))
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts_wdescr("Telescope find files"))
keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", opts_wdescr("Telescope find w/ live grep"))
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", opts_wdescr("Telescope show buffers"))

----------
-- MEMO --
----------

-- jump
-- <C-o> jump back to the previous (older) location.
-- <C-i> jump forward to the next (newer) location.

-- -- comment
-- NORMAL mode
-- `gcc` - Toggles the current line using linewise comment
-- `gbc` - Toggles the current line using blockwise comment
-- VISUAL mode
-- `gc` - Toggles the region using linewise comment
-- `gb` - Toggles the region using blockwise comment
