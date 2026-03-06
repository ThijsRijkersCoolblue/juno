-- plugin/telescope_compat.lua
-- Runs automatically on startup, patches telescope compatibility issues
-- with newer Neovim builds that removed ft_to_lang and is_enabled

local ok_parsers, ts_parsers = pcall(require, "nvim-treesitter.parsers")
if ok_parsers then
  if not ts_parsers.ft_to_lang then
    ts_parsers.ft_to_lang = function(ft) return ft end
  end
end

local ok_configs, ts_configs = pcall(require, "nvim-treesitter.configs")
if ok_configs then
  if not ts_configs.is_enabled then
    ts_configs.is_enabled = function() return false end
  end
end