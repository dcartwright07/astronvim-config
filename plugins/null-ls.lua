return function(config)
  local null_ls = require "null-ls"
  local formatting = null_ls.builtins.formatting
  local diagnostics = null_ls.builtins.diagnostics

  config.sources = {
    -- Set a formatter
    formatting.prettier,
    formatting.cbfmt,
    formatting.reorder_python_imports,
    formatting.sqlfluff.with {
      extra_args = { "--dialect", "mysql" }, -- change to your dialect
    },
    -- formatting.stylua,

    -- Set a linter
    diagnostics.zsh,
    -- diagnostics.eslint,
    diagnostics.sqlfluff.with {
      extra_args = { "--dialect", "mysql" },
    },
  }
  -- set up null-ls's on_attach function
  config.on_attach = function(client)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd("BufWritePre", {
        desc = "Auto format before save",
        pattern = "<buffer>",
        callback = vim.lsp.buf.format,
      })
    end
  end
  return config -- return final config table
end
