local M = {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvimtools/none-ls-extras.nvim"
  }
}

function M.config()
  local null_ls = require "null-ls"

  local formatting = null_ls.builtins.formatting
  local diagnostics =  null_ls.builtins.diagnostics

  null_ls.setup {
    debug = false,
    sources = {
      diagnostics.phpcs.with { extra_args = { "--standard=PSR12" } },
      require("none-ls.diagnostics.eslint_d"),
      formatting.prettierd,
      formatting.black
    },
  }
end

return M
