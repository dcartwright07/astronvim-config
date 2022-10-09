return {
  opt = {
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true, -- sets vim.opt.number
    spell = false, -- sets vim.opt.spell
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    wrap = true, -- sets vim.opt.wrap
    guicursor = 'a:hor20-Cursor',
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_enabled = true, -- enable diagnostics at start
    status_diagnostics_enabled = true, -- enable diagnostics in statusline
    vue_pre_processors = [["scss"]],
    vim_monokai_tasty_italic = 1,
    closetag_filetypes = 'html,xhtml,phtml,vue,velocity,vtl',
  },
  o = {
    cursorline = true,
    tabstop = 2,
    shiftwidth = 2,
    expandtab = true,
    autoindent = true,
    smartindent = true,
    column_width = 120,
  },
}
