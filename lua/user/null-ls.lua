local M = {
  "nvimtools/none-ls.nvim",
  event = "BufReadPre",
  commit = "103b0926a31be1bc95743c6328cee309768f0a88",
  dependencies = {
    {
      "nvim-lua/plenary.nvim",
      commit = "857c5ac632080dba10aae49dba902ce3abf91b35",
      lazy = true,
    },
  },
}

function M.config()
  local null_ls = require "null-ls"
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
  local formatting = null_ls.builtins.formatting
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
  local diagnostics = null_ls.builtins.diagnostics

  -- https://github.com/prettier-solidity/prettier-plugin-solidity
  null_ls.setup {
    debug = false,
    sources = {
      formatting.prettier.with {
        extra_filetypes = { "toml" },
        extra_args = { "--tab-width", "2", "--single-quote", "false" },
      },
      formatting.black.with { extra_args = { "--fast", "--line-length", "127"} },
      formatting.stylua,
      formatting.google_java_format,
      -- diagnostics.flake8.with {
      --   extra_args = {
      --     "--ignore=E203,W605,W503",
      --     "--max-line-length=127",
      --     "--max-complexity=16",
      --     "--execlude=.git,__pycache__,__init__.py,.mypy_cache,.pytest_cache"
      --   },
      -- },
      formatting.rustfmt,
    },
  }
end

return M
