local M = {
  "nvim-treesitter/nvim-treesitter",
  commit = "42fc28ba918343ebfd5565147a42a26580579482",
  event = "BufReadPost",
  dependencies = {
    -- {
    --   "JoosepAlviste/nvim-ts-context-commentstring",
    --   event = "VeryLazy",
    --   commit = "1b212c2eee76d787bbea6aa5e92a2b534e7b4f8f",
    -- },
    {
      "nvim-tree/nvim-web-devicons",
      event = "VeryLazy",
      commit = "0422a19d9aa3aad2c7e5cca167e5407b13407a9d"
    },
  },
}
function M.config()
  local treesitter = require "nvim-treesitter"
  local configs = require "nvim-treesitter.configs"

  configs.setup {
    ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python", "rust" }, -- put the language you want in this array
    -- ensure_installed = "all", -- one of "all" or a list of languages
    ignore_install = { "" },                                                       -- List of parsers to ignore installing
    sync_install = false,                                                          -- install languages synchronously (only applied to `ensure_installed`)

    highlight = {
      enable = true,       -- false will disable the whole extension
      disable = { "css" }, -- list of language that will be disabled
    },
    autopairs = {
      enable = true,
    },
    indent = { enable = true, disable = { "python", "css" } },

    -- context_commentstring = {
    --   enable = true,
    --   enable_autocmd = false,
    -- },
  }
end

return M
