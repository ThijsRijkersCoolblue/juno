-- Compatibility shim: ft_to_lang was removed in newer Neovim builds
-- This patches it back so telescope works correctly
if vim.treesitter.language and not vim.treesitter.language.ft_to_lang then
  vim.treesitter.language.ft_to_lang = function(ft)
    return ft
  end
end

require("core.options")
require("core.keymaps")
require("core.lazy")
