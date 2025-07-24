local M = {
  "williamboman/mason.nvim",
  commit = "7f265cd6ae56cecdd0aa50c8c73fc593b0604801",
  cmd = "Mason",
  event = "BufReadPre",
  dependencies = {
    {
      "williamboman/mason-lspconfig.nvim",
      commit = "5477d67a5ca12b704f2a8a55a057fc79750f3dbb",
      lazy = true,
    },
  },
}

local settings = {
  ui = {
    border = "none",
    icons = {
      package_installed = "◍",
      package_pending = "◍",
      package_uninstalled = "◍",
    },
  },
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 4,
}

function M.config()
  require("mason").setup(settings)
  require("mason-lspconfig").setup {
    ensure_installed = require("utils").servers,
    automatic_installation = true,
  }
end

return M
