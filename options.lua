return {
  opt = {
    spell = false, -- sets vim.opt.spell
    signcolumn = "yes:1", -- sets vim.opt.signcolumn to auto
    wrap = true, -- sets vim.opt.wrap
    title = true,
    confirm = true,
    cmdheight = 1,
  },
  g = {
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
    termguicolors = true,
  },
}
