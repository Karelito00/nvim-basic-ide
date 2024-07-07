local M = {
  "numToStr/Comment.nvim",
  lazy = false,
  dependencies = {
    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      event = "VeryLazy",
    },
  },
}

function M.config()
  local wk = require "which-key"
  wk.register {
    ["<leader>/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment" },
  }

  wk.register {
    ["<leader>/"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment", mode = "v" },
  }

  vim.g.skip_ts_context_commentstring_module = true
end

return M
