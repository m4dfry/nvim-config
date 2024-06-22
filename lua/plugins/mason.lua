return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    event = "BufReadPre",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "gopls", "pyright" },
      automatic_installation = true,
    },
    event = "BufReadPre",
    dependencies = "williamboman/mason.nvim",
  },
}
