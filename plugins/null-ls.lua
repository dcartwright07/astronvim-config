return function(config)
  local null_ls = require "null-ls"
  local formatting = null_ls.builtins.formatting
  local diagnostics = null_ls.builtins.diagnostics

  config.sources = {
    -- Set a formatter
    formatting.prettier,
    -- formatting.sqlfluff.with {
    --   extra_args = { "--dialect", "mysql" }, -- change to your dialect
    -- },

    -- Set a linter
    diagnostics.eslint,
  }
  return config -- return final config table
end
