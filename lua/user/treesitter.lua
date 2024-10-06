local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}

function M.config()
  require("nvim-treesitter.configs").setup {
    modules = {},
    auto_install = true,
    ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python", "html", "cpp", "typescript", "vue", "yaml", "javascript", "php", "scss" },
    sync_install = false,
    ignore_install = {},
    highlight = { enable = true },
    indent = { enable = true },
  }
end

return M
