-- plugins/colorscheme.lua
return {
  "sainnhe/everforest",
  lazy     = false,
  priority = 1000,
  config = function()
    vim.g.everforest_background         = "medium"   -- "soft" | "medium" | "hard"
    vim.g.everforest_better_performance = 1
    vim.g.everforest_enable_italic      = 1
    vim.g.everforest_diagnostic_text_highlight = 1
    vim.g.everforest_sign_column_background    = "none"
    vim.opt.background = "dark"
    vim.cmd("colorscheme everforest")
  end,
}