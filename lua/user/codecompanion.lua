local M = {
  "olimorris/codecompanion.nvim",
  lazy = false,
  opts = {
    --Refer to: https://github.com/olimorris/codecompanion.nvim/blob/main/lua/codecompanion/config.lua
    strategies = {
      --NOTE: Change the adapter as required
      chat = { adapter = "copilot" },
      inline = { adapter = "copilot" },
    },
    opts = {
      log_level = "DEBUG",
    },
  }
}

return M
