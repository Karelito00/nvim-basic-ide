local M = {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "AndreM222/copilot-lualine",
  },
}

function M.config()
  require("lualine").setup {
    options = {
      globalstatus = true,
      icons_enabled = true,
      theme = "catppuccin",
      component_separators = { left = "", right = "" },
      section_separators = { left = '', right = '' },
      disabled_filetypes = { "alpha", "dashboard" },
      always_divide_middle = true,
      ignore_focus = { "NvimTree" },
    },
    sections = {
      lualine_a = {},
      lualine_b = { "branch" },
      lualine_c = { "diagnostics" },
      lualine_x = { "copilot", "filetype" },
      lualine_y = { "progress" },
      lualine_z = {},
    },
    extensions = { "quickfix", "man", "fugitive" },
  }
end

return M
