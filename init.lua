-- Compatibility shim: ft_to_lang was removed in newer Neovim builds
-- Patch nvim-treesitter.parsers so telescope works correctly
vim.api.nvim_create_autocmd("User", {
  pattern = "LazyDone",
  once = true,
  callback = function()
    local ok, ts_parsers = pcall(require, "nvim-treesitter.parsers")
    if ok and not ts_parsers.ft_to_lang then
      ts_parsers.ft_to_lang = function(ft) return ft end
    end
  end,
})

require("core.options")
require("core.keymaps")
require("core.lazy")