local M = {
  "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
  commit = "0422a19d9aa3aad2c7e5cca167e5407b13407a9d"
}

function M.config()
  require("nvim-web-devicons").setup {
    override = {
      zsh = {
        icon = "",
        color = "#428850",
        cterm_color = "65",
        name = "Zsh",
      },
    },
    color_icons = true,
    default = true,
  }
end

return M
