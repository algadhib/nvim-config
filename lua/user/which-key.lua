local M = {
  "folke/which-key.nvim",
  commit = "370ec46f710e058c9c1646273e6b225acf47cbed",
  event = "VeryLazy",
}

function M.config()
  require("which-key").setup {}
end

return M
