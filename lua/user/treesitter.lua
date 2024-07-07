local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}

function M.config()
  require("nvim-treesitter.configs").setup {
    ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python", "html", "cpp", "typescript", "vue", "yaml", "javascript", "php", "scss" },
    highlight = { enable = true },
    indent = { enable = true },
  }
end

return M
