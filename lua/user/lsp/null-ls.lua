local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

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
    formatting.isort,
    formatting.black.with { extra_args = { "--fast", "--line-length", "127"} },
    diagnostics.flake8.with {
      extra_args = {
        "--ignore=E203,W605,W503",
        "--max-line-length=127",
        "--max-complexity=16",
        "--execlude=.git,__pycache__,__init__.py,.mypy_cache,.pytest_cache"
      }
    },
    formatting.stylua,
    formatting.google_java_format,
    formatting.rustfmt,
  },
}
