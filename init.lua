local config = {

  -- Set colorscheme
  colorscheme = "vim-monokai-tasty",

  -- Disable AstroNvim ui features
  ui = {
    nui_input = true,
    telescope_select = true,
  },

  -- Diagnostics configuration (for vim.diagnostics.config({}))
  diagnostics = {
    virtual_text = true,
    underline = true,
  },

  -- This function is run last
  -- good place to configuring augroups/autocommands and custom filetypes
  polish = function() require "user.autocmds" end,
}

return config
