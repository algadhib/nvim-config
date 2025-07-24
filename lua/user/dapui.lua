local M = {
  "rcarriga/nvim-dap-ui",
  commit = "f7d75cca202b52a60c520ec7b1ec3414d6e77b0f",
  event = "VeryLazy",
  dependencies = {
    {
      "mfussenegger/nvim-dap",
      commit = "6a5bba0ddea5d419a783e170c20988046376090d",
      event = "VeryLazy",
    },
    {
      "nvim-neotest/nvim-nio",
      commit = "21f5324bfac14e22ba26553caf69ec76ae8a7662",
      event = "VeryLazy",
    },
  },
}

function M.config()
  require("dapui").setup {
    expand_lines = true,
    icons = { expanded = "", collapsed = "", circular = "" },
    mappings = {
      -- Use a table to apply multiple mappings
      expand = { "<CR>", "<2-LeftMouse>" },
      open = "o",
      remove = "d",
      edit = "e",
      repl = "r",
      toggle = "t",
    },
    layouts = {
      {
        elements = {
          { id = "scopes", size = 0.33 },
          { id = "breakpoints", size = 0.17 },
          { id = "stacks", size = 0.25 },
          { id = "watches", size = 0.25 },
        },
        size = 0.33,
        position = "right",
      },
      {
        elements = {
          { id = "repl", size = 0.45 },
          { id = "console", size = 0.55 },
        },
        size = 0.27,
        position = "bottom",
      },
    },
    floating = {
      max_height = 0.9,
      max_width = 0.5, -- Floats will be treated as percentage of your screen.
      border = vim.g.border_chars, -- Border style. Can be 'single', 'double' or 'rounded'
      mappings = {
        close = { "q", "<Esc>" },
      },
    },
  }

  vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DiagnosticSignError", linehl = "", numhl = "" })
end

return M
