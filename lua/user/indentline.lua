local M = {
  "lukas-reineke/indent-blankline.nvim",
  commit = "005b56001b2cb30bfa61b7986bc50657816ba4ba",
  event = "BufReadPre",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
}

M.opts = {
  -- Enable or disable indent-blankline
  enabled = true,

  -- Debounce time in milliseconds
  debounce = 200,

  -- Configure viewport
  viewport_buffer = {
    min = 30, -- Minimum lines above/below visible window
    max = 500, -- Maximum lines above/below visible window (deprecated, use min instead)
  },

  -- Configure indentation characters
  indent = {
    char = "▎", -- Character(s) for indentation
    tab_char = "│", -- Character(s) for tab indentation
    highlight = "IblIndent", -- Highlight group for indentation
    smart_indent_cap = true, -- Cap indentation levels
    priority = 1, -- Virtual text priority
    repeat_linebreak = true, -- Repeat indent on line breaks
  },

  -- Configure whitespace
  whitespace = {
    highlight = "IblWhitespace", -- Highlight group for whitespace
    remove_blankline_trail = true, -- Remove trailing whitespace on blank lines
  },

  -- Configure scope (semantic meaning)
  scope = {
    enabled = true, -- Enable scope highlighting
    exclude = {
      language = { "lua" }, -- Example: exclude from lua files
    },
  },
}

return M
