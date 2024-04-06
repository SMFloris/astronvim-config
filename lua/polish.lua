-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    c3 = "c3",
  },
  pattern = {
    [".*.blade.php"] = "blade",
    [".*.norg"] = "norg",
    ["*.c3"] = "c3",
  },
}
-- vim.treesitter.language.register('html', 'blade')
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.blade = {
  install_info = {
    url = "https://github.com/EmranMR/tree-sitter-blade",
    files = { "src/parser.c" },
    branch = "main",
  },
  filetype = "blade",
}

function _G.current_hostname()
  local hostname = vim.fn.hostname()
  local user = vim.uv.os_getenv "USER"

  return string.format("%s@%s", user, hostname)
end

vim.opt.titlelen = 0
vim.opt.titlestring = [[%{luaeval('current_hostname()')} %f%m: %{getcwd()}]]
