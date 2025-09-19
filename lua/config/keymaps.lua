local keymap = vim.keymap

local opts = { noremap = true, silent = true }

local opts_wdescr = function(desc)
	return { noremap = true, silent = true, desc = desc }
end

-- Toggle relative number and precognition plugin
keymap.set("n", "<leader>g", ":set relativenumber!<CR>:Precognition toggle<CR>", opts_wdescr("Toggle Nav Help"))

-- Save current buffer
keymap.set("n", "<leader><C-s>", ":w<CR>", opts_wdescr("Save buffer"))

-- Dir navigation on NvimTree
-- keymap.set("n", "<leader>q", ":NvimTreeFocus<CR>", opts)
keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", opts)

-- Pane and Window Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right

-- Window Management
keymap.set("n", "<leader>wv", ":vsplit<CR>", opts_wdescr("Split Vertical")) -- Split Vertically
keymap.set("n", "<leader>wh", ":split<CR>", opts_wdescr("Split Horizontal")) -- Split Horizontally
-- keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle Minimize

-- Indenting
keymap.set("v", "<", "<gv", opts_wdescr("Indent Left (<)"))
keymap.set("v", ">", ">gv", opts_wdescr("Indent Right (>)"))

-- Exit Terminal
keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)

------------
-- PLUGIN --
------------

-- none-ls
keymap.set("n", "<leader>cf", vim.lsp.buf.format, opts_wdescr("Format with LSP"))

-- nvim-lspconfig
keymap.set("n", "K", vim.lsp.buf.hover)
keymap.set("n", "<leader>cd", vim.lsp.buf.definition, opts_wdescr("LSP Show Definition"))
keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts_wdescr("LSP Code Action"))

-- diagnostic
keymap.set("n", "<leader>cF", vim.diagnostic.open_float, opts_wdescr("Open Diagnostic"))

-- telescope
keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>", opts_wdescr("Telescope show keymaps"))
keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", opts_wdescr("Telescope show help"))
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts_wdescr("Telescope find files"))
keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", opts_wdescr("Telescope find w/ live grep"))
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", opts_wdescr("Telescope show buffers"))

-- DAP
keymap.set("n", "<F6>", function()
	require("dap").continue()
end, opts_wdescr("Debug Start/Continue"))
keymap.set("n", "<F8>", function()
	require("dap").step_over()
end, opts_wdescr("Debug Over"))
keymap.set("n", "<F9>", function()
	require("dap").step_into()
end, opts_wdescr("Debug Step In"))
keymap.set("n", "<F10>", function()
	require("dap").step_out()
end, opts_wdescr("Debug Step Out"))
keymap.set("n", "<Leader>b", function()
	require("dap").toggle_breakpoint()
end, opts_wdescr("Breakpoint Toggle"))
-- vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)

keymap.set("n", "<Leader>db", function()
	require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end, opts_wdescr("Breakpoint Set w/ log"))
keymap.set("n", "<Leader>dr", function()
	require("dap").repl.open()
end, opts_wdescr("REPL Open"))
keymap.set("n", "<Leader>dl", function()
	require("dap").run_last()
end, opts_wdescr("Run Last"))

keymap.set({ "n", "v" }, "<Leader>dh", function()
	require("dap.ui.widgets").hover()
end, opts_wdescr("Open Widget (hover)"))
keymap.set({ "n", "v" }, "<Leader>dp", function()
	require("dap.ui.widgets").preview()
end, opts_wdescr("Open Widget (preview)"))
keymap.set("n", "<Leader>df", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.frames)
end, opts_wdescr("Open Widget Frame(float)"))
keymap.set("n", "<Leader>ds", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.scopes)
end, opts_wdescr("Open Widget Scopes (float)"))

----------
-- MEMO --
----------

-- jump
-- <C-o> jump back to the previous (older) location.
-- <C-i> jump forward to the next (newer) location.
