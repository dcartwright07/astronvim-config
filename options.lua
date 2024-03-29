return {
  opt = {
    spell = false, -- sets vim.opt.spell
    signcolumn = "yes:1", -- sets vim.opt.signcolumn to auto
    wrap = true, -- sets vim.opt.wrap
    title = true,
    confirm = true,
    cmdheight = 1,
    completeopt = { "menuone", "longest", "preview" }, -- Options for insert mode completion
  },
  g = {
    vue_pre_processors = [["scss"]],
    vim_monokai_tasty_italic = 1,
    closetag_filetypes = 'html,xhtml,phtml,vue,velocity,vtl',
  },
}
