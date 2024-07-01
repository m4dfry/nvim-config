local config = function()
  local telescope = require("telescope")
  telescope.setup({
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
        },
      },
      file_ignore_patterns = {
        "node_modules", "build", "dist", "yarn.lock", "mvnw", "mvnw.cmd"
      },
    },
    pickers = {
      find_files = {
        theme = "dropdown",
        previewer = true,
        hidden = true,
      },
      live_grep = {
        theme = "dropdown",
        previewer = true,
      },
      buffers = {
        theme = "dropdown",
        previewer = true,
      },
    },
  })
end

return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  lazy = false,
  dependencies = { "nvim-lua/plenary.nvim" },
  config = config,
}
