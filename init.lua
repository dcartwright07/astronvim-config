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

  header = {
    "888888b.    .d888b.   888b   d888  888888  888b    88  888888   .d888b.",
    "88     8b  d8     8b  88 Yb dY 88    88    88 Yb   88    88    d8     8b",
    "88     88  88     88  88  'Y'  88    88    88  Yb  88    88    88       ",
    "88     8P  Y8     8P  88       88    88    88   Yb 88    88    Y8     8P",
    "888888P'    'Y888P'   88       88  888888  88    'Y88  888888   'Y888P'",
    "",
    -- "",
    -- "    888888b.    .d888b.          Yb       dY  888888  888b   d888",
    -- "    88     8b  d8     8b          Yb     dY     88    88 Yb dY 88",
    -- "    88     88  88          8888    Yb   dY      88    88  'Y'  88",
    -- "    88     8P  Y8     8P            Yb dY       88    88       88",
    -- "    888888P'    'Y888P'              'Y'      888888  88       88",
    "",
    "                 Yb       dY  888888  888b   d888",
    "                  Yb     dY     88    88 Yb dY 88",
    "                   Yb   dY      88    88  'Y'  88",
    "                    Yb dY       88    88       88",
    "                     'Y'      888888  88       88",
  },
}

return config
